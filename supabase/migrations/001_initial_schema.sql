-- Herblore: Initial Database Schema
-- Migration: 001_initial_schema.sql
-- Run with: supabase db push

-- =============================================================================
-- ENUMS
-- =============================================================================

CREATE TYPE aliment_category AS ENUM (
  'vitamin', 'mineral', 'amino_acid', 'adaptogen',
  'mushroom', 'superfood', 'herb', 'spice',
  'fermented_food', 'functional_food', 'fatty_acid',
  'probiotic', 'specialty_compound'
);

CREATE TYPE evidence_level AS ENUM (
  'clinical_trial', 'observational', 'traditional'
);

CREATE TYPE use_mode AS ENUM (
  'continuous', 'cure'
);

CREATE TYPE interaction_type AS ENUM (
  'synergy', 'conflict', 'timing_separation'
);

CREATE TYPE interaction_severity AS ENUM (
  'info', 'warning', 'danger'
);

CREATE TYPE time_of_day AS ENUM (
  'wake', 'morning', 'afternoon', 'evening', 'bedtime'
);

-- =============================================================================
-- CORE ENCYCLOPEDIA TABLES (seeded, mostly static)
-- =============================================================================

CREATE TABLE aliments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  category aliment_category NOT NULL,

  name_en TEXT NOT NULL,
  name_fr TEXT,
  name_it TEXT,
  summary_en TEXT NOT NULL,
  summary_fr TEXT,
  summary_it TEXT,

  image_url TEXT,

  dosage_min NUMERIC,
  dosage_max NUMERIC,
  dosage_unit TEXT,

  best_time time_of_day[] DEFAULT '{}',
  with_food BOOLEAN DEFAULT true,

  use_mode use_mode NOT NULL DEFAULT 'continuous',
  cure_on_weeks INTEGER,
  cure_off_weeks INTEGER,
  cure_rationale_en TEXT,
  cure_rationale_fr TEXT,
  cure_rationale_it TEXT,

  contraindications_en TEXT[] DEFAULT '{}',
  contraindications_fr TEXT[] DEFAULT '{}',
  contraindications_it TEXT[] DEFAULT '{}',

  source_refs TEXT[] DEFAULT '{}',

  is_popular BOOLEAN DEFAULT false,
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_aliments_category ON aliments(category);
CREATE INDEX idx_aliments_slug ON aliments(slug);
CREATE INDEX idx_aliments_popular ON aliments(is_popular) WHERE is_popular = true;

CREATE TABLE aliment_benefits (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  aliment_id UUID NOT NULL REFERENCES aliments(id) ON DELETE CASCADE,

  benefit_en TEXT NOT NULL,
  benefit_fr TEXT,
  benefit_it TEXT,

  evidence_level evidence_level NOT NULL,
  source_ref TEXT,

  goal_tags TEXT[] DEFAULT '{}',

  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_benefits_aliment ON aliment_benefits(aliment_id);
CREATE INDEX idx_benefits_goals ON aliment_benefits USING GIN(goal_tags);

CREATE TABLE interactions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  aliment_a_id UUID NOT NULL REFERENCES aliments(id) ON DELETE CASCADE,
  aliment_b_id UUID REFERENCES aliments(id) ON DELETE CASCADE,
  aliment_b_name TEXT,

  interaction_type interaction_type NOT NULL,
  severity interaction_severity DEFAULT 'info',

  description_en TEXT NOT NULL,
  description_fr TEXT,
  description_it TEXT,

  separation_hours INTEGER,
  source_ref TEXT,

  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_interactions_a ON interactions(aliment_a_id);
CREATE INDEX idx_interactions_b ON interactions(aliment_b_id);

CREATE TABLE goals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug TEXT UNIQUE NOT NULL,
  name_en TEXT NOT NULL,
  name_fr TEXT,
  name_it TEXT,
  icon TEXT,
  description_en TEXT,
  description_fr TEXT,
  description_it TEXT,
  sort_order INTEGER DEFAULT 0
);

-- =============================================================================
-- USER TABLES
-- =============================================================================

CREATE TABLE profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  display_name TEXT,
  language TEXT DEFAULT 'en' CHECK (language IN ('en', 'fr', 'it')),
  selected_goals TEXT[] DEFAULT '{}',
  wake_time TIME DEFAULT '07:00',
  sleep_time TIME DEFAULT '23:00',
  onboarded BOOLEAN DEFAULT false,
  disclaimer_accepted BOOLEAN DEFAULT false,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO profiles (id) VALUES (NEW.id);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_new_user();

