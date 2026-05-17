-- Herblore: Seed Data
-- Auto-generated from data/aliments-seed.json
-- Run after 001_initial_schema.sql

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'magnesium-glycinate',
  'mineral',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-d3',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ashwagandha',
  'adaptogen',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'spirulina',
  'superfood',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'omega-3-epa-dha',
  'fatty_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'lions-mane',
  'mushroom',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'zinc',
  'mineral',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'l-theanine',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'turmeric-curcumin',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'probiotics-lactobacillus',
  'probiotic',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-c',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'b-complex',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'iron-bisglycinate',
  'mineral',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'creatine-monohydrate',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'rhodiola-rosea',
  'adaptogen',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'maca-root',
  'superfood',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'reishi-mushroom',
  'mushroom',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cordyceps',
  'mushroom',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'collagen-peptides',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'coenzyme-q10',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'berberine',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'melatonin',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ginkgo-biloba',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'elderberry',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'milk-thistle',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'nac',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'nac';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'nac';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'nac';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'black-seed-oil',
  'functional_food',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'shilajit',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'boswellia',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'quercetin',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-b12',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-k2',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-k2';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-k2';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'folate-5-mthf',
  'vitamin',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'folate-5-mthf';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'folate-5-mthf';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'selenium',
  'mineral',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'selenium';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'selenium';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'potassium-citrate',
  'mineral',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'potassium-citrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'potassium-citrate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ginger',
  'spice',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cinnamon-ceylon',
  'spice',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'cinnamon-ceylon';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'cinnamon-ceylon';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'green-tea-egcg',
  'functional_food',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'valerian-root',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'valerian-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'valerian-root';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'chamomile',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'chamomile';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'chamomile';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'echinacea',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'echinacea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'echinacea';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'saw-palmetto',
  'herb',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'taurine',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'l-glutamine',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'alpha-lipoic-acid',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'alpha-lipoic-acid';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'alpha-lipoic-acid';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'pqq',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'pqq';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'pqq';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'nmn',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'nmn';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'nmn';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'kefir',
  'fermented_food',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'kefir';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'kefir';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cacao-raw',
  'functional_food',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'krill-oil',
  'fatty_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'krill-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'krill-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'evening-primrose-oil',
  'fatty_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'evening-primrose-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'evening-primrose-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'saccharomyces-boulardii',
  'probiotic',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'saccharomyces-boulardii';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'saccharomyces-boulardii';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'bone-broth-collagen',
  'functional_food',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'bone-broth-collagen';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'bone-broth-collagen';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'glycine',
  'amino_acid',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'astragalus',
  'adaptogen',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'astragalus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'astragalus';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'holy-basil-tulsi',
  'adaptogen',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 2
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'chaga-mushroom',
  'mushroom',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'chaga-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'chaga-mushroom';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'hyaluronic-acid',
  'specialty_compound',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  '{}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  ARRAY[]::TEXT[],
  false,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 0
FROM aliments WHERE slug = 'hyaluronic-acid';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, NULL, NULL, NULL, NULL, NULL, ARRAY[]::TEXT[], 1
FROM aliments WHERE slug = 'hyaluronic-acid';


