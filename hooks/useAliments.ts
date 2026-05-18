import { useState, useEffect } from "react";
import { supabase } from "@/lib/supabase";
import { MOCK_ALIMENTS, MOCK_GOALS } from "@/lib/mock-data";
import type { Aliment, AlimentBenefit, Interaction, Goal } from "@/lib/types";

const supabaseConfigured = !!process.env.EXPO_PUBLIC_SUPABASE_URL;

export function useAliments() {
  const [aliments, setAliments] = useState<Aliment[]>([]);
  const [goals, setGoals] = useState<Goal[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!supabaseConfigured) {
      setAliments(MOCK_ALIMENTS);
      setGoals(MOCK_GOALS);
      setLoading(false);
      return;
    }

    let cancelled = false;

    async function fetchAll() {
      try {
        const [alimentsRes, benefitsRes, interactionsRes, goalsRes] =
          await Promise.all([
            supabase
              .from("aliments")
              .select("*")
              .order("sort_order", { ascending: true }),
            supabase.from("aliment_benefits").select("*").order("sort_order"),
            supabase.from("interactions").select("*"),
            supabase
              .from("goals")
              .select("*")
              .order("sort_order", { ascending: true }),
          ]);

        if (cancelled) return;

        if (alimentsRes.error || benefitsRes.error || interactionsRes.error) {
          setAliments(MOCK_ALIMENTS);
          setGoals(MOCK_GOALS);
          setLoading(false);
          return;
        }

        const benefitsByAliment = new Map<string, AlimentBenefit[]>();
        for (const b of benefitsRes.data ?? []) {
          const list = benefitsByAliment.get(b.aliment_id) ?? [];
          list.push(b as AlimentBenefit);
          benefitsByAliment.set(b.aliment_id, list);
        }

        const interactionsByAliment = new Map<string, Interaction[]>();
        for (const ix of interactionsRes.data ?? []) {
          const typed = ix as Interaction;
          const listA = interactionsByAliment.get(typed.aliment_a_id) ?? [];
          listA.push(typed);
          interactionsByAliment.set(typed.aliment_a_id, listA);

          if (typed.aliment_b_id) {
            const listB = interactionsByAliment.get(typed.aliment_b_id) ?? [];
            listB.push(typed);
            interactionsByAliment.set(typed.aliment_b_id, listB);
          }
        }

        const mapped: Aliment[] = (alimentsRes.data ?? []).map((row: any) => ({
          ...row,
          benefits: benefitsByAliment.get(row.id) ?? [],
          interactions: interactionsByAliment.get(row.id) ?? [],
        }));

        setAliments(mapped);
        setGoals((goalsRes.data ?? []) as Goal[]);
      } catch {
        setAliments(MOCK_ALIMENTS);
        setGoals(MOCK_GOALS);
      } finally {
        if (!cancelled) setLoading(false);
      }
    }

    fetchAll();
    return () => {
      cancelled = true;
    };
  }, []);

  return { aliments, goals, loading };
}
