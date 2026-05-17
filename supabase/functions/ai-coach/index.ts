import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

const ANTHROPIC_API_KEY = Deno.env.get("ANTHROPIC_API_KEY")!;
const SUPABASE_URL = Deno.env.get("SUPABASE_URL")!;
const SUPABASE_SERVICE_KEY = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
const DAILY_LIMIT = 10;

const SYSTEM_PROMPT = `You are Herblore's wellness coach — a knowledgeable, friendly guide to supplements, herbs, and superfoods. You help users understand their stack, timing, interactions, and general wellness questions.

RULES:
- You provide EDUCATIONAL information only. Never diagnose, prescribe, or claim to treat/cure any condition.
- Always recommend consulting a healthcare professional for medical decisions.
- Use cautious language: "may support", "has been associated with", "research suggests".
- If the user asks about a specific medical condition, remind them to consult their doctor.
- Keep answers concise (2-3 paragraphs max) and actionable.
- Reference evidence levels when discussing benefits (clinical trial, observational, traditional use).
- When discussing interactions, always err on the side of caution.

DISCLAIMER (include at end of EVERY response):
⚕️ This is educational information, not medical advice. Always consult a healthcare professional before making changes to your supplement routine.`;

serve(async (req: Request) => {
  if (req.method === "OPTIONS") {
    return new Response(null, {
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Headers": "authorization, content-type",
      },
    });
  }

  try {
    const authHeader = req.headers.get("Authorization");
    if (!authHeader) {
      return new Response(JSON.stringify({ error: "Unauthorized" }), {
        status: 401,
      });
    }

    const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);

    const token = authHeader.replace("Bearer ", "");
    const {
      data: { user },
      error: authError,
    } = await supabase.auth.getUser(token);

    if (authError || !user) {
      return new Response(JSON.stringify({ error: "Invalid token" }), {
        status: 401,
      });
    }

    const today = new Date().toISOString().split("T")[0];
    const { count } = await supabase
      .from("ai_conversations")
      .select("*", { count: "exact", head: true })
      .eq("user_id", user.id)
      .eq("role", "user")
      .gte("created_at", `${today}T00:00:00Z`);

    if ((count ?? 0) >= DAILY_LIMIT) {
      return new Response(
        JSON.stringify({
          error: "Daily limit reached",
          limit: DAILY_LIMIT,
        }),
        { status: 429 },
      );
    }

    const { message } = await req.json();
    if (!message || typeof message !== "string") {
      return new Response(JSON.stringify({ error: "Message required" }), {
        status: 400,
      });
    }

    const { data: profile } = await supabase
      .from("profiles")
      .select("selected_goals, language")
      .eq("id", user.id)
      .single();

    const { data: stackItems } = await supabase
      .from("user_stack")
      .select("dosage, dosage_unit, is_active, aliment:aliments(name_en, category, slug)")
      .eq("user_id", user.id)
      .eq("is_active", true);

    const { data: history } = await supabase
      .from("ai_conversations")
      .select("role, content")
      .eq("user_id", user.id)
      .order("created_at", { ascending: false })
      .limit(10);

    let contextPrompt = SYSTEM_PROMPT;

    if (profile?.selected_goals?.length) {
      contextPrompt += `\n\nUser's health goals: ${profile.selected_goals.join(", ")}`;
    }

    if (stackItems?.length) {
      const stackSummary = stackItems
        .map(
          (s: any) =>
            `${s.aliment?.name_en} (${s.dosage}${s.dosage_unit})`,
        )
        .join(", ");
      contextPrompt += `\n\nUser's current active stack: ${stackSummary}`;
    }

    if (profile?.language && profile.language !== "en") {
      contextPrompt += `\n\nRespond in ${profile.language === "fr" ? "French" : "Italian"}.`;
    }

    const messages: { role: string; content: string }[] = [];

    if (history?.length) {
      const reversed = [...history].reverse();
      for (const msg of reversed) {
        messages.push({ role: msg.role, content: msg.content });
      }
    }

    messages.push({ role: "user", content: message });

    const response = await fetch("https://api.anthropic.com/v1/messages", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "x-api-key": ANTHROPIC_API_KEY,
        "anthropic-version": "2023-06-01",
      },
      body: JSON.stringify({
        model: "claude-sonnet-4-20250514",
        max_tokens: 1024,
        system: contextPrompt,
        messages,
      }),
    });

    if (!response.ok) {
      const err = await response.text();
      return new Response(
        JSON.stringify({ error: "AI service error" }),
        { status: 502 },
      );
    }

    const data = await response.json();
    const assistantMessage =
      data.content?.[0]?.text ?? "I'm unable to respond right now.";

    await supabase.from("ai_conversations").insert([
      { user_id: user.id, role: "user", content: message },
      { user_id: user.id, role: "assistant", content: assistantMessage },
    ]);

    return new Response(
      JSON.stringify({ response: assistantMessage }),
      {
        headers: { "Content-Type": "application/json" },
      },
    );
  } catch (error) {
    return new Response(
      JSON.stringify({ error: "Internal server error" }),
      { status: 500 },
    );
  }
});