-- Interactions

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Zinc and magnesium work synergistically — both support sleep quality and muscle recovery. Can be taken together in the evening.', 'Le zinc et le magnésium fonctionnent en synergie — tous deux soutiennent la qualité du sommeil et la récupération musculaire. Peuvent être pris ensemble le soir.', 'Zinco e magnesio funzionano in sinergia — entrambi supportano la qualità del sonno e il recupero muscolare. Possono essere assunti insieme la sera.', NULL
FROM aliments a, aliments b WHERE a.slug = 'zinc' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'timing_separation', 'warning', 'Zinc and iron compete for absorption. Take them at least 2 hours apart for optimal absorption of both minerals.', 'Le zinc et le fer entrent en compétition pour l''absorption. Les prendre à au moins 2 heures d''intervalle pour une absorption optimale des deux minéraux.', 'Zinco e ferro competono per l''assorbimento. Assumerli a distanza di almeno 2 ore per un assorbimento ottimale di entrambi i minerali.', 2
FROM aliments a, aliments b WHERE a.slug = 'zinc' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Copper supplements', 'conflict', 'warning', 'Zinc and copper compete for the same absorption pathways. High zinc intake (>40mg/day) can cause copper deficiency over time. Take at least 4 hours apart.', 'Le zinc et le cuivre utilisent les mêmes voies d''absorption. Un apport élevé en zinc (>40mg/jour) peut causer une carence en cuivre. Prendre à au moins 4 heures d''intervalle.', 'Zinco e rame competono per le stesse vie di assorbimento. Un apporto elevato di zinco (>40mg/giorno) può causare carenza di rame. Assumere a distanza di almeno 4 ore.', 4
FROM aliments WHERE slug = 'zinc';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin D3 is fat-soluble — taking it with omega-3 (a fat source) significantly increases absorption. Best taken together with a meal.', 'La vitamine D3 est liposoluble — la prendre avec des oméga-3 (source de graisses) augmente significativement l''absorption. Mieux pris ensemble avec un repas.', 'La vitamina D3 è liposolubile — assumerla con omega-3 (fonte di grassi) aumenta significativamente l''assorbimento. Meglio assunti insieme con un pasto.', NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-d3' AND b.slug = 'omega-3-epa-dha';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Calcium supplements', 'synergy', 'info', 'Vitamin D3 is essential for calcium absorption. Taking them together maximizes bone health benefits.', 'La vitamine D3 est essentielle pour l''absorption du calcium. Les prendre ensemble maximise les bénéfices pour la santé osseuse.', 'La vitamina D3 è essenziale per l''assorbimento del calcio. Assumerli insieme massimizza i benefici per la salute ossea.', NULL
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Piperine / Black pepper extract', 'synergy', 'info', 'Piperine increases curcumin bioavailability by up to 2000%. Always take curcumin with piperine or in a lipid formulation.', 'La pipérine augmente la biodisponibilité de la curcumine jusqu''à 2000%. Toujours prendre la curcumine avec de la pipérine ou sous forme lipidique.', 'La piperina aumenta la biodisponibilità della curcumina fino al 2000%. Assumere sempre la curcumina con piperina o in formulazione lipidica.', NULL
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'danger', 'Curcumin has antiplatelet properties and may increase bleeding risk when combined with anticoagulant medications. Consult your doctor before combining.', 'La curcumine a des propriétés antiplaquettaires et peut augmenter le risque de saignement en combinaison avec des anticoagulants. Consultez votre médecin avant de combiner.', 'La curcumina ha proprietà antipiastriniche e può aumentare il rischio di sanguinamento se combinata con farmaci anticoagulanti. Consultare il medico prima di combinare.', NULL
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Caffeine', 'synergy', 'info', 'L-Theanine + caffeine is one of the most well-studied synergies. L-Theanine smooths out caffeine jitters while preserving alertness and focus.', 'L-Théanine + caféine est l''une des synergies les plus étudiées. La L-Théanine atténue la nervosité de la caféine tout en préservant la vigilance et la concentration.', 'L-Teanina + caffeina è una delle sinergie più studiate. La L-Teanina attenua il nervosismo della caffeina preservando la vigilanza e la concentrazione.', NULL
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Thyroid medications (levothyroxine)', 'conflict', 'danger', 'Ashwagandha may increase thyroid hormone levels (T3/T4). This can dangerously interact with thyroid medications. Consult your endocrinologist.', 'L''ashwagandha peut augmenter les niveaux d''hormones thyroïdiennes (T3/T4). Cela peut interagir dangereusement avec les médicaments thyroïdiens. Consultez votre endocrinologue.', 'L''ashwagandha può aumentare i livelli di ormoni tiroidei (T3/T4). Questo può interagire pericolosamente con i farmaci tiroidei. Consultare l''endocrinologo.', NULL
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Both promote calm without sedation through different mechanisms. Ashwagandha modulates cortisol while L-Theanine increases alpha waves. Effective stack for stress + focus.', 'Les deux favorisent le calme sans sédation par des mécanismes différents. L''ashwagandha module le cortisol tandis que la L-Théanine augmente les ondes alpha. Stack efficace pour le stress + la concentration.', 'Entrambi promuovono la calma senza sedazione attraverso meccanismi diversi. L''ashwagandha modula il cortisolo mentre la L-Teanina aumenta le onde alfa. Stack efficace per stress + concentrazione.', NULL
FROM aliments a, aliments b WHERE a.slug = 'ashwagandha' AND b.slug = 'l-theanine';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Lion''s Mane (NGF stimulation) + Ashwagandha (stress reduction) complement each other for cognitive performance under stress. Popular nootropic stack.', 'Crinière de Lion (stimulation du NGF) + Ashwagandha (réduction du stress) se complètent pour la performance cognitive sous stress. Stack nootropique populaire.', 'Criniera di Leone (stimolazione NGF) + Ashwagandha (riduzione dello stress) si completano per le prestazioni cognitive sotto stress. Stack nootropico popolare.', NULL
FROM aliments a, aliments b WHERE a.slug = 'lions-mane' AND b.slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Antibiotics', 'timing_separation', 'warning', 'Antibiotics kill probiotic bacteria. Take probiotics at least 2 hours after antibiotics to maintain some benefit. Continue probiotics for 2 weeks after completing antibiotics course.', 'Les antibiotiques tuent les bactéries probiotiques. Prendre les probiotiques au moins 2 heures après les antibiotiques. Continuer les probiotiques 2 semaines après la fin du traitement.', 'Gli antibiotici uccidono i batteri probiotici. Assumere i probiotici almeno 2 ore dopo gli antibiotici. Continuare i probiotici per 2 settimane dopo il completamento del ciclo.', 2
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin C dramatically increases non-heme iron absorption (up to 6x). Always take iron with vitamin C for maximum benefit.', 'La vitamine C augmente considérablement l''absorption du fer non héminique (jusqu''à 6x). Toujours prendre le fer avec de la vitamine C pour un bénéfice maximal.', 'La vitamina C aumenta drasticamente l''assorbimento del ferro non eme (fino a 6x). Assumere sempre il ferro con vitamina C per il massimo beneficio.', NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-c' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin C is essential for collagen synthesis. Taking vitamin C with collagen peptides supports the body''s ability to build and repair connective tissue.', 'La vitamine C est essentielle pour la synthèse du collagène. Prendre de la vitamine C avec des peptides de collagène soutient la capacité du corps à construire et réparer le tissu conjonctif.', 'La vitamina C è essenziale per la sintesi del collagene. Assumere vitamina C con peptidi di collagene supporta la capacità del corpo di costruire e riparare il tessuto connettivo.', NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-c' AND b.slug = 'collagen-peptides';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Calcium supplements', 'timing_separation', 'warning', 'Calcium inhibits iron absorption. Take iron and calcium supplements at least 2 hours apart.', 'Le calcium inhibe l''absorption du fer. Prendre les suppléments de fer et de calcium à au moins 2 heures d''intervalle.', 'Il calcio inibisce l''assorbimento del ferro. Assumere integratori di ferro e calcio a distanza di almeno 2 ore.', 2
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Caffeine', 'timing_separation', 'info', 'Some research suggests caffeine may slightly reduce creatine''s ergogenic benefits. Consider taking creatine separately from high-caffeine beverages.', 'Certaines recherches suggèrent que la caféine pourrait légèrement réduire les bénéfices ergogéniques de la créatine. Envisagez de prendre la créatine séparément des boissons riches en caféine.', 'Alcune ricerche suggeriscono che la caffeina potrebbe ridurre leggermente i benefici ergogenici della creatina. Considerare di assumere la creatina separatamente dalle bevande ad alto contenuto di caffeina.', 1
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Two complementary adaptogens: Rhodiola provides acute energy and focus, while Ashwagandha offers sustained stress resilience. Effective together for demanding periods.', 'Deux adaptogènes complémentaires : la Rhodiola apporte énergie et concentration aiguës, tandis que l''Ashwagandha offre une résilience au stress durable. Efficaces ensemble en période exigeante.', 'Due adattogeni complementari: la Rhodiola fornisce energia e concentrazione acute, mentre l''Ashwagandha offre resilienza allo stress duratura. Efficaci insieme nei periodi impegnativi.', NULL
FROM aliments a, aliments b WHERE a.slug = 'rhodiola-rosea' AND b.slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Both support cellular energy production through complementary mechanisms. Cordyceps enhances oxygen utilization while CoQ10 is essential for mitochondrial ATP synthesis.', 'Les deux soutiennent la production d''énergie cellulaire par des mécanismes complémentaires. Le Cordyceps améliore l''utilisation de l''oxygène tandis que le CoQ10 est essentiel pour la synthèse mitochondriale d''ATP.', 'Entrambi supportano la produzione di energia cellulare attraverso meccanismi complementari. Il Cordyceps migliora l''utilizzo dell''ossigeno mentre il CoQ10 è essenziale per la sintesi mitocondriale di ATP.', NULL
FROM aliments a, aliments b WHERE a.slug = 'cordyceps' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Metformin', 'conflict', 'danger', 'Both berberine and metformin lower blood glucose through similar mechanisms. Combining them may cause dangerously low blood sugar (hypoglycemia). Consult your doctor.', 'La berbérine et la metformine abaissent toutes deux la glycémie par des mécanismes similaires. Les combiner peut provoquer une hypoglycémie dangereuse. Consultez votre médecin.', 'Sia la berberina che la metformina abbassano la glicemia attraverso meccanismi simili. Combinarle può causare un''ipoglicemia pericolosa. Consultare il medico.', NULL
FROM aliments WHERE slug = 'berberine';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Magnesium and melatonin complement each other for sleep: magnesium relaxes muscles and calms the nervous system, while melatonin regulates the sleep-wake cycle.', 'Le magnésium et la mélatonine se complètent pour le sommeil : le magnésium détend les muscles et calme le système nerveux, tandis que la mélatonine régule le cycle veille-sommeil.', 'Magnesio e melatonina si completano per il sonno: il magnesio rilassa i muscoli e calma il sistema nervoso, mentre la melatonina regola il ciclo sonno-veglia.', NULL
FROM aliments a, aliments b WHERE a.slug = 'melatonin' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Quercetin and vitamin C enhance each other''s antioxidant effects. Vitamin C helps regenerate quercetin, extending its protective duration in the body.', 'La quercétine et la vitamine C renforcent mutuellement leurs effets antioxydants. La vitamine C aide à régénérer la quercétine, prolongeant sa durée de protection dans le corps.', 'La quercetina e la vitamina C potenziano reciprocamente i loro effetti antiossidanti. La vitamina C aiuta a rigenerare la quercetina, prolungando la sua durata protettiva nel corpo.', NULL
FROM aliments a, aliments b WHERE a.slug = 'quercetin' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Curcumin and boswellic acids target different inflammatory pathways (NF-kB and 5-LOX respectively). Together they provide broader anti-inflammatory support.', 'La curcumine et les acides boswelliques ciblent différentes voies inflammatoires (NF-kB et 5-LOX respectivement). Ensemble, ils offrent un soutien anti-inflammatoire plus large.', 'La curcumina e gli acidi boswellici agiscono su diverse vie infiammatorie (NF-kB e 5-LOX rispettivamente). Insieme forniscono un supporto antinfiammatorio più ampio.', NULL
FROM aliments a, aliments b WHERE a.slug = 'turmeric-curcumin' AND b.slug = 'boswellia';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'NAC (glutathione precursor) and milk thistle (silymarin) both support liver detoxification through complementary mechanisms. A well-established liver support stack.', 'Le NAC (précurseur du glutathion) et le chardon-Marie (silymarine) soutiennent tous deux la détoxification hépatique par des mécanismes complémentaires. Un stack de soutien hépatique bien établi.', 'Il NAC (precursore del glutatione) e il cardo mariano (silimarina) supportano entrambi la disintossicazione epatica attraverso meccanismi complementari. Uno stack di supporto epatico ben consolidato.', NULL
FROM aliments a, aliments b WHERE a.slug = 'nac' AND b.slug = 'milk-thistle';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'danger', 'Ginkgo biloba has blood-thinning properties and may increase bleeding risk when combined with anticoagulant medications. Consult your doctor before use.', 'Le Ginkgo biloba a des propriétés anticoagulantes et peut augmenter le risque de saignement en combinaison avec des médicaments anticoagulants. Consultez votre médecin avant utilisation.', 'Il Ginkgo biloba ha proprietà anticoagulanti e può aumentare il rischio di sanguinamento se combinato con farmaci anticoagulanti. Consultare il medico prima dell''uso.', NULL
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Ginkgo (cerebral blood flow) + Lion''s Mane (nerve growth factor) target different aspects of cognitive function. Together they may provide enhanced neuroprotection.', 'Le Ginkgo (flux sanguin cérébral) + Crinière de Lion (facteur de croissance nerveuse) ciblent différents aspects de la fonction cognitive. Ensemble, ils peuvent offrir une neuroprotection améliorée.', 'Il Ginkgo (flusso sanguigno cerebrale) + Criniera di Leone (fattore di crescita nervosa) agiscono su diversi aspetti della funzione cognitiva. Insieme possono offrire una neuroprotezione potenziata.', NULL
FROM aliments a, aliments b WHERE a.slug = 'ginkgo-biloba' AND b.slug = 'lions-mane';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Elderberry and vitamin C both support immune function through different mechanisms. A classic immune support combination during cold and flu season.', 'Le sureau et la vitamine C soutiennent tous deux la fonction immunitaire par des mécanismes différents. Une combinaison classique de soutien immunitaire pendant la saison des rhumes et grippes.', 'Il sambuco e la vitamina C supportano entrambi la funzione immunitaria attraverso meccanismi diversi. Una combinazione classica di supporto immunitario durante la stagione di raffreddori e influenze.', NULL
FROM aliments a, aliments b WHERE a.slug = 'elderberry' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin K2 directs calcium to bones and teeth, preventing arterial calcification. Essential partner for high-dose vitamin D3 supplementation.', 'La vitamine K2 dirige le calcium vers les os et les dents, prévenant la calcification artérielle. Partenaire essentiel pour la supplémentation en vitamine D3 à haute dose.', 'La vitamina K2 dirige il calcio verso ossa e denti, prevenendo la calcificazione arteriosa. Partner essenziale per l''integrazione di vitamina D3 ad alto dosaggio.', NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-k2' AND b.slug = 'vitamin-d3';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'timing_separation', 'warning', 'EGCG in green tea chelates iron, reducing its absorption by up to 60%. Take iron supplements at least 2 hours apart from green tea.', 'L''EGCG du thé vert chélate le fer, réduisant son absorption jusqu''à 60%. Prendre les suppléments de fer à au moins 2 heures du thé vert.', 'L''EGCG del tè verde chela il ferro, riducendo il suo assorbimento fino al 60%. Assumere gli integratori di ferro almeno 2 ore lontano dal tè verde.', 2
FROM aliments a, aliments b WHERE a.slug = 'green-tea-egcg' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Valerian (GABA modulation) + melatonin (circadian signaling) address different aspects of sleep onset. Together they may reduce time to fall asleep more than either alone.', 'La valériane (modulation GABA) + mélatonine (signal circadien) adressent différents aspects de l''endormissement. Ensemble, ils peuvent réduire le temps d''endormissement plus que séparément.', 'La valeriana (modulazione GABA) + melatonina (segnale circadiano) affrontano diversi aspetti dell''addormentamento. Insieme possono ridurre il tempo per addormentarsi più di ciascuno singolarmente.', NULL
FROM aliments a, aliments b WHERE a.slug = 'valerian-root' AND b.slug = 'melatonin';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Both are mitochondrial antioxidants. ALA regenerates CoQ10''s reduced form (ubiquinol), extending its protective effects in the electron transport chain.', 'Les deux sont des antioxydants mitochondriaux. L''ALA régénère la forme réduite du CoQ10 (ubiquinol), prolongeant ses effets protecteurs dans la chaîne de transport d''électrons.', 'Entrambi sono antiossidanti mitocondriali. L''ALA rigenera la forma ridotta del CoQ10 (ubiquinolo), prolungando i suoi effetti protettivi nella catena di trasporto degli elettroni.', NULL
FROM aliments a, aliments b WHERE a.slug = 'alpha-lipoic-acid' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'NMN raises NAD+ levels while resveratrol activates sirtuins that consume NAD+. Together they fuel and activate the longevity pathway simultaneously.', 'Le NMN élève les niveaux de NAD+ tandis que le resvératrol active les sirtuines qui consomment le NAD+. Ensemble, ils alimentent et activent la voie de la longévité simultanément.', 'Il NMN alza i livelli di NAD+ mentre il resveratrolo attiva le sirtuine che consumano NAD+. Insieme alimentano e attivano simultaneamente il percorso della longevità.', NULL
FROM aliments a, aliments b WHERE a.slug = 'nmn' AND b.slug = 'resveratrol';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Both glycine and magnesium promote relaxation and sleep quality. Magnesium glycinate already contains glycine — supplementing extra glycine (3g) before bed amplifies the calming effect.', 'La glycine et le magnésium favorisent tous deux la relaxation et la qualité du sommeil. Le glycinate de magnésium contient déjà de la glycine — supplémenter en glycine extra (3g) avant le coucher amplifie l''effet calmant.', 'Sia la glicina che il magnesio promuovono il rilassamento e la qualità del sonno. Il glicinato di magnesio contiene già glicina — integrare glicina extra (3g) prima di dormire amplifica l''effetto calmante.', NULL
FROM aliments a, aliments b WHERE a.slug = 'glycine' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Blood sugar medications', 'conflict', 'warning', 'Holy basil may lower blood sugar levels. Combining with diabetes medications may cause hypoglycemia. Monitor blood glucose closely and consult your doctor.', 'Le basilic sacré peut abaisser la glycémie. En combinaison avec des médicaments antidiabétiques, il peut causer une hypoglycémie. Surveiller la glycémie et consulter votre médecin.', 'Il basilico sacro può abbassare i livelli di zucchero nel sangue. In combinazione con farmaci per il diabete può causare ipoglicemia. Monitorare la glicemia e consultare il medico.', NULL
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Krill oil''s phospholipid form enhances absorption of fat-soluble compounds. CoQ10 taken with krill oil shows better bioavailability than with standard fish oil.', 'La forme phospholipidique de l''huile de krill améliore l''absorption des composés liposolubles. Le CoQ10 pris avec l''huile de krill montre une meilleure biodisponibilité qu''avec l''huile de poisson standard.', 'La forma fosfolipidica dell''olio di krill migliora l''assorbimento dei composti liposolubili. Il CoQ10 assunto con olio di krill mostra una migliore biodisponibilità rispetto all''olio di pesce standard.', NULL
FROM aliments a, aliments b WHERE a.slug = 'krill-oil' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Taurine enhances magnesium retention in cells and both support cardiovascular function. Together they improve heart rhythm stability and reduce muscle cramps.', 'La taurine améliore la rétention du magnésium dans les cellules et tous deux soutiennent la fonction cardiovasculaire. Ensemble, ils améliorent la stabilité du rythme cardiaque et réduisent les crampes.', 'La taurina migliora la ritenzione del magnesio nelle cellule ed entrambi supportano la funzione cardiovascolare. Insieme migliorano la stabilità del ritmo cardiaco e riducono i crampi.', NULL
FROM aliments a, aliments b WHERE a.slug = 'taurine' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Immunosuppressant medications', 'conflict', 'danger', 'Echinacea stimulates immune function, which directly opposes immunosuppressant medications (cyclosporine, tacrolimus). Do not combine without medical supervision.', 'L''échinacée stimule la fonction immunitaire, ce qui s''oppose directement aux médicaments immunosuppresseurs (ciclosporine, tacrolimus). Ne pas combiner sans supervision médicale.', 'L''echinacea stimola la funzione immunitaria, opponendosi direttamente ai farmaci immunosoppressori (ciclosporina, tacrolimus). Non combinare senza supervisione medica.', NULL
FROM aliments WHERE slug = 'echinacea';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'L-Glutamine repairs intestinal lining while probiotics restore healthy gut flora. Together they provide comprehensive gut restoration support.', 'La L-Glutamine répare la muqueuse intestinale tandis que les probiotiques restaurent la flore intestinale saine. Ensemble, ils offrent un soutien complet à la restauration intestinale.', 'La L-Glutamina ripara il rivestimento intestinale mentre i probiotici ripristinano la flora intestinale sana. Insieme forniscono un supporto completo alla restaurazione intestinale.', NULL
FROM aliments a, aliments b WHERE a.slug = 'l-glutamine' AND b.slug = 'probiotics-lactobacillus';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'PQQ stimulates mitochondrial biogenesis (new mitochondria) while CoQ10 optimizes existing mitochondrial function. A powerful cellular energy stack.', 'Le PQQ stimule la biogenèse mitochondriale (nouvelles mitochondries) tandis que le CoQ10 optimise la fonction mitochondriale existante. Un puissant stack d''énergie cellulaire.', 'Il PQQ stimola la biogenesi mitocondriale (nuovi mitocondri) mentre il CoQ10 ottimizza la funzione mitocondriale esistente. Un potente stack di energia cellulare.', NULL
FROM aliments a, aliments b WHERE a.slug = 'pqq' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Hormone therapies (finasteride, dutasteride)', 'conflict', 'warning', 'Saw palmetto inhibits 5-alpha reductase similarly to finasteride. Combining may lead to excessive DHT suppression. Consult your urologist before combining.', 'Le palmier nain inhibe la 5-alpha réductase de manière similaire au finastéride. Combiner peut mener à une suppression excessive de la DHT. Consultez votre urologue avant de combiner.', 'La serenoa repens inibisce la 5-alfa reduttasi in modo simile alla finasteride. Combinare può portare a una soppressione eccessiva del DHT. Consultare l''urologo prima di combinare.', NULL
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT a.id, b.id, 'synergy', 'info', 'Spirulina''s plant-based iron is better absorbed with vitamin C. Also, both are potent antioxidants with complementary mechanisms for immune support.', 'Le fer végétal de la spiruline est mieux absorbé avec la vitamine C. De plus, les deux sont de puissants antioxydants avec des mécanismes complémentaires pour le soutien immunitaire.', 'Il ferro vegetale della spirulina è meglio assorbito con la vitamina C. Inoltre, entrambi sono potenti antiossidanti con meccanismi complementari per il supporto immunitario.', NULL
FROM aliments a, aliments b WHERE a.slug = 'spirulina' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'warning', 'Chaga contains compounds that may inhibit platelet aggregation. Combined with anticoagulants, this increases bleeding risk. Consult your doctor before use.', 'Le chaga contient des composés qui peuvent inhiber l''agrégation plaquettaire. Combiné avec des anticoagulants, cela augmente le risque de saignement. Consultez votre médecin.', 'Il chaga contiene composti che possono inibire l''aggregazione piastrinica. Combinato con anticoagulanti, questo aumenta il rischio di sanguinamento. Consultare il medico.', NULL
FROM aliments WHERE slug = 'chaga-mushroom';