CREATE TABLE user_stack (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
  aliment_id UUID NOT NULL REFERENCES aliments(id) ON DELETE CASCADE,

  dosage NUMERIC,
  dosage_unit TEXT,
  is_active BOOLEAN DEFAULT true,
  cure_start_date DATE,
  notes TEXT,

  added_at TIMESTAMPTZ DEFAULT now(),

  UNIQUE(user_id, aliment_id)
);

CREATE INDEX idx_stack_user ON user_stack(user_id);

CREATE TABLE intake_log (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
  time_block TEXT NOT NULL CHECK (time_block IN ('wake', 'breakfast', 'lunch', 'afternoon', 'dinner', 'bedtime')),
  logged_at DATE NOT NULL DEFAULT CURRENT_DATE,
  taken BOOLEAN DEFAULT false,

  UNIQUE(user_id, time_block, logged_at)
);

CREATE INDEX idx_intake_user_date ON intake_log(user_id, logged_at);

CREATE TABLE ai_conversations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID NOT NULL REFERENCES profiles(id) ON DELETE CASCADE,
  role TEXT NOT NULL CHECK (role IN ('user', 'assistant')),
  content TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE INDEX idx_ai_conv_user ON ai_conversations(user_id);

-- =============================================================================
-- ROW LEVEL SECURITY
-- =============================================================================

ALTER TABLE aliments ENABLE ROW LEVEL SECURITY;
ALTER TABLE aliment_benefits ENABLE ROW LEVEL SECURITY;
ALTER TABLE interactions ENABLE ROW LEVEL SECURITY;
ALTER TABLE goals ENABLE ROW LEVEL SECURITY;
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_stack ENABLE ROW LEVEL SECURITY;
ALTER TABLE intake_log ENABLE ROW LEVEL SECURITY;
ALTER TABLE ai_conversations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Aliments are publicly readable"
  ON aliments FOR SELECT USING (true);

CREATE POLICY "Benefits are publicly readable"
  ON aliment_benefits FOR SELECT USING (true);

CREATE POLICY "Interactions are publicly readable"
  ON interactions FOR SELECT USING (true);

CREATE POLICY "Goals are publicly readable"
  ON goals FOR SELECT USING (true);

CREATE POLICY "Users can read own profile"
  ON profiles FOR SELECT USING (auth.uid() = id);

CREATE POLICY "Users can update own profile"
  ON profiles FOR UPDATE USING (auth.uid() = id);

CREATE POLICY "Users can read own stack"
  ON user_stack FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own stack"
  ON user_stack FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own stack"
  ON user_stack FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Users can delete own stack"
  ON user_stack FOR DELETE USING (auth.uid() = user_id);

CREATE POLICY "Users can read own intake log"
  ON intake_log FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own intake log"
  ON intake_log FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update own intake log"
  ON intake_log FOR UPDATE USING (auth.uid() = user_id);

CREATE POLICY "Users can read own AI conversations"
  ON ai_conversations FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can insert own AI conversations"
  ON ai_conversations FOR INSERT WITH CHECK (auth.uid() = user_id);

-- =============================================================================
-- SEED: GOALS
-- =============================================================================

INSERT INTO goals (slug, name_en, name_fr, name_it, icon, sort_order) VALUES
  ('energy',     'Energy',      'Énergie',      'Energia',       '⚡', 1),
  ('sleep',      'Sleep',       'Sommeil',      'Sonno',         '🌙', 2),
  ('immunity',   'Immunity',    'Immunité',     'Immunità',      '🛡️', 3),
  ('focus',      'Focus',       'Concentration','Concentrazione','🎯', 4),
  ('stress',     'Stress',      'Stress',       'Stress',        '🧘', 5),
  ('digestion',  'Digestion',   'Digestion',    'Digestione',    '🫶', 6),
  ('skin',       'Skin',        'Peau',         'Pelle',         '✨', 7),
  ('longevity',  'Longevity',   'Longévité',    'Longevità',     '🧬', 8),
  ('recovery',   'Recovery',    'Récupération', 'Recupero',      '💪', 9),
  ('joint_health','Joint Health','Articulations','Articolazioni', '🦴', 10);
