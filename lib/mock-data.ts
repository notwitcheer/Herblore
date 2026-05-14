import type { Aliment, Goal } from "@/lib/types";
import alimentsRaw from "@/data/aliments-seed.json";
import interactionsRaw from "@/data/interactions-seed.json";

function transformAliment(raw: (typeof alimentsRaw)[number]): Aliment {
  const interactions = interactionsRaw
    .filter(
      (ix) => ix.aliment_a === raw.slug || ("aliment_b" in ix && ix.aliment_b === raw.slug),
    )
    .map((ix, i) => ({
      id: `ix-${i}`,
      aliment_a_id: ix.aliment_a,
      aliment_b_id: "aliment_b" in ix ? (ix as { aliment_b: string }).aliment_b : null,
      aliment_b_name: "aliment_b_name" in ix ? (ix as { aliment_b_name: string }).aliment_b_name : null,
      interaction_type: ix.type as Aliment["interactions"][number]["interaction_type"],
      severity: ix.severity as Aliment["interactions"][number]["severity"],
      description_en: ix.description.en,
      description_fr: ix.description.fr ?? null,
      description_it: ix.description.it ?? null,
      separation_hours: "separationHours" in ix ? (ix as { separationHours: number }).separationHours : null,
      source_ref: null,
    }));

  return {
    id: raw.slug,
    slug: raw.slug,
    category: raw.category as Aliment["category"],
    name_en: raw.name.en,
    name_fr: raw.name.fr ?? null,
    name_it: raw.name.it ?? null,
    summary_en: raw.summary.en,
    summary_fr: raw.summary.fr ?? null,
    summary_it: raw.summary.it ?? null,
    image_url: null,
    dosage_min: raw.dosageMin,
    dosage_max: raw.dosageMax,
    dosage_unit: raw.dosageUnit,
    best_time: raw.bestTime as Aliment["best_time"],
    with_food: raw.withFood,
    use_mode: raw.useMode as Aliment["use_mode"],
    cure_on_weeks: "cureOnWeeks" in raw ? (raw as { cureOnWeeks: number }).cureOnWeeks : null,
    cure_off_weeks: "cureOffWeeks" in raw ? (raw as { cureOffWeeks: number }).cureOffWeeks : null,
    cure_rationale_en:
      "cureRationale" in raw
        ? (raw as { cureRationale: { en: string } }).cureRationale.en
        : null,
    cure_rationale_fr:
      "cureRationale" in raw
        ? (raw as { cureRationale: { fr: string } }).cureRationale.fr
        : null,
    cure_rationale_it:
      "cureRationale" in raw
        ? (raw as { cureRationale: { it: string } }).cureRationale.it
        : null,
    contraindications_en: raw.contraindications.en,
    contraindications_fr: raw.contraindications.fr ?? [],
    contraindications_it: raw.contraindications.it ?? [],
    source_refs: raw.sourceRefs,
    is_popular: raw.isPopular ?? false,
    sort_order: 0,
    benefits: raw.benefits.map((b, i) => ({
      id: `${raw.slug}-b${i}`,
      aliment_id: raw.slug,
      benefit_en: b.benefit.en,
      benefit_fr: b.benefit.fr ?? null,
      benefit_it: b.benefit.it ?? null,
      evidence_level: b.evidenceLevel as Aliment["benefits"][number]["evidence_level"],
      source_ref: "sourceRef" in b ? (b as { sourceRef: string }).sourceRef : null,
      goal_tags: b.goalTags,
    })),
    interactions,
  };
}

export const MOCK_ALIMENTS: Aliment[] = alimentsRaw.map(transformAliment);

export const MOCK_GOALS: Goal[] = [
  { id: "1", slug: "energy", name_en: "Energy", name_fr: "Énergie", name_it: "Energia", icon: "⚡", description_en: null, description_fr: null, description_it: null, sort_order: 1 },
  { id: "2", slug: "sleep", name_en: "Sleep", name_fr: "Sommeil", name_it: "Sonno", icon: "🌙", description_en: null, description_fr: null, description_it: null, sort_order: 2 },
  { id: "3", slug: "immunity", name_en: "Immunity", name_fr: "Immunité", name_it: "Immunità", icon: "🛡️", description_en: null, description_fr: null, description_it: null, sort_order: 3 },
  { id: "4", slug: "focus", name_en: "Focus", name_fr: "Concentration", name_it: "Concentrazione", icon: "🎯", description_en: null, description_fr: null, description_it: null, sort_order: 4 },
  { id: "5", slug: "stress", name_en: "Stress", name_fr: "Stress", name_it: "Stress", icon: "🧘", description_en: null, description_fr: null, description_it: null, sort_order: 5 },
  { id: "6", slug: "digestion", name_en: "Digestion", name_fr: "Digestion", name_it: "Digestione", icon: "🫶", description_en: null, description_fr: null, description_it: null, sort_order: 6 },
  { id: "7", slug: "skin", name_en: "Skin", name_fr: "Peau", name_it: "Pelle", icon: "✨", description_en: null, description_fr: null, description_it: null, sort_order: 7 },
  { id: "8", slug: "longevity", name_en: "Longevity", name_fr: "Longévité", name_it: "Longevità", icon: "🧬", description_en: null, description_fr: null, description_it: null, sort_order: 8 },
  { id: "9", slug: "recovery", name_en: "Recovery", name_fr: "Récupération", name_it: "Recupero", icon: "💪", description_en: null, description_fr: null, description_it: null, sort_order: 9 },
  { id: "10", slug: "joint_health", name_en: "Joint Health", name_fr: "Articulations", name_it: "Articolazioni", icon: "🦴", description_en: null, description_fr: null, description_it: null, sort_order: 10 },
];
