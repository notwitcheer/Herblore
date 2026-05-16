export type AlimentCategory =
  | "vitamin"
  | "mineral"
  | "amino_acid"
  | "adaptogen"
  | "mushroom"
  | "superfood"
  | "herb"
  | "spice"
  | "fermented_food"
  | "functional_food"
  | "fatty_acid"
  | "probiotic"
  | "specialty_compound";

export type EvidenceLevel = "clinical_trial" | "observational" | "traditional";

export type UseMode = "continuous" | "cure";

export type InteractionType = "synergy" | "conflict" | "timing_separation";

export type InteractionSeverity = "info" | "warning" | "danger";

export type TimeOfDay = "wake" | "morning" | "afternoon" | "evening" | "bedtime";

export type TimeBlock =
  | "wake"
  | "breakfast"
  | "lunch"
  | "afternoon"
  | "dinner"
  | "bedtime";

export type GoalSlug =
  | "energy"
  | "sleep"
  | "immunity"
  | "focus"
  | "stress"
  | "digestion"
  | "skin"
  | "longevity"
  | "recovery"
  | "joint_health";

export type SupportedLocale = "en" | "fr" | "it";

export interface Aliment {
  id: string;
  slug: string;
  category: AlimentCategory;
  name_en: string;
  name_fr: string | null;
  name_it: string | null;
  summary_en: string;
  summary_fr: string | null;
  summary_it: string | null;
  image_url: string | null;
  dosage_min: number | null;
  dosage_max: number | null;
  dosage_unit: string | null;
  best_time: TimeOfDay[];
  with_food: boolean;
  use_mode: UseMode;
  cure_on_weeks: number | null;
  cure_off_weeks: number | null;
  cure_rationale_en: string | null;
  cure_rationale_fr: string | null;
  cure_rationale_it: string | null;
  contraindications_en: string[];
  contraindications_fr: string[];
  contraindications_it: string[];
  source_refs: string[];
  is_popular: boolean;
  sort_order: number;
  benefits: AlimentBenefit[];
  interactions: Interaction[];
}

export interface AlimentBenefit {
  id: string;
  aliment_id: string;
  benefit_en: string;
  benefit_fr: string | null;
  benefit_it: string | null;
  evidence_level: EvidenceLevel;
  source_ref: string | null;
  goal_tags: string[];
}

export interface Interaction {
  id: string;
  aliment_a_id: string;
  aliment_b_id: string | null;
  aliment_b_name: string | null;
  interaction_type: InteractionType;
  severity: InteractionSeverity;
  description_en: string;
  description_fr: string | null;
  description_it: string | null;
  separation_hours: number | null;
  source_ref: string | null;
}

export interface Goal {
  id: string;
  slug: GoalSlug;
  name_en: string;
  name_fr: string | null;
  name_it: string | null;
  icon: string | null;
  description_en: string | null;
  description_fr: string | null;
  description_it: string | null;
  sort_order: number;
}

export interface Profile {
  id: string;
  display_name: string | null;
  language: SupportedLocale;
  selected_goals: string[];
  wake_time: string;
  sleep_time: string;
  onboarded: boolean;
}

export interface UserStackItem {
  id: string;
  user_id: string;
  aliment_id: string;
  dosage: number | null;
  dosage_unit: string | null;
  is_active: boolean;
  cure_start_date: string | null;
  notes: string | null;
  added_at: string;
  aliment?: Aliment;
}

export interface IntakeLogEntry {
  id: string;
  user_id: string;
  time_block: TimeBlock;
  logged_at: string;
  taken: boolean;
}

export interface TimelineBlock {
  timeBlock: TimeBlock;
  items: TimelineItem[];
  taken: boolean;
}

export interface TimelineItem {
  aliment: Aliment;
  dosage: number | null;
  dosageUnit: string | null;
  reason: string;
}

export function localizedField(
  row: Record<string, any>,
  field: string,
  locale: SupportedLocale,
): string {
  const localized = row[`${field}_${locale}`];
  if (typeof localized === "string" && localized.length > 0) return localized;
  return (row[`${field}_en`] as string) ?? "";
}
