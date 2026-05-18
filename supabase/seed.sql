-- Herblore: Seed Data
-- Auto-generated from data/aliments-seed.json + data/interactions-seed.json
-- Run after 001_initial_schema.sql

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'magnesium-glycinate',
  'mineral',
  'Magnesium Glycinate',
  'Glycinate de Magnésium',
  'Glicinato di Magnesio',
  'A highly bioavailable form of magnesium chelated with glycine, supporting relaxation and sleep.',
  'Une forme de magnésium hautement biodisponible chélatée avec de la glycine, favorisant la relaxation et le sommeil.',
  'Una forma di magnesio altamente biodisponibile chelata con glicina, che favorisce il rilassamento e il sonno.',
  200,
  400,
  'mg',
  '{evening}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Kidney disease', 'Myasthenia gravis', 'May interact with antibiotics and bisphosphonates']::TEXT[],
  ARRAY['Maladie rénale', 'Myasthénie grave', 'Peut interagir avec les antibiotiques et les bisphosphonates']::TEXT[],
  ARRAY['Malattia renale', 'Miastenia grave', 'Può interagire con antibiotici e bifosfonati']::TEXT[],
  ARRAY['PMID:28526403', 'PMID:32272859']::TEXT[],
  true,
  0
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Improves sleep quality and reduces time to fall asleep', 'Améliore la qualité du sommeil et réduit le temps d''endormissement', 'Migliora la qualità del sonno e riduce il tempo di addormentamento', 'clinical_trial', 'PMID:32272859', ARRAY['sleep']::TEXT[], 0
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces symptoms of anxiety and stress', 'Réduit les symptômes d''anxiété et de stress', 'Riduce i sintomi di ansia e stress', 'clinical_trial', 'PMID:28526403', ARRAY['stress']::TEXT[], 1
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports muscle relaxation and recovery', 'Favorise la relaxation musculaire et la récupération', 'Favorisce il rilassamento muscolare e il recupero', 'observational', NULL, ARRAY['recovery']::TEXT[], 2
FROM aliments WHERE slug = 'magnesium-glycinate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-d3',
  'vitamin',
  'Vitamin D3',
  'Vitamine D3',
  'Vitamina D3',
  'The sunshine vitamin — essential for bone health, immunity, and mood. Most people are deficient.',
  'La vitamine du soleil — essentielle pour les os, l''immunité et l''humeur. La plupart des gens sont carencés.',
  'La vitamina del sole — essenziale per le ossa, l''immunità e l''umore. La maggior parte delle persone è carente.',
  1000,
  4000,
  'IU',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Hypercalcemia', 'Kidney disease', 'Sarcoidosis', 'High doses may interact with thiazide diuretics']::TEXT[],
  ARRAY['Hypercalcémie', 'Maladie rénale', 'Sarcoïdose', 'Les doses élevées peuvent interagir avec les diurétiques thiazidiques']::TEXT[],
  ARRAY['Ipercalcemia', 'Malattia renale', 'Sarcoidosi', 'Dosi elevate possono interagire con i diuretici tiazidici']::TEXT[],
  ARRAY['PMID:28202713', 'PMID:31405892']::TEXT[],
  true,
  1
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports immune function and reduces risk of respiratory infections', 'Soutient la fonction immunitaire et réduit le risque d''infections respiratoires', 'Supporta la funzione immunitaria e riduce il rischio di infezioni respiratorie', 'clinical_trial', 'PMID:28202713', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Essential for calcium absorption and bone mineral density', 'Essentiel pour l''absorption du calcium et la densité minérale osseuse', 'Essenziale per l''assorbimento del calcio e la densità minerale ossea', 'clinical_trial', NULL, ARRAY['joint_health']::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve mood and reduce symptoms of depression', 'Peut améliorer l''humeur et réduire les symptômes de dépression', 'Può migliorare l''umore e ridurre i sintomi della depressione', 'observational', NULL, ARRAY['stress']::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ashwagandha',
  'adaptogen',
  'Ashwagandha',
  'Ashwagandha',
  'Ashwagandha',
  'A powerful adaptogen from Ayurvedic medicine that helps the body manage stress and supports hormonal balance.',
  'Un puissant adaptogène de la médecine ayurvédique qui aide le corps à gérer le stress et soutient l''équilibre hormonal.',
  'Un potente adattogeno della medicina ayurvedica che aiuta il corpo a gestire lo stress e supporta l''equilibrio ormonale.',
  300,
  600,
  'mg',
  '{morning}',
  false,
  'cure',
  8,
  2,
  'Adaptogens may downregulate receptor sensitivity with prolonged continuous use. Cycling 8 weeks on / 2 weeks off helps maintain efficacy.',
  'Les adaptogènes peuvent réduire la sensibilité des récepteurs avec un usage continu prolongé. Un cycle de 8 semaines on / 2 semaines off aide à maintenir l''efficacité.',
  'Gli adattogeni possono ridurre la sensibilità dei recettori con uso continuo prolungato. Un ciclo di 8 settimane on / 2 settimane off aiuta a mantenere l''efficacia.',
  ARRAY['Pregnancy and breastfeeding', 'Thyroid disorders (may increase thyroid hormones)', 'Autoimmune conditions', 'May interact with sedatives and immunosuppressants']::TEXT[],
  ARRAY['Grossesse et allaitement', 'Troubles thyroïdiens (peut augmenter les hormones thyroïdiennes)', 'Maladies auto-immunes', 'Peut interagir avec les sédatifs et immunosuppresseurs']::TEXT[],
  ARRAY['Gravidanza e allattamento', 'Disturbi tiroidei (può aumentare gli ormoni tiroidei)', 'Condizioni autoimmuni', 'Può interagire con sedativi e immunosoppressori']::TEXT[],
  ARRAY['PMID:32021735', 'PMID:23439798']::TEXT[],
  true,
  2
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Significantly reduces cortisol levels and perceived stress', 'Réduit significativement les niveaux de cortisol et le stress perçu', 'Riduce significativamente i livelli di cortisolo e lo stress percepito', 'clinical_trial', 'PMID:23439798', ARRAY['stress']::TEXT[], 0
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Improves sleep quality in adults with insomnia', 'Améliore la qualité du sommeil chez les adultes souffrant d''insomnie', 'Migliora la qualità del sonno negli adulti con insonnia', 'clinical_trial', 'PMID:32021735', ARRAY['sleep']::TEXT[], 1
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May enhance physical performance and muscle strength', 'Peut améliorer les performances physiques et la force musculaire', 'Può migliorare le prestazioni fisiche e la forza muscolare', 'clinical_trial', NULL, ARRAY['energy', 'recovery']::TEXT[], 2
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'spirulina',
  'superfood',
  'Spirulina',
  'Spiruline',
  'Spirulina',
  'A nutrient-dense blue-green algae rich in protein, iron, B vitamins, and powerful antioxidants.',
  'Une algue bleu-vert dense en nutriments, riche en protéines, fer, vitamines B et antioxydants puissants.',
  'Un''alga blu-verde ricca di nutrienti, proteine, ferro, vitamine del gruppo B e potenti antiossidanti.',
  1,
  3,
  'g',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Autoimmune conditions (may stimulate immune system)', 'Phenylketonuria (contains phenylalanine)', 'May interact with immunosuppressants and anticoagulants']::TEXT[],
  ARRAY['Maladies auto-immunes (peut stimuler le système immunitaire)', 'Phénylcétonurie (contient de la phénylalanine)', 'Peut interagir avec les immunosuppresseurs et anticoagulants']::TEXT[],
  ARRAY['Condizioni autoimmuni (può stimolare il sistema immunitario)', 'Fenilchetonuria (contiene fenilalanina)', 'Può interagire con immunosoppressori e anticoagulanti']::TEXT[],
  ARRAY['PMID:27259333', 'PMID:31742426']::TEXT[],
  true,
  3
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces LDL cholesterol and triglycerides', 'Réduit le cholestérol LDL et les triglycérides', 'Riduce il colesterolo LDL e i trigliceridi', 'clinical_trial', 'PMID:27259333', ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Rich source of bioavailable iron and B12 for energy', 'Source riche en fer biodisponible et B12 pour l''énergie', 'Fonte ricca di ferro biodisponibile e B12 per l''energia', 'observational', NULL, ARRAY['energy']::TEXT[], 1
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Potent antioxidant properties (phycocyanin)', 'Propriétés antioxydantes puissantes (phycocyanine)', 'Potenti proprietà antiossidanti (ficocianina)', 'clinical_trial', NULL, ARRAY['immunity', 'skin']::TEXT[], 2
FROM aliments WHERE slug = 'spirulina';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'omega-3-epa-dha',
  'fatty_acid',
  'Omega-3 (EPA/DHA)',
  'Oméga-3 (EPA/DHA)',
  'Omega-3 (EPA/DHA)',
  'Essential fatty acids critical for brain health, heart function, and reducing systemic inflammation.',
  'Acides gras essentiels critiques pour la santé cérébrale, la fonction cardiaque et la réduction de l''inflammation systémique.',
  'Acidi grassi essenziali critici per la salute cerebrale, la funzione cardiaca e la riduzione dell''infiammazione sistemica.',
  1000,
  3000,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Fish/shellfish allergy (for fish-derived)', 'May interact with blood thinners', 'High doses may increase bleeding risk before surgery']::TEXT[],
  ARRAY['Allergie au poisson/crustacés (pour les dérivés de poisson)', 'Peut interagir avec les anticoagulants', 'Des doses élevées peuvent augmenter le risque de saignement avant une chirurgie']::TEXT[],
  ARRAY['Allergia al pesce/crostacei (per derivati dal pesce)', 'Può interagire con anticoagulanti', 'Dosi elevate possono aumentare il rischio di sanguinamento prima di un intervento']::TEXT[],
  ARRAY['PMID:29494205', 'PMID:30019643']::TEXT[],
  true,
  4
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces systemic inflammation and inflammatory markers', 'Réduit l''inflammation systémique et les marqueurs inflammatoires', 'Riduce l''infiammazione sistemica e i marcatori infiammatori', 'clinical_trial', 'PMID:29494205', ARRAY['recovery', 'joint_health']::TEXT[], 0
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports cardiovascular health and healthy triglyceride levels', 'Soutient la santé cardiovasculaire et des niveaux sains de triglycérides', 'Supporta la salute cardiovascolare e livelli sani di trigliceridi', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cognitive function and reduce cognitive decline', 'Peut soutenir la fonction cognitive et réduire le déclin cognitif', 'Può supportare la funzione cognitiva e ridurre il declino cognitivo', 'observational', NULL, ARRAY['focus']::TEXT[], 2
FROM aliments WHERE slug = 'omega-3-epa-dha';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'lions-mane',
  'mushroom',
  'Lion''s Mane',
  'Crinière de Lion',
  'Criniera di Leone',
  'A medicinal mushroom that stimulates nerve growth factor (NGF) production, supporting brain health and neuroplasticity.',
  'Un champignon médicinal qui stimule la production de facteur de croissance nerveuse (NGF), soutenant la santé cérébrale et la neuroplasticité.',
  'Un fungo medicinale che stimola la produzione del fattore di crescita nervoso (NGF), supportando la salute cerebrale e la neuroplasticità.',
  500,
  3000,
  'mg',
  '{morning}',
  true,
  'cure',
  12,
  4,
  'NGF stimulation benefits plateau after prolonged use. A 12-week on / 4-week off cycle is commonly recommended by practitioners.',
  'Les bénéfices de la stimulation du NGF atteignent un plateau après un usage prolongé. Un cycle de 12 semaines on / 4 semaines off est couramment recommandé.',
  'I benefici della stimolazione del NGF raggiungono un plateau dopo un uso prolungato. Un ciclo di 12 settimane on / 4 settimane off è comunemente raccomandato.',
  ARRAY['Mushroom allergy', 'May interact with anticoagulants', 'Caution with immunosuppressants']::TEXT[],
  ARRAY['Allergie aux champignons', 'Peut interagir avec les anticoagulants', 'Prudence avec les immunosuppresseurs']::TEXT[],
  ARRAY['Allergia ai funghi', 'Può interagire con anticoagulanti', 'Cautela con immunosoppressori']::TEXT[],
  ARRAY['PMID:24266378', 'PMID:31413233']::TEXT[],
  true,
  5
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Stimulates nerve growth factor (NGF) synthesis in the brain', 'Stimule la synthèse du facteur de croissance nerveuse (NGF) dans le cerveau', 'Stimola la sintesi del fattore di crescita nervoso (NGF) nel cervello', 'clinical_trial', 'PMID:24266378', ARRAY['focus']::TEXT[], 0
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve mild cognitive impairment in older adults', 'Peut améliorer les troubles cognitifs légers chez les personnes âgées', 'Può migliorare il deterioramento cognitivo lieve negli anziani', 'clinical_trial', NULL, ARRAY['focus', 'longevity']::TEXT[], 1
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce symptoms of anxiety and depression', 'Peut réduire les symptômes d''anxiété et de dépression', 'Può ridurre i sintomi di ansia e depressione', 'observational', NULL, ARRAY['stress']::TEXT[], 2
FROM aliments WHERE slug = 'lions-mane';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'zinc',
  'mineral',
  'Zinc',
  'Zinc',
  'Zinco',
  'An essential trace mineral critical for immune function, wound healing, and protein synthesis. Best absorbed as picolinate or citrate.',
  'Un oligo-élément essentiel crucial pour la fonction immunitaire, la cicatrisation et la synthèse protéique. Mieux absorbé sous forme de picolinate ou citrate.',
  'Un oligoelemento essenziale cruciale per la funzione immunitaria, la guarigione delle ferite e la sintesi proteica. Meglio assorbito come picolinato o citrato.',
  15,
  30,
  'mg',
  '{evening}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Doses above 40mg/day may cause copper deficiency', 'May interact with antibiotics and penicillamine', 'Take away from iron supplements']::TEXT[],
  ARRAY['Les doses supérieures à 40mg/jour peuvent causer une carence en cuivre', 'Peut interagir avec les antibiotiques et la pénicillamine', 'Prendre loin des suppléments de fer']::TEXT[],
  ARRAY['Dosi superiori a 40mg/giorno possono causare carenza di rame', 'Può interagire con antibiotici e penicillamina', 'Assumere lontano dagli integratori di ferro']::TEXT[],
  ARRAY['PMID:28515951', 'PMID:33085924']::TEXT[],
  true,
  6
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces duration of common cold when taken within 24h of symptom onset', 'Réduit la durée du rhume lorsqu''il est pris dans les 24h suivant l''apparition des symptômes', 'Riduce la durata del raffreddore se assunto entro 24h dall''insorgenza dei sintomi', 'clinical_trial', 'PMID:28515951', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports testosterone production and reproductive health', 'Soutient la production de testostérone et la santé reproductive', 'Supporta la produzione di testosterone e la salute riproduttiva', 'clinical_trial', NULL, ARRAY['energy', 'recovery']::TEXT[], 1
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve skin health and reduce acne severity', 'Peut améliorer la santé de la peau et réduire la sévérité de l''acné', 'Può migliorare la salute della pelle e ridurre la gravità dell''acne', 'observational', NULL, ARRAY['skin']::TEXT[], 2
FROM aliments WHERE slug = 'zinc';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'l-theanine',
  'amino_acid',
  'L-Theanine',
  'L-Théanine',
  'L-Teanina',
  'An amino acid found in green tea that promotes calm focus without drowsiness. Synergizes with caffeine.',
  'Un acide aminé présent dans le thé vert qui favorise une concentration calme sans somnolence. Synergie avec la caféine.',
  'Un amminoacido presente nel tè verde che promuove una concentrazione calma senza sonnolenza. Sinergia con la caffeina.',
  100,
  400,
  'mg',
  '{morning, afternoon}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Generally very well tolerated', 'May enhance effects of blood pressure medications']::TEXT[],
  ARRAY['Généralement très bien toléré', 'Peut renforcer les effets des médicaments contre l''hypertension']::TEXT[],
  ARRAY['Generalmente molto ben tollerata', 'Può potenziare gli effetti dei farmaci per la pressione sanguigna']::TEXT[],
  ARRAY['PMID:30580081', 'PMID:21040626']::TEXT[],
  true,
  7
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Increases alpha brain wave activity, promoting relaxed alertness', 'Augmente l''activité des ondes cérébrales alpha, favorisant une vigilance détendue', 'Aumenta l''attività delle onde cerebrali alfa, promuovendo una vigilanza rilassata', 'clinical_trial', 'PMID:30580081', ARRAY['focus', 'stress']::TEXT[], 0
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Improves attention and reaction time when combined with caffeine', 'Améliore l''attention et le temps de réaction en combinaison avec la caféine', 'Migliora l''attenzione e il tempo di reazione se combinata con caffeina', 'clinical_trial', 'PMID:21040626', ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve sleep quality without causing daytime drowsiness', 'Peut améliorer la qualité du sommeil sans causer de somnolence diurne', 'Può migliorare la qualità del sonno senza causare sonnolenza diurna', 'clinical_trial', NULL, ARRAY['sleep']::TEXT[], 2
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'turmeric-curcumin',
  'herb',
  'Turmeric / Curcumin',
  'Curcuma / Curcumine',
  'Curcuma / Curcumina',
  'A potent anti-inflammatory compound from turmeric root. Requires piperine (black pepper) or lipid formulation for absorption.',
  'Un puissant composé anti-inflammatoire issu de la racine de curcuma. Nécessite de la pipérine (poivre noir) ou une formulation lipidique pour l''absorption.',
  'Un potente composto antinfiammatorio dalla radice di curcuma. Richiede piperina (pepe nero) o formulazione lipidica per l''assorbimento.',
  500,
  1500,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['May interact with blood thinners (anticoagulants)', 'Gallbladder disease or bile duct obstruction', 'May lower blood sugar — caution with diabetes medications', 'Avoid high doses before surgery']::TEXT[],
  ARRAY['Peut interagir avec les anticoagulants', 'Maladie de la vésicule biliaire ou obstruction des voies biliaires', 'Peut abaisser la glycémie — prudence avec les médicaments pour le diabète', 'Éviter les doses élevées avant une chirurgie']::TEXT[],
  ARRAY['Può interagire con anticoagulanti', 'Malattia della cistifellea o ostruzione delle vie biliari', 'Può abbassare la glicemia — cautela con farmaci per il diabete', 'Evitare dosi elevate prima di un intervento']::TEXT[],
  ARRAY['PMID:29065496', 'PMID:28924905']::TEXT[],
  true,
  8
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces markers of systemic inflammation (comparable to some NSAIDs)', 'Réduit les marqueurs d''inflammation systémique (comparable à certains AINS)', 'Riduce i marcatori di infiammazione sistemica (comparabile ad alcuni FANS)', 'clinical_trial', 'PMID:29065496', ARRAY['recovery', 'joint_health']::TEXT[], 0
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce joint pain and improve function in osteoarthritis', 'Peut réduire les douleurs articulaires et améliorer la fonction dans l''arthrose', 'Può ridurre il dolore articolare e migliorare la funzione nell''osteoartrosi', 'clinical_trial', NULL, ARRAY['joint_health']::TEXT[], 1
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Potent antioxidant that may support brain health and neuroplasticity', 'Puissant antioxydant qui peut soutenir la santé cérébrale et la neuroplasticité', 'Potente antiossidante che può supportare la salute cerebrale e la neuroplasticità', 'observational', NULL, ARRAY['focus', 'longevity']::TEXT[], 2
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'probiotics-lactobacillus',
  'probiotic',
  'Probiotics (Lactobacillus)',
  'Probiotiques (Lactobacillus)',
  'Probiotici (Lactobacillus)',
  'Beneficial bacteria that support gut microbiome diversity, digestive health, and immune function.',
  'Bactéries bénéfiques qui soutiennent la diversité du microbiome intestinal, la santé digestive et la fonction immunitaire.',
  'Batteri benefici che supportano la diversità del microbioma intestinale, la salute digestiva e la funzione immunitaria.',
  10,
  50,
  'B CFU',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Severely immunocompromised individuals', 'Short bowel syndrome', 'Central venous catheters', 'May cause temporary bloating during first week']::TEXT[],
  ARRAY['Personnes sévèrement immunodéprimées', 'Syndrome de l''intestin court', 'Cathéters veineux centraux', 'Peut causer des ballonnements temporaires la première semaine']::TEXT[],
  ARRAY['Individui gravemente immunocompromessi', 'Sindrome dell''intestino corto', 'Cateteri venosi centrali', 'Può causare gonfiore temporaneo durante la prima settimana']::TEXT[],
  ARRAY['PMID:28639575', 'PMID:30673668']::TEXT[],
  true,
  9
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Improves digestive health and reduces IBS symptoms', 'Améliore la santé digestive et réduit les symptômes du SII', 'Migliora la salute digestiva e riduce i sintomi dell''IBS', 'clinical_trial', 'PMID:28639575', ARRAY['digestion']::TEXT[], 0
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports immune system function and reduces infection frequency', 'Soutient la fonction du système immunitaire et réduit la fréquence des infections', 'Supporta la funzione del sistema immunitario e riduce la frequenza delle infezioni', 'clinical_trial', NULL, ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve skin conditions like eczema and acne via gut-skin axis', 'Peut améliorer les conditions cutanées comme l''eczéma et l''acné via l''axe intestin-peau', 'Può migliorare le condizioni della pelle come eczema e acne tramite l''asse intestino-pelle', 'observational', NULL, ARRAY['skin']::TEXT[], 2
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-c',
  'vitamin',
  'Vitamin C',
  'Vitamine C',
  'Vitamina C',
  'A water-soluble antioxidant essential for collagen synthesis, immune defense, and iron absorption. Cannot be stored by the body.',
  'Un antioxydant hydrosoluble essentiel pour la synthèse du collagène, la défense immunitaire et l''absorption du fer. Ne peut pas être stocké par le corps.',
  'Un antiossidante idrosolubile essenziale per la sintesi del collagene, la difesa immunitaria e l''assorbimento del ferro. Non può essere immagazzinato dall''organismo.',
  500,
  2000,
  'mg',
  '{morning, afternoon}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['History of kidney stones (oxalate type)', 'Hemochromatosis (enhances iron absorption)', 'Doses above 2000mg/day may cause digestive upset']::TEXT[],
  ARRAY['Antécédents de calculs rénaux (type oxalate)', 'Hémochromatose (améliore l''absorption du fer)', 'Des doses supérieures à 2000mg/jour peuvent causer des troubles digestifs']::TEXT[],
  ARRAY['Storia di calcoli renali (tipo ossalato)', 'Emocromatosi (migliora l''assorbimento del ferro)', 'Dosi superiori a 2000mg/giorno possono causare disturbi digestivi']::TEXT[],
  ARRAY['PMID:29099763', 'PMID:28353648']::TEXT[],
  true,
  10
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports immune cell function and may reduce duration of common cold', 'Soutient la fonction des cellules immunitaires et peut réduire la durée du rhume', 'Supporta la funzione delle cellule immunitarie e può ridurre la durata del raffreddore', 'clinical_trial', 'PMID:29099763', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Essential cofactor for collagen synthesis, supporting skin elasticity and wound healing', 'Cofacteur essentiel pour la synthèse du collagène, favorisant l''élasticité de la peau et la cicatrisation', 'Cofattore essenziale per la sintesi del collagene, favorendo l''elasticità della pelle e la guarigione delle ferite', 'clinical_trial', 'PMID:28353648', ARRAY['skin']::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Potent antioxidant that may help protect cells from oxidative damage', 'Puissant antioxydant qui peut aider à protéger les cellules des dommages oxydatifs', 'Potente antiossidante che può aiutare a proteggere le cellule dai danni ossidativi', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-c';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'b-complex',
  'vitamin',
  'B Complex',
  'Complexe B',
  'Complesso B',
  'A group of eight essential B vitamins that work together to support energy metabolism, nervous system function, and red blood cell formation.',
  'Un groupe de huit vitamines B essentielles qui agissent ensemble pour soutenir le métabolisme énergétique, le système nerveux et la formation des globules rouges.',
  'Un gruppo di otto vitamine B essenziali che lavorano insieme per supportare il metabolismo energetico, il sistema nervoso e la formazione dei globuli rossi.',
  1,
  1,
  'capsule',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['B6 doses above 100mg/day may cause peripheral neuropathy with long-term use', 'May cause bright yellow urine (harmless, from riboflavin)', 'May interact with levodopa and certain chemotherapy drugs']::TEXT[],
  ARRAY['Des doses de B6 supérieures à 100mg/jour peuvent causer une neuropathie périphérique avec un usage prolongé', 'Peut causer une urine jaune vif (inoffensif, dû à la riboflavine)', 'Peut interagir avec la lévodopa et certains médicaments de chimiothérapie']::TEXT[],
  ARRAY['Dosi di B6 superiori a 100mg/giorno possono causare neuropatia periferica con uso prolungato', 'Può causare urina giallo brillante (innocuo, dalla riboflavina)', 'Può interagire con levodopa e alcuni farmaci chemioterapici']::TEXT[],
  ARRAY['PMID:27067872', 'PMID:31475962']::TEXT[],
  true,
  11
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports cellular energy production and may reduce fatigue', 'Soutient la production d''énergie cellulaire et peut réduire la fatigue', 'Supporta la produzione di energia cellulare e può ridurre la stanchezza', 'clinical_trial', 'PMID:27067872', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support mood regulation and reduce symptoms of stress', 'Peut soutenir la régulation de l''humeur et réduire les symptômes du stress', 'Può supportare la regolazione dell''umore e ridurre i sintomi dello stress', 'clinical_trial', 'PMID:31475962', ARRAY['stress']::TEXT[], 1
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Essential for healthy nervous system function and neurotransmitter synthesis', 'Essentiel pour le bon fonctionnement du système nerveux et la synthèse des neurotransmetteurs', 'Essenziale per il corretto funzionamento del sistema nervoso e la sintesi dei neurotrasmettitori', 'clinical_trial', NULL, ARRAY['focus']::TEXT[], 2
FROM aliments WHERE slug = 'b-complex';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'iron-bisglycinate',
  'mineral',
  'Iron (Bisglycinate)',
  'Fer (Bisglycinate)',
  'Ferro (Bisglicinato)',
  'An essential mineral for oxygen transport and energy production. Bisglycinate form is gentle on the stomach with superior absorption.',
  'Un minéral essentiel pour le transport de l''oxygène et la production d''énergie. La forme bisglycinate est douce pour l''estomac avec une absorption supérieure.',
  'Un minerale essenziale per il trasporto dell''ossigeno e la produzione di energia. La forma bisglicinato è delicata per lo stomaco con assorbimento superiore.',
  18,
  45,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Hemochromatosis or iron overload disorders', 'Do not take with calcium, zinc, or dairy (reduces absorption)', 'Take with vitamin C to enhance absorption', 'May cause constipation or dark stools']::TEXT[],
  ARRAY['Hémochromatose ou troubles de surcharge en fer', 'Ne pas prendre avec du calcium, du zinc ou des produits laitiers (réduit l''absorption)', 'Prendre avec de la vitamine C pour améliorer l''absorption', 'Peut causer de la constipation ou des selles foncées']::TEXT[],
  ARRAY['Emocromatosi o disturbi da sovraccarico di ferro', 'Non assumere con calcio, zinco o latticini (riduce l''assorbimento)', 'Assumere con vitamina C per migliorare l''assorbimento', 'Può causare stitichezza o feci scure']::TEXT[],
  ARRAY['PMID:29137797', 'PMID:26314231']::TEXT[],
  true,
  12
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Restores iron levels and may resolve fatigue associated with iron deficiency', 'Restaure les niveaux de fer et peut résoudre la fatigue associée à la carence en fer', 'Ripristina i livelli di ferro e può risolvere la stanchezza associata alla carenza di ferro', 'clinical_trial', 'PMID:29137797', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports oxygen transport and aerobic exercise capacity', 'Soutient le transport de l''oxygène et la capacité d''exercice aérobie', 'Supporta il trasporto dell''ossigeno e la capacità di esercizio aerobico', 'clinical_trial', NULL, ARRAY['energy', 'recovery']::TEXT[], 1
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cognitive function in iron-deficient individuals', 'Peut soutenir la fonction cognitive chez les personnes carencées en fer', 'Può supportare la funzione cognitiva negli individui carenti di ferro', 'observational', NULL, ARRAY['focus']::TEXT[], 2
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'creatine-monohydrate',
  'amino_acid',
  'Creatine Monohydrate',
  'Créatine Monohydrate',
  'Creatina Monoidrato',
  'One of the most researched supplements in sports science. Supports ATP regeneration for high-intensity performance and has emerging cognitive benefits.',
  'L''un des suppléments les plus étudiés en sciences du sport. Soutient la régénération de l''ATP pour les performances de haute intensité et présente des bénéfices cognitifs émergents.',
  'Uno degli integratori più studiati nelle scienze dello sport. Supporta la rigenerazione dell''ATP per prestazioni ad alta intensità e presenta benefici cognitivi emergenti.',
  3,
  5,
  'g',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Pre-existing kidney disease (consult physician)', 'May cause water retention during initial loading phase', 'Stay well hydrated during supplementation']::TEXT[],
  ARRAY['Maladie rénale préexistante (consulter un médecin)', 'Peut causer une rétention d''eau pendant la phase de charge initiale', 'Rester bien hydraté pendant la supplémentation']::TEXT[],
  ARRAY['Malattia renale preesistente (consultare un medico)', 'Può causare ritenzione idrica durante la fase di carico iniziale', 'Mantenersi ben idratati durante la supplementazione']::TEXT[],
  ARRAY['PMID:28615996', 'PMID:29704637']::TEXT[],
  true,
  13
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Increases muscle strength and power output during high-intensity exercise', 'Augmente la force musculaire et la puissance lors d''exercices de haute intensité', 'Aumenta la forza muscolare e la potenza durante esercizi ad alta intensità', 'clinical_trial', 'PMID:28615996', ARRAY['energy', 'recovery']::TEXT[], 0
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cognitive function, especially under sleep deprivation or mental fatigue', 'Peut soutenir la fonction cognitive, surtout en cas de privation de sommeil ou de fatigue mentale', 'Può supportare la funzione cognitiva, specialmente in caso di privazione del sonno o affaticamento mentale', 'clinical_trial', 'PMID:29704637', ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support lean muscle mass preservation during aging', 'Peut soutenir la préservation de la masse musculaire maigre pendant le vieillissement', 'Può supportare la conservazione della massa muscolare magra durante l''invecchiamento', 'observational', NULL, ARRAY['longevity', 'recovery']::TEXT[], 2
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'rhodiola-rosea',
  'adaptogen',
  'Rhodiola Rosea',
  'Rhodiola Rosea',
  'Rhodiola Rosea',
  'An arctic adaptogen traditionally used to combat fatigue and enhance mental performance under stress. Works primarily on the HPA axis.',
  'Un adaptogène arctique traditionnellement utilisé pour combattre la fatigue et améliorer les performances mentales sous stress. Agit principalement sur l''axe HPA.',
  'Un adattogeno artico tradizionalmente usato per combattere la fatica e migliorare le prestazioni mentali sotto stress. Agisce principalmente sull''asse HPA.',
  200,
  600,
  'mg',
  '{morning}',
  false,
  'cure',
  8,
  2,
  'As an adaptogen, rhodiola''s effects may diminish with continuous use due to receptor adaptation. An 8-week on / 2-week off cycle helps preserve efficacy.',
  'En tant qu''adaptogène, les effets de la rhodiola peuvent diminuer avec un usage continu en raison de l''adaptation des récepteurs. Un cycle de 8 semaines on / 2 semaines off aide à préserver l''efficacité.',
  'Come adattogeno, gli effetti della rhodiola possono diminuire con l''uso continuo a causa dell''adattamento dei recettori. Un ciclo di 8 settimane on / 2 settimane off aiuta a preservare l''efficacia.',
  ARRAY['Bipolar disorder (may trigger mania in susceptible individuals)', 'May interact with antidepressants (SSRIs, MAOIs)', 'Pregnancy and breastfeeding', 'May cause insomnia if taken late in the day']::TEXT[],
  ARRAY['Trouble bipolaire (peut déclencher une manie chez les individus susceptibles)', 'Peut interagir avec les antidépresseurs (ISRS, IMAO)', 'Grossesse et allaitement', 'Peut causer de l''insomnie si pris tard dans la journée']::TEXT[],
  ARRAY['Disturbo bipolare (può scatenare mania in individui suscettibili)', 'Può interagire con antidepressivi (SSRI, IMAO)', 'Gravidanza e allattamento', 'Può causare insonnia se assunta tardi nella giornata']::TEXT[],
  ARRAY['PMID:22228617', 'PMID:26502953']::TEXT[],
  false,
  14
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce mental fatigue and improve cognitive performance under stress', 'Peut réduire la fatigue mentale et améliorer les performances cognitives sous stress', 'Può ridurre la fatica mentale e migliorare le prestazioni cognitive sotto stress', 'clinical_trial', 'PMID:22228617', ARRAY['focus', 'energy']::TEXT[], 0
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce symptoms of burnout and stress-related exhaustion', 'Peut réduire les symptômes du burn-out et de l''épuisement lié au stress', 'Può ridurre i sintomi del burnout e dell''esaurimento legato allo stress', 'clinical_trial', 'PMID:26502953', ARRAY['stress']::TEXT[], 1
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve physical endurance and exercise performance', 'Peut améliorer l''endurance physique et les performances sportives', 'Può migliorare la resistenza fisica e le prestazioni sportive', 'observational', NULL, ARRAY['energy', 'recovery']::TEXT[], 2
FROM aliments WHERE slug = 'rhodiola-rosea';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'maca-root',
  'superfood',
  'Maca Root',
  'Racine de Maca',
  'Radice di Maca',
  'A Peruvian cruciferous root vegetable traditionally used for energy, libido, and hormonal balance. Rich in glucosinolates and polyphenols.',
  'Un légume-racine crucifère péruvien traditionnellement utilisé pour l''énergie, la libido et l''équilibre hormonal. Riche en glucosinolates et polyphénols.',
  'Un tubero crucifero peruviano tradizionalmente usato per energia, libido e equilibrio ormonale. Ricco di glucosinolati e polifenoli.',
  1500,
  3000,
  'mg',
  '{morning}',
  true,
  'cure',
  12,
  4,
  'Maca''s hormonal modulation effects may plateau with extended use. Cycling 12 weeks on / 4 weeks off is a common practitioner recommendation to maintain responsiveness.',
  'Les effets de modulation hormonale de la maca peuvent atteindre un plateau avec un usage prolongé. Un cycle de 12 semaines on / 4 semaines off est une recommandation courante pour maintenir la réactivité.',
  'Gli effetti di modulazione ormonale della maca possono raggiungere un plateau con l''uso prolungato. Un ciclo di 12 settimane on / 4 settimane off è una raccomandazione comune per mantenere la reattività.',
  ARRAY['Thyroid conditions (contains goitrogens)', 'Hormone-sensitive conditions (breast cancer, endometriosis)', 'Pregnancy and breastfeeding']::TEXT[],
  ARRAY['Troubles thyroïdiens (contient des goitrogènes)', 'Conditions hormono-sensibles (cancer du sein, endométriose)', 'Grossesse et allaitement']::TEXT[],
  ARRAY['Condizioni tiroidee (contiene goitrogeni)', 'Condizioni ormono-sensibili (cancro al seno, endometriosi)', 'Gravidanza e allattamento']::TEXT[],
  ARRAY['PMID:24931003', 'PMID:19781622']::TEXT[],
  false,
  15
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve energy levels and reduce self-reported fatigue', 'Peut améliorer les niveaux d''énergie et réduire la fatigue auto-déclarée', 'Può migliorare i livelli di energia e ridurre la stanchezza auto-riferita', 'clinical_trial', 'PMID:24931003', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support libido and sexual function in both men and women', 'Peut soutenir la libido et la fonction sexuelle chez les hommes et les femmes', 'Può supportare la libido e la funzione sessuale in uomini e donne', 'clinical_trial', 'PMID:19781622', ARRAY['energy']::TEXT[], 1
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used for hormonal balance and menopausal symptom relief', 'Traditionnellement utilisé pour l''équilibre hormonal et le soulagement des symptômes de la ménopause', 'Tradizionalmente usata per l''equilibrio ormonale e il sollievo dei sintomi della menopausa', 'traditional', NULL, ARRAY['stress']::TEXT[], 2
FROM aliments WHERE slug = 'maca-root';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'reishi-mushroom',
  'mushroom',
  'Reishi Mushroom',
  'Champignon Reishi',
  'Fungo Reishi',
  'Known as the ''mushroom of immortality'' in traditional Chinese medicine. Valued for immune modulation, stress relief, and sleep support.',
  'Connu comme le « champignon de l''immortalité » en médecine traditionnelle chinoise. Apprécié pour la modulation immunitaire, le soulagement du stress et le soutien du sommeil.',
  'Conosciuto come il ''fungo dell''immortalità'' nella medicina tradizionale cinese. Apprezzato per la modulazione immunitaria, il sollievo dallo stress e il supporto del sonno.',
  1000,
  3000,
  'mg',
  '{evening}',
  true,
  'cure',
  8,
  2,
  'Reishi''s immunomodulatory triterpenes may cause immune system adaptation with prolonged continuous use. Cycling 8 weeks on / 2 weeks off is recommended.',
  'Les triterpènes immunomodulateurs du reishi peuvent causer une adaptation du système immunitaire avec un usage continu prolongé. Un cycle de 8 semaines on / 2 semaines off est recommandé.',
  'I triterpeni immunomodulatori del reishi possono causare un adattamento del sistema immunitario con l''uso continuo prolungato. Un ciclo di 8 settimane on / 2 settimane off è raccomandato.',
  ARRAY['Mushroom allergy', 'May interact with anticoagulants and blood pressure medications', 'Autoimmune conditions', 'Discontinue 2 weeks before surgery']::TEXT[],
  ARRAY['Allergie aux champignons', 'Peut interagir avec les anticoagulants et les médicaments pour la tension artérielle', 'Maladies auto-immunes', 'Arrêter 2 semaines avant une chirurgie']::TEXT[],
  ARRAY['Allergia ai funghi', 'Può interagire con anticoagulanti e farmaci per la pressione sanguigna', 'Condizioni autoimmuni', 'Interrompere 2 settimane prima di un intervento']::TEXT[],
  ARRAY['PMID:27408987', 'PMID:28436985']::TEXT[],
  false,
  16
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May modulate immune system function and support natural killer cell activity', 'Peut moduler la fonction du système immunitaire et soutenir l''activité des cellules tueuses naturelles', 'Può modulare la funzione del sistema immunitario e supportare l''attività delle cellule natural killer', 'clinical_trial', 'PMID:27408987', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May promote relaxation and improve sleep quality', 'Peut favoriser la relaxation et améliorer la qualité du sommeil', 'Può favorire il rilassamento e migliorare la qualità del sonno', 'observational', NULL, ARRAY['sleep', 'stress']::TEXT[], 1
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Rich in triterpenes and polysaccharides with antioxidant properties associated with longevity', 'Riche en triterpènes et polysaccharides aux propriétés antioxydantes associées à la longévité', 'Ricco di triterpeni e polisaccaridi con proprietà antiossidanti associate alla longevità', 'traditional', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'reishi-mushroom';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cordyceps',
  'mushroom',
  'Cordyceps',
  'Cordyceps',
  'Cordyceps',
  'A functional mushroom traditionally used to enhance stamina and oxygen utilization. Modern research supports its role in energy metabolism and exercise performance.',
  'Un champignon fonctionnel traditionnellement utilisé pour améliorer l''endurance et l''utilisation de l''oxygène. La recherche moderne soutient son rôle dans le métabolisme énergétique et la performance sportive.',
  'Un fungo funzionale tradizionalmente usato per migliorare la resistenza e l''utilizzo dell''ossigeno. La ricerca moderna supporta il suo ruolo nel metabolismo energetico e le prestazioni sportive.',
  1000,
  3000,
  'mg',
  '{morning}',
  true,
  'cure',
  8,
  2,
  'Cordyceps'' adaptogenic effects may diminish with prolonged continuous use. Cycling 8 weeks on / 2 weeks off helps maintain benefit response.',
  'Les effets adaptogènes du cordyceps peuvent diminuer avec un usage continu prolongé. Un cycle de 8 semaines on / 2 semaines off aide à maintenir la réponse bénéfique.',
  'Gli effetti adattogeni del cordyceps possono diminuire con l''uso continuo prolungato. Un ciclo di 8 settimane on / 2 settimane off aiuta a mantenere la risposta benefica.',
  ARRAY['Mushroom allergy', 'May interact with anticoagulants and immunosuppressants', 'Autoimmune conditions', 'Diabetes medications (may lower blood sugar)']::TEXT[],
  ARRAY['Allergie aux champignons', 'Peut interagir avec les anticoagulants et les immunosuppresseurs', 'Maladies auto-immunes', 'Médicaments pour le diabète (peut abaisser la glycémie)']::TEXT[],
  ARRAY['Allergia ai funghi', 'Può interagire con anticoagulanti e immunosoppressori', 'Condizioni autoimmuni', 'Farmaci per il diabete (può abbassare la glicemia)']::TEXT[],
  ARRAY['PMID:27274781', 'PMID:28094746']::TEXT[],
  false,
  17
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve aerobic capacity and oxygen utilization during exercise', 'Peut améliorer la capacité aérobie et l''utilisation de l''oxygène pendant l''exercice', 'Può migliorare la capacità aerobica e l''utilizzo dell''ossigeno durante l''esercizio', 'clinical_trial', 'PMID:28094746', ARRAY['energy', 'recovery']::TEXT[], 0
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cellular energy production through enhanced ATP synthesis', 'Peut soutenir la production d''énergie cellulaire via une synthèse accrue d''ATP', 'Può supportare la produzione di energia cellulare attraverso una sintesi potenziata di ATP', 'observational', NULL, ARRAY['energy']::TEXT[], 1
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used to support respiratory health and immune function', 'Traditionnellement utilisé pour soutenir la santé respiratoire et la fonction immunitaire', 'Tradizionalmente usato per supportare la salute respiratoria e la funzione immunitaria', 'traditional', NULL, ARRAY['immunity']::TEXT[], 2
FROM aliments WHERE slug = 'cordyceps';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'collagen-peptides',
  'specialty_compound',
  'Collagen Peptides',
  'Peptides de Collagène',
  'Peptidi di Collagene',
  'Hydrolyzed collagen protein broken into bioavailable peptides. The most abundant protein in the body, critical for skin, joints, bones, and connective tissue.',
  'Protéine de collagène hydrolysée en peptides biodisponibles. La protéine la plus abondante du corps, essentielle pour la peau, les articulations, les os et le tissu conjonctif.',
  'Proteina di collagene idrolizzata in peptidi biodisponibili. La proteina più abbondante del corpo, fondamentale per pelle, articolazioni, ossa e tessuto connettivo.',
  5,
  15,
  'g',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Allergy to source animal (bovine, marine, porcine)', 'Histamine intolerance (some collagen products may be high in histamine)', 'Kidney disease (high protein content)']::TEXT[],
  ARRAY['Allergie à l''animal source (bovin, marin, porcin)', 'Intolérance à l''histamine (certains produits de collagène peuvent être riches en histamine)', 'Maladie rénale (teneur élevée en protéines)']::TEXT[],
  ARRAY['Allergia all''animale di origine (bovino, marino, suino)', 'Intolleranza all''istamina (alcuni prodotti di collagene possono essere ricchi di istamina)', 'Malattia renale (alto contenuto proteico)']::TEXT[],
  ARRAY['PMID:30681787', 'PMID:28786550']::TEXT[],
  true,
  18
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve skin elasticity, hydration, and reduce wrinkle depth', 'Peut améliorer l''élasticité de la peau, l''hydratation et réduire la profondeur des rides', 'Può migliorare l''elasticità della pelle, l''idratazione e ridurre la profondità delle rughe', 'clinical_trial', 'PMID:30681787', ARRAY['skin']::TEXT[], 0
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce joint pain and improve mobility in osteoarthritis', 'Peut réduire la douleur articulaire et améliorer la mobilité dans l''arthrose', 'Può ridurre il dolore articolare e migliorare la mobilità nell''osteoartrosi', 'clinical_trial', 'PMID:28786550', ARRAY['joint_health']::TEXT[], 1
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support bone mineral density and reduce bone degradation markers', 'Peut soutenir la densité minérale osseuse et réduire les marqueurs de dégradation osseuse', 'Può supportare la densità minerale ossea e ridurre i marcatori di degradazione ossea', 'observational', NULL, ARRAY['joint_health', 'longevity']::TEXT[], 2
FROM aliments WHERE slug = 'collagen-peptides';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'coenzyme-q10',
  'specialty_compound',
  'Coenzyme Q10 (CoQ10)',
  'Coenzyme Q10 (CoQ10)',
  'Coenzima Q10 (CoQ10)',
  'A vital coenzyme for mitochondrial energy production that naturally declines with age. Exists as ubiquinone or ubiquinol (reduced, more bioavailable form).',
  'Un coenzyme vital pour la production d''énergie mitochondriale qui diminue naturellement avec l''âge. Existe sous forme d''ubiquinone ou d''ubiquinol (forme réduite, plus biodisponible).',
  'Un coenzima vitale per la produzione di energia mitocondriale che diminuisce naturalmente con l''età. Esiste come ubichinone o ubichinolo (forma ridotta, più biodisponibile).',
  100,
  300,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['May interact with blood thinners (warfarin)', 'May lower blood pressure — caution with antihypertensives', 'May interact with chemotherapy drugs', 'Statin users may especially benefit (statins deplete CoQ10)']::TEXT[],
  ARRAY['Peut interagir avec les anticoagulants (warfarine)', 'Peut abaisser la tension artérielle — prudence avec les antihypertenseurs', 'Peut interagir avec les médicaments de chimiothérapie', 'Les utilisateurs de statines peuvent particulièrement en bénéficier (les statines épuisent le CoQ10)']::TEXT[],
  ARRAY['Può interagire con anticoagulanti (warfarin)', 'Può abbassare la pressione sanguigna — cautela con antipertensivi', 'Può interagire con farmaci chemioterapici', 'Gli utilizzatori di statine possono beneficiarne particolarmente (le statine esauriscono il CoQ10)']::TEXT[],
  ARRAY['PMID:28927644', 'PMID:24438470']::TEXT[],
  false,
  19
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports mitochondrial energy production and may reduce fatigue', 'Soutient la production d''énergie mitochondriale et peut réduire la fatigue', 'Supporta la produzione di energia mitocondriale e può ridurre la stanchezza', 'clinical_trial', 'PMID:28927644', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cardiovascular health and healthy blood pressure levels', 'Peut soutenir la santé cardiovasculaire et des niveaux de tension artérielle sains', 'Può supportare la salute cardiovascolare e livelli sani di pressione sanguigna', 'clinical_trial', 'PMID:24438470', ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Potent lipid-soluble antioxidant that may protect cells from oxidative stress', 'Puissant antioxydant liposoluble qui peut protéger les cellules du stress oxydatif', 'Potente antiossidante liposolubile che può proteggere le cellule dallo stress ossidativo', 'observational', NULL, ARRAY['longevity', 'skin']::TEXT[], 2
FROM aliments WHERE slug = 'coenzyme-q10';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'berberine',
  'herb',
  'Berberine',
  'Berbérine',
  'Berberina',
  'A bioactive alkaloid found in several plants (goldenseal, barberry). Researched extensively for blood sugar regulation and metabolic health.',
  'Un alcaloïde bioactif présent dans plusieurs plantes (hydraste, épine-vinette). Largement étudié pour la régulation de la glycémie et la santé métabolique.',
  'Un alcaloide bioattivo presente in diverse piante (idraste, crespino). Ampiamente studiato per la regolazione della glicemia e la salute metabolica.',
  500,
  1500,
  'mg',
  '{morning, evening}',
  true,
  'cure',
  8,
  4,
  'Berberine has potent effects on gut microbiome and liver enzymes. Cycling 8 weeks on / 4 weeks off may help maintain gut flora balance and reduce liver enzyme stress.',
  'La berbérine a des effets puissants sur le microbiome intestinal et les enzymes hépatiques. Un cycle de 8 semaines on / 4 semaines off peut aider à maintenir l''équilibre de la flore intestinale et réduire le stress des enzymes hépatiques.',
  'La berberina ha potenti effetti sul microbioma intestinale e sugli enzimi epatici. Un ciclo di 8 settimane on / 4 settimane off può aiutare a mantenere l''equilibrio della flora intestinale e ridurre lo stress degli enzimi epatici.',
  ARRAY['Pregnancy and breastfeeding (may cause uterine contractions)', 'May interact with diabetes medications (risk of hypoglycemia)', 'May interact with CYP enzyme-metabolized drugs', 'May cause gastrointestinal upset at high doses']::TEXT[],
  ARRAY['Grossesse et allaitement (peut causer des contractions utérines)', 'Peut interagir avec les médicaments pour le diabète (risque d''hypoglycémie)', 'Peut interagir avec les médicaments métabolisés par les enzymes CYP', 'Peut causer des troubles gastro-intestinaux à doses élevées']::TEXT[],
  ARRAY['Gravidanza e allattamento (può causare contrazioni uterine)', 'Può interagire con farmaci per il diabete (rischio di ipoglicemia)', 'Può interagire con farmaci metabolizzati dagli enzimi CYP', 'Può causare disturbi gastrointestinali ad alte dosi']::TEXT[],
  ARRAY['PMID:24753076', 'PMID:32268543']::TEXT[],
  false,
  20
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support healthy blood sugar levels and improve insulin sensitivity', 'Peut soutenir des niveaux de glycémie sains et améliorer la sensibilité à l''insuline', 'Può supportare livelli sani di glicemia e migliorare la sensibilità all''insulina', 'clinical_trial', 'PMID:24753076', ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce LDL cholesterol and triglyceride levels', 'Peut réduire les niveaux de cholestérol LDL et de triglycérides', 'Può ridurre i livelli di colesterolo LDL e trigliceridi', 'clinical_trial', 'PMID:32268543', ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support healthy gut microbiome composition', 'Peut soutenir une composition saine du microbiome intestinal', 'Può supportare una composizione sana del microbioma intestinale', 'observational', NULL, ARRAY['digestion']::TEXT[], 2
FROM aliments WHERE slug = 'berberine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'melatonin',
  'specialty_compound',
  'Melatonin',
  'Mélatonine',
  'Melatonina',
  'A hormone naturally produced by the pineal gland that regulates the sleep-wake cycle. Low doses are effective for sleep onset and jet lag.',
  'Une hormone naturellement produite par la glande pinéale qui régule le cycle veille-sommeil. De faibles doses sont efficaces pour l''endormissement et le décalage horaire.',
  'Un ormone prodotto naturalmente dalla ghiandola pineale che regola il ciclo sonno-veglia. Basse dosi sono efficaci per l''addormentamento e il jet lag.',
  0.5,
  5,
  'mg',
  '{bedtime}',
  false,
  'cure',
  4,
  2,
  'Exogenous melatonin may suppress natural production with prolonged use. Short-term use (up to 4 weeks) is generally recommended, with breaks to allow the body to recalibrate its own production.',
  'La mélatonine exogène peut supprimer la production naturelle avec un usage prolongé. Un usage à court terme (jusqu''à 4 semaines) est généralement recommandé, avec des pauses pour permettre au corps de recalibrer sa propre production.',
  'La melatonina esogena può sopprimere la produzione naturale con uso prolungato. L''uso a breve termine (fino a 4 settimane) è generalmente raccomandato, con pause per permettere al corpo di ricalibrare la propria produzione.',
  ARRAY['Autoimmune disorders', 'May interact with blood thinners, diabetes medications, and immunosuppressants', 'May cause morning grogginess at high doses', 'Not recommended for children without physician guidance']::TEXT[],
  ARRAY['Troubles auto-immuns', 'Peut interagir avec les anticoagulants, les médicaments pour le diabète et les immunosuppresseurs', 'Peut causer une somnolence matinale à doses élevées', 'Non recommandé pour les enfants sans avis médical']::TEXT[],
  ARRAY['Disturbi autoimmuni', 'Può interagire con anticoagulanti, farmaci per il diabete e immunosoppressori', 'Può causare sonnolenza mattutina ad alte dosi', 'Non raccomandato per bambini senza guida medica']::TEXT[],
  ARRAY['PMID:24587564', 'PMID:28460563']::TEXT[],
  true,
  21
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Reduces time to fall asleep and may improve overall sleep quality', 'Réduit le temps d''endormissement et peut améliorer la qualité globale du sommeil', 'Riduce il tempo di addormentamento e può migliorare la qualità complessiva del sonno', 'clinical_trial', 'PMID:24587564', ARRAY['sleep']::TEXT[], 0
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Effective for managing jet lag and shift-work sleep disruption', 'Efficace pour gérer le décalage horaire et les troubles du sommeil liés au travail posté', 'Efficace per gestire il jet lag e i disturbi del sonno da lavoro a turni', 'clinical_trial', 'PMID:28460563', ARRAY['sleep']::TEXT[], 1
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May have antioxidant properties and support immune function', 'Peut avoir des propriétés antioxydantes et soutenir la fonction immunitaire', 'Può avere proprietà antiossidanti e supportare la funzione immunitaria', 'observational', NULL, ARRAY['immunity', 'longevity']::TEXT[], 2
FROM aliments WHERE slug = 'melatonin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ginkgo-biloba',
  'herb',
  'Ginkgo Biloba',
  'Ginkgo Biloba',
  'Ginkgo Biloba',
  'One of the oldest living tree species, used for millennia in traditional medicine. Standardized leaf extract supports cerebral blood flow and cognitive function.',
  'L''une des plus anciennes espèces d''arbres vivants, utilisée depuis des millénaires en médecine traditionnelle. L''extrait de feuille standardisé soutient le flux sanguin cérébral et la fonction cognitive.',
  'Una delle più antiche specie di alberi viventi, usata da millenni nella medicina tradizionale. L''estratto di foglia standardizzato supporta il flusso sanguigno cerebrale e la funzione cognitiva.',
  120,
  240,
  'mg',
  '{morning}',
  true,
  'cure',
  12,
  4,
  'Cognitive benefits of ginkgo require sustained use (8-12 weeks to manifest). Cycling 12 weeks on / 4 weeks off is recommended to avoid long-term tolerance effects.',
  'Les bénéfices cognitifs du ginkgo nécessitent un usage soutenu (8-12 semaines pour se manifester). Un cycle de 12 semaines on / 4 semaines off est recommandé pour éviter les effets de tolérance à long terme.',
  'I benefici cognitivi del ginkgo richiedono un uso prolungato (8-12 settimane per manifestarsi). Un ciclo di 12 settimane on / 4 settimane off è raccomandato per evitare effetti di tolleranza a lungo termine.',
  ARRAY['May interact with blood thinners (increased bleeding risk)', 'Discontinue at least 2 weeks before surgery', 'May interact with antidepressants (MAOIs)', 'Seizure disorders']::TEXT[],
  ARRAY['Peut interagir avec les anticoagulants (risque accru de saignement)', 'Arrêter au moins 2 semaines avant une chirurgie', 'Peut interagir avec les antidépresseurs (IMAO)', 'Troubles épileptiques']::TEXT[],
  ARRAY['Può interagire con anticoagulanti (rischio aumentato di sanguinamento)', 'Interrompere almeno 2 settimane prima di un intervento', 'Può interagire con antidepressivi (IMAO)', 'Disturbi convulsivi']::TEXT[],
  ARRAY['PMID:26268332', 'PMID:29150202']::TEXT[],
  false,
  22
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve cerebral blood flow and support cognitive function in older adults', 'Peut améliorer le flux sanguin cérébral et soutenir la fonction cognitive chez les personnes âgées', 'Può migliorare il flusso sanguigno cerebrale e supportare la funzione cognitiva negli anziani', 'clinical_trial', 'PMID:26268332', ARRAY['focus']::TEXT[], 0
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support working memory and attention in healthy adults', 'Peut soutenir la mémoire de travail et l''attention chez les adultes en bonne santé', 'Può supportare la memoria di lavoro e l''attenzione negli adulti sani', 'clinical_trial', 'PMID:29150202', ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Rich in flavonoid glycosides with antioxidant and neuroprotective properties', 'Riche en glycosides flavonoïdes aux propriétés antioxydantes et neuroprotectrices', 'Ricco di glicosidi flavonoidi con proprietà antiossidanti e neuroprotettive', 'observational', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'elderberry',
  'herb',
  'Elderberry',
  'Sureau',
  'Sambuco',
  'A dark purple berry rich in anthocyanins and vitamin C, traditionally used for immune support during cold and flu season.',
  'Une baie violet foncé riche en anthocyanes et en vitamine C, traditionnellement utilisée pour le soutien immunitaire pendant la saison des rhumes et de la grippe.',
  'Una bacca viola scuro ricca di antociani e vitamina C, tradizionalmente usata per il supporto immunitario durante la stagione di raffreddori e influenza.',
  500,
  1000,
  'mg',
  '{morning}',
  true,
  'cure',
  12,
  4,
  'Best used seasonally during cold and flu season. Prolonged immune stimulation may not be desirable year-round, especially for those with autoimmune tendencies.',
  'Meilleur usage saisonnier pendant la saison des rhumes et de la grippe. Une stimulation immunitaire prolongée peut ne pas être souhaitable toute l''année, surtout pour ceux ayant des tendances auto-immunes.',
  'Miglior uso stagionale durante la stagione di raffreddori e influenza. Una stimolazione immunitaria prolungata potrebbe non essere desiderabile tutto l''anno, specialmente per chi ha tendenze autoimmuni.',
  ARRAY['Raw or unripe elderberries are toxic (must be cooked or processed)', 'Autoimmune conditions (may overstimulate immune system)', 'May interact with immunosuppressants and diabetes medications']::TEXT[],
  ARRAY['Les baies de sureau crues ou non mûres sont toxiques (doivent être cuites ou transformées)', 'Maladies auto-immunes (peut sur-stimuler le système immunitaire)', 'Peut interagir avec les immunosuppresseurs et les médicaments pour le diabète']::TEXT[],
  ARRAY['Le bacche di sambuco crude o acerbe sono tossiche (devono essere cotte o lavorate)', 'Condizioni autoimmuni (può sovrastimolare il sistema immunitario)', 'Può interagire con immunosoppressori e farmaci per il diabete']::TEXT[],
  ARRAY['PMID:30670267', 'PMID:15080016']::TEXT[],
  false,
  23
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce the severity and duration of cold and flu symptoms', 'Peut réduire la sévérité et la durée des symptômes du rhume et de la grippe', 'Può ridurre la gravità e la durata dei sintomi di raffreddore e influenza', 'clinical_trial', 'PMID:30670267', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Rich in anthocyanins with potent antioxidant activity', 'Riche en anthocyanes avec une puissante activité antioxydante', 'Ricco di antociani con potente attività antiossidante', 'clinical_trial', 'PMID:15080016', ARRAY['immunity', 'longevity']::TEXT[], 1
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used as a natural source of vitamin C for immune resilience', 'Traditionnellement utilisé comme source naturelle de vitamine C pour la résilience immunitaire', 'Tradizionalmente usato come fonte naturale di vitamina C per la resilienza immunitaria', 'traditional', NULL, ARRAY['immunity']::TEXT[], 2
FROM aliments WHERE slug = 'elderberry';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'milk-thistle',
  'herb',
  'Milk Thistle (Silymarin)',
  'Chardon-Marie (Silymarine)',
  'Cardo Mariano (Silimarina)',
  'A flowering plant whose seeds contain silymarin, a flavonoid complex extensively studied for liver protection and detoxification support.',
  'Une plante à fleurs dont les graines contiennent la silymarine, un complexe flavonoïde largement étudié pour la protection du foie et le soutien à la détoxification.',
  'Una pianta da fiore i cui semi contengono silimarina, un complesso flavonoide ampiamente studiato per la protezione del fegato e il supporto alla detossificazione.',
  200,
  400,
  'mg',
  '{morning, evening}',
  true,
  'cure',
  8,
  4,
  'Liver-protective benefits are often sought during periods of increased hepatic stress. Cycling 8 weeks on / 4 weeks off allows periodic liver support without continuous supplementation.',
  'Les bénéfices hépatoprotecteurs sont souvent recherchés pendant les périodes de stress hépatique accru. Un cycle de 8 semaines on / 4 semaines off permet un soutien hépatique périodique sans supplémentation continue.',
  'I benefici epatoprotettivi sono spesso ricercati durante periodi di maggiore stress epatico. Un ciclo di 8 settimane on / 4 settimane off consente un supporto epatico periodico senza supplementazione continua.',
  ARRAY['Allergy to plants in the Asteraceae family (ragweed, daisies)', 'May interact with medications metabolized by CYP enzymes', 'Hormone-sensitive conditions (weak estrogenic activity)', 'May lower blood sugar — caution with diabetes medications']::TEXT[],
  ARRAY['Allergie aux plantes de la famille des Astéracées (ambroisie, marguerites)', 'Peut interagir avec les médicaments métabolisés par les enzymes CYP', 'Conditions hormono-sensibles (faible activité estrogénique)', 'Peut abaisser la glycémie — prudence avec les médicaments pour le diabète']::TEXT[],
  ARRAY['Allergia alle piante della famiglia delle Asteraceae (ambrosia, margherite)', 'Può interagire con farmaci metabolizzati dagli enzimi CYP', 'Condizioni ormono-sensibili (debole attività estrogenica)', 'Può abbassare la glicemia — cautela con farmaci per il diabete']::TEXT[],
  ARRAY['PMID:27517806', 'PMID:28698043']::TEXT[],
  false,
  24
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support liver health and protect hepatocytes from toxic damage', 'Peut soutenir la santé du foie et protéger les hépatocytes des dommages toxiques', 'Può supportare la salute del fegato e proteggere gli epatociti dai danni tossici', 'clinical_trial', 'PMID:27517806', ARRAY['digestion', 'longevity']::TEXT[], 0
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support the body''s natural detoxification pathways', 'Peut soutenir les voies de détoxification naturelles du corps', 'Può supportare le vie di detossificazione naturali del corpo', 'clinical_trial', 'PMID:28698043', ARRAY['digestion']::TEXT[], 1
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Antioxidant properties that may help protect cells from oxidative stress', 'Propriétés antioxydantes qui peuvent aider à protéger les cellules du stress oxydatif', 'Proprietà antiossidanti che possono aiutare a proteggere le cellule dallo stress ossidativo', 'observational', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'milk-thistle';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'nac',
  'amino_acid',
  'NAC (N-Acetyl Cysteine)',
  'NAC (N-Acétyl Cystéine)',
  'NAC (N-Acetil Cisteina)',
  'A precursor to glutathione, the body''s master antioxidant. Supports detoxification, respiratory health, and has emerging mental health applications.',
  'Un précurseur du glutathion, le maître antioxydant du corps. Soutient la détoxification, la santé respiratoire et présente des applications émergentes en santé mentale.',
  'Un precursore del glutatione, il principale antiossidante del corpo. Supporta la detossificazione, la salute respiratoria e presenta applicazioni emergenti nella salute mentale.',
  600,
  1800,
  'mg',
  '{morning}',
  false,
  'cure',
  8,
  4,
  'NAC''s powerful influence on glutathione metabolism and redox balance warrants periodic cycling. 8 weeks on / 4 weeks off helps prevent potential over-reduction of oxidative signaling needed for normal cell function.',
  'L''influence puissante de la NAC sur le métabolisme du glutathion et l''équilibre redox justifie un cyclage périodique. 8 semaines on / 4 semaines off aide à prévenir une sur-réduction potentielle de la signalisation oxydative nécessaire au fonctionnement cellulaire normal.',
  'La potente influenza della NAC sul metabolismo del glutatione e sull''equilibrio redox giustifica un ciclo periodico. 8 settimane on / 4 settimane off aiuta a prevenire una potenziale sovra-riduzione della segnalazione ossidativa necessaria per la normale funzione cellulare.',
  ARRAY['Asthma (may cause bronchospasm in some individuals)', 'May interact with nitroglycerin and blood pressure medications', 'May increase bleeding risk with anticoagulants', 'Take on empty stomach for best absorption']::TEXT[],
  ARRAY['Asthme (peut causer un bronchospasme chez certains individus)', 'Peut interagir avec la nitroglycérine et les médicaments pour la tension artérielle', 'Peut augmenter le risque de saignement avec les anticoagulants', 'Prendre à jeun pour une meilleure absorption']::TEXT[],
  ARRAY['Asma (può causare broncospasmo in alcuni individui)', 'Può interagire con nitroglicerina e farmaci per la pressione sanguigna', 'Può aumentare il rischio di sanguinamento con anticoagulanti', 'Assumere a stomaco vuoto per un migliore assorbimento']::TEXT[],
  ARRAY['PMID:24019151', 'PMID:30170731']::TEXT[],
  false,
  25
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Replenishes glutathione, the body''s primary intracellular antioxidant', 'Reconstitue le glutathion, le principal antioxydant intracellulaire du corps', 'Reintegra il glutatione, il principale antiossidante intracellulare del corpo', 'clinical_trial', 'PMID:24019151', ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'nac';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support respiratory health by reducing mucus viscosity', 'Peut soutenir la santé respiratoire en réduisant la viscosité du mucus', 'Può supportare la salute respiratoria riducendo la viscosità del muco', 'clinical_trial', 'PMID:30170731', ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'nac';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support liver detoxification and protect against acetaminophen-induced liver damage', 'Peut soutenir la détoxification hépatique et protéger contre les dommages hépatiques induits par le paracétamol', 'Può supportare la detossificazione epatica e proteggere dai danni epatici indotti dal paracetamolo', 'clinical_trial', NULL, ARRAY['digestion', 'longevity']::TEXT[], 2
FROM aliments WHERE slug = 'nac';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'black-seed-oil',
  'functional_food',
  'Black Seed Oil (Nigella Sativa)',
  'Huile de Nigelle (Nigella Sativa)',
  'Olio di Nigella (Nigella Sativa)',
  'A traditional remedy from the seeds of Nigella sativa, rich in thymoquinone. Used across cultures for immune support, inflammation, and metabolic health.',
  'Un remède traditionnel issu des graines de Nigella sativa, riche en thymoquinone. Utilisé à travers les cultures pour le soutien immunitaire, l''inflammation et la santé métabolique.',
  'Un rimedio tradizionale dai semi di Nigella sativa, ricco di timochinone. Usato in diverse culture per il supporto immunitario, l''infiammazione e la salute metabolica.',
  1,
  3,
  'g',
  '{morning}',
  true,
  'cure',
  8,
  4,
  'Thymoquinone''s potent bioactive effects benefit from periodic breaks. Cycling 8 weeks on / 4 weeks off is a common traditional recommendation to maintain responsiveness.',
  'Les effets bioactifs puissants de la thymoquinone bénéficient de pauses périodiques. Un cycle de 8 semaines on / 4 semaines off est une recommandation traditionnelle courante pour maintenir la réactivité.',
  'I potenti effetti bioattivi del timochinone beneficiano di pause periodiche. Un ciclo di 8 settimane on / 4 settimane off è una raccomandazione tradizionale comune per mantenere la reattività.',
  ARRAY['Pregnancy (may stimulate uterine contractions)', 'May interact with blood thinners and blood pressure medications', 'May interact with diabetes medications (risk of hypoglycemia)', 'May slow blood clotting — discontinue before surgery']::TEXT[],
  ARRAY['Grossesse (peut stimuler les contractions utérines)', 'Peut interagir avec les anticoagulants et les médicaments pour la tension artérielle', 'Peut interagir avec les médicaments pour le diabète (risque d''hypoglycémie)', 'Peut ralentir la coagulation — arrêter avant une chirurgie']::TEXT[],
  ARRAY['Gravidanza (può stimolare le contrazioni uterine)', 'Può interagire con anticoagulanti e farmaci per la pressione sanguigna', 'Può interagire con farmaci per il diabete (rischio di ipoglicemia)', 'Può rallentare la coagulazione — interrompere prima di un intervento']::TEXT[],
  ARRAY['PMID:27613078', 'PMID:28411446']::TEXT[],
  false,
  26
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Thymoquinone may support healthy inflammatory response and reduce oxidative stress', 'La thymoquinone peut soutenir une réponse inflammatoire saine et réduire le stress oxydatif', 'Il timochinone può supportare una risposta infiammatoria sana e ridurre lo stress ossidativo', 'clinical_trial', 'PMID:27613078', ARRAY['immunity', 'recovery']::TEXT[], 0
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support healthy blood sugar and cholesterol levels', 'Peut soutenir des niveaux sains de glycémie et de cholestérol', 'Può supportare livelli sani di glicemia e colesterolo', 'clinical_trial', 'PMID:28411446', ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used across many cultures for immune resilience and general vitality', 'Traditionnellement utilisé dans de nombreuses cultures pour la résilience immunitaire et la vitalité générale', 'Tradizionalmente usato in molte culture per la resilienza immunitaria e la vitalità generale', 'traditional', NULL, ARRAY['immunity', 'energy']::TEXT[], 2
FROM aliments WHERE slug = 'black-seed-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'shilajit',
  'specialty_compound',
  'Shilajit',
  'Shilajit',
  'Shilajit',
  'A mineral-rich resin found in Himalayan rock formations, formed over centuries from decomposed plant matter. Contains fulvic acid and over 80 trace minerals.',
  'Une résine riche en minéraux trouvée dans les formations rocheuses himalayennes, formée au fil des siècles à partir de matière végétale décomposée. Contient de l''acide fulvique et plus de 80 oligo-éléments.',
  'Una resina ricca di minerali trovata nelle formazioni rocciose himalayane, formatasi nel corso dei secoli dalla materia vegetale decomposta. Contiene acido fulvico e oltre 80 oligoelementi.',
  250,
  500,
  'mg',
  '{morning}',
  false,
  'cure',
  8,
  4,
  'Shilajit''s mineral and fulvic acid content may accumulate with extended use. Cycling 8 weeks on / 4 weeks off helps prevent mineral overload and maintains the body''s responsiveness.',
  'La teneur en minéraux et en acide fulvique du shilajit peut s''accumuler avec un usage prolongé. Un cycle de 8 semaines on / 4 semaines off aide à prévenir la surcharge minérale et maintient la réactivité du corps.',
  'Il contenuto di minerali e acido fulvico dello shilajit può accumularsi con l''uso prolungato. Un ciclo di 8 settimane on / 4 settimane off aiuta a prevenire il sovraccarico minerale e mantiene la reattività del corpo.',
  ARRAY['Gout or high uric acid levels', 'Hemochromatosis (contains iron)', 'Ensure purified form to avoid heavy metal contamination', 'Pregnancy and breastfeeding']::TEXT[],
  ARRAY['Goutte ou taux élevés d''acide urique', 'Hémochromatose (contient du fer)', 'Assurer une forme purifiée pour éviter la contamination par les métaux lourds', 'Grossesse et allaitement']::TEXT[],
  ARRAY['Gotta o livelli elevati di acido urico', 'Emocromatosi (contiene ferro)', 'Assicurare una forma purificata per evitare contaminazione da metalli pesanti', 'Gravidanza e allattamento']::TEXT[],
  ARRAY['PMID:22482077', 'PMID:31559942']::TEXT[],
  false,
  27
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May enhance mitochondrial function and cellular energy production via fulvic acid', 'Peut améliorer la fonction mitochondriale et la production d''énergie cellulaire via l''acide fulvique', 'Può migliorare la funzione mitocondriale e la produzione di energia cellulare tramite l''acido fulvico', 'observational', 'PMID:22482077', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support testosterone levels and reproductive health in men', 'Peut soutenir les niveaux de testostérone et la santé reproductive chez les hommes', 'Può supportare i livelli di testosterone e la salute riproduttiva negli uomini', 'clinical_trial', 'PMID:31559942', ARRAY['energy', 'recovery']::TEXT[], 1
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used in Ayurvedic medicine for vitality and longevity', 'Traditionnellement utilisé en médecine ayurvédique pour la vitalité et la longévité', 'Tradizionalmente usato nella medicina ayurvedica per la vitalità e la longevità', 'traditional', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'shilajit';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'boswellia',
  'herb',
  'Boswellia (Indian Frankincense)',
  'Boswellia (Encens Indien)',
  'Boswellia (Incenso Indiano)',
  'A resin extract from the Boswellia serrata tree containing boswellic acids, researched for joint health and inflammatory conditions. A traditional Ayurvedic remedy.',
  'Un extrait de résine de l''arbre Boswellia serrata contenant des acides boswelliques, étudié pour la santé articulaire et les conditions inflammatoires. Un remède ayurvédique traditionnel.',
  'Un estratto di resina dall''albero Boswellia serrata contenente acidi boswellici, studiato per la salute articolare e le condizioni infiammatorie. Un rimedio ayurvedico tradizionale.',
  300,
  500,
  'mg',
  '{morning, evening}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['May interact with anti-inflammatory medications (NSAIDs, corticosteroids)', 'Pregnancy and breastfeeding', 'May interact with immunosuppressants', 'Gastrointestinal sensitivity at high doses']::TEXT[],
  ARRAY['Peut interagir avec les médicaments anti-inflammatoires (AINS, corticostéroïdes)', 'Grossesse et allaitement', 'Peut interagir avec les immunosuppresseurs', 'Sensibilité gastro-intestinale à doses élevées']::TEXT[],
  ARRAY['Può interagire con farmaci antinfiammatori (FANS, corticosteroidi)', 'Gravidanza e allattamento', 'Può interagire con immunosoppressori', 'Sensibilità gastrointestinale ad alte dosi']::TEXT[],
  ARRAY['PMID:30838435', 'PMID:24946862']::TEXT[],
  false,
  28
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce joint pain and improve physical function in osteoarthritis', 'Peut réduire la douleur articulaire et améliorer la fonction physique dans l''arthrose', 'Può ridurre il dolore articolare e migliorare la funzione fisica nell''osteoartrosi', 'clinical_trial', 'PMID:30838435', ARRAY['joint_health']::TEXT[], 0
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May inhibit 5-lipoxygenase, reducing leukotriene-mediated inflammation', 'Peut inhiber la 5-lipoxygénase, réduisant l''inflammation médiée par les leucotriènes', 'Può inibire la 5-lipossigenasi, riducendo l''infiammazione mediata dai leucotrieni', 'clinical_trial', 'PMID:24946862', ARRAY['recovery', 'joint_health']::TEXT[], 1
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used in Ayurvedic medicine for inflammatory conditions and respiratory health', 'Traditionnellement utilisé en médecine ayurvédique pour les conditions inflammatoires et la santé respiratoire', 'Tradizionalmente usata nella medicina ayurvedica per condizioni infiammatorie e salute respiratoria', 'traditional', NULL, ARRAY['joint_health', 'immunity']::TEXT[], 2
FROM aliments WHERE slug = 'boswellia';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'quercetin',
  'specialty_compound',
  'Quercetin',
  'Quercétine',
  'Quercetina',
  'A flavonoid antioxidant found in many fruits and vegetables (onions, apples, berries). Researched for anti-inflammatory, anti-histamine, and senolytic properties.',
  'Un antioxydant flavonoïde présent dans de nombreux fruits et légumes (oignons, pommes, baies). Étudié pour ses propriétés anti-inflammatoires, antihistaminiques et sénolytiques.',
  'Un antiossidante flavonoide presente in molti frutti e verdure (cipolle, mele, bacche). Studiato per le sue proprietà antinfiammatorie, antistaminiche e senolitiche.',
  500,
  1000,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['May interact with antibiotics (quinolones)', 'May interact with blood thinners', 'May interact with cyclosporine', 'Kidney disease (high doses)']::TEXT[],
  ARRAY['Peut interagir avec les antibiotiques (quinolones)', 'Peut interagir avec les anticoagulants', 'Peut interagir avec la cyclosporine', 'Maladie rénale (doses élevées)']::TEXT[],
  ARRAY['Può interagire con antibiotici (chinoloni)', 'Può interagire con anticoagulanti', 'Può interagire con ciclosporina', 'Malattia renale (dosi elevate)']::TEXT[],
  ARRAY['PMID:27187333', 'PMID:31159270']::TEXT[],
  false,
  29
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support healthy inflammatory response and reduce markers of oxidative stress', 'Peut soutenir une réponse inflammatoire saine et réduire les marqueurs de stress oxydatif', 'Può supportare una risposta infiammatoria sana e ridurre i marcatori di stress ossidativo', 'clinical_trial', 'PMID:27187333', ARRAY['recovery', 'longevity']::TEXT[], 0
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May act as a natural antihistamine and support respiratory comfort during allergy season', 'Peut agir comme antihistaminique naturel et soutenir le confort respiratoire pendant la saison des allergies', 'Può agire come antistaminico naturale e supportare il comfort respiratorio durante la stagione delle allergie', 'clinical_trial', 'PMID:31159270', ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Emerging research suggests senolytic properties that may support healthy aging', 'La recherche émergente suggère des propriétés sénolytiques qui peuvent soutenir un vieillissement sain', 'La ricerca emergente suggerisce proprietà senolitiche che possono supportare un invecchiamento sano', 'observational', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'quercetin';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-b12',
  'vitamin',
  'Vitamin B12',
  'Vitamine B12',
  'Vitamina B12',
  'Essential for nerve function, red blood cell formation, and energy metabolism. Common deficiency in vegetarians.',
  'Essentielle pour la fonction nerveuse, la formation des globules rouges et le métabolisme énergétique. Carence fréquente chez les végétariens.',
  'Essenziale per la funzione nervosa, la formazione dei globuli rossi e il metabolismo energetico. Carenza comune nei vegetariani.',
  500,
  2000,
  'mcg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Leber''s disease', 'Cobalt or cobalamin sensitivity']::TEXT[],
  ARRAY['Maladie de Leber', 'Sensibilité au cobalt ou à la cobalamine']::TEXT[],
  ARRAY['Malattia di Leber', 'Sensibilità al cobalto o alla cobalamina']::TEXT[],
  ARRAY['PMID:27571747', 'PMID:28660890']::TEXT[],
  true,
  30
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports energy production and reduces fatigue', 'Soutient la production d''énergie et réduit la fatigue', 'Supporta la produzione di energia e riduce la fatica', 'clinical_trial', 'PMID:27571747', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Essential for nervous system health and cognitive function', 'Essentiel pour la santé du système nerveux et la fonction cognitive', 'Essenziale per la salute del sistema nervoso e la funzione cognitiva', 'clinical_trial', NULL, ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports healthy red blood cell formation', 'Soutient la formation saine des globules rouges', 'Supporta la formazione sana dei globuli rossi', 'clinical_trial', NULL, ARRAY['energy']::TEXT[], 2
FROM aliments WHERE slug = 'vitamin-b12';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'vitamin-k2',
  'vitamin',
  'Vitamin K2 (MK-7)',
  'Vitamine K2 (MK-7)',
  'Vitamina K2 (MK-7)',
  'Directs calcium to bones and teeth while keeping it out of arteries. Best paired with vitamin D3.',
  'Dirige le calcium vers les os et les dents tout en le gardant hors des artères. Meilleur en association avec la vitamine D3.',
  'Dirige il calcio verso ossa e denti tenendolo lontano dalle arterie. Migliore in associazione con la vitamina D3.',
  100,
  200,
  'mcg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Warfarin or anticoagulant use — consult doctor', 'Blood clotting disorders']::TEXT[],
  ARRAY['Utilisation de warfarine ou d''anticoagulants — consulter un médecin', 'Troubles de la coagulation']::TEXT[],
  ARRAY['Uso di warfarin o anticoagulanti — consultare il medico', 'Disturbi della coagulazione']::TEXT[],
  ARRAY['PMID:25516361', 'PMID:29480918']::TEXT[],
  false,
  31
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports calcium metabolism and bone mineral density', 'Soutient le métabolisme du calcium et la densité minérale osseuse', 'Supporta il metabolismo del calcio e la densità minerale ossea', 'clinical_trial', 'PMID:25516361', ARRAY['joint_health']::TEXT[], 0
FROM aliments WHERE slug = 'vitamin-k2';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cardiovascular health by reducing arterial calcification', 'Peut soutenir la santé cardiovasculaire en réduisant la calcification artérielle', 'Può supportare la salute cardiovascolare riducendo la calcificazione arteriosa', 'observational', NULL, ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'vitamin-k2';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'folate-5-mthf',
  'vitamin',
  'Folate (5-MTHF)',
  'Folate (5-MTHF)',
  'Folato (5-MTHF)',
  'The bioactive form of vitamin B9. Critical for DNA synthesis, methylation, and prenatal health.',
  'La forme bioactive de la vitamine B9. Critique pour la synthèse de l''ADN, la méthylation et la santé prénatale.',
  'La forma bioattiva della vitamina B9. Critica per la sintesi del DNA, la metilazione e la salute prenatale.',
  400,
  800,
  'mcg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['May mask vitamin B12 deficiency', 'Seizure medication interactions']::TEXT[],
  ARRAY['Peut masquer une carence en vitamine B12', 'Interactions avec les médicaments antiépileptiques']::TEXT[],
  ARRAY['Può mascherare una carenza di vitamina B12', 'Interazioni con farmaci antiepilettici']::TEXT[],
  ARRAY['PMID:26024497']::TEXT[],
  false,
  32
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports healthy DNA synthesis and cell division', 'Soutient la synthèse saine de l''ADN et la division cellulaire', 'Supporta la sintesi sana del DNA e la divisione cellulare', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'folate-5-mthf';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Essential for proper methylation and homocysteine metabolism', 'Essentiel pour la méthylation et le métabolisme de l''homocystéine', 'Essenziale per la metilazione e il metabolismo dell''omocisteina', 'clinical_trial', NULL, ARRAY['energy']::TEXT[], 1
FROM aliments WHERE slug = 'folate-5-mthf';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'selenium',
  'mineral',
  'Selenium',
  'Sélénium',
  'Selenio',
  'A trace mineral essential for thyroid function, antioxidant defense, and immune support.',
  'Un oligoélément essentiel pour la fonction thyroïdienne, la défense antioxydante et le soutien immunitaire.',
  'Un oligoelemento essenziale per la funzione tiroidea, la difesa antiossidante e il supporto immunitario.',
  50,
  200,
  'mcg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Do not exceed 400mcg daily — toxicity risk', 'Hypothyroidism — consult doctor', 'May interact with statins']::TEXT[],
  ARRAY['Ne pas dépasser 400mcg par jour — risque de toxicité', 'Hypothyroïdie — consulter un médecin', 'Peut interagir avec les statines']::TEXT[],
  ARRAY['Non superare 400mcg al giorno — rischio di tossicità', 'Ipotiroidismo — consultare il medico', 'Può interagire con le statine']::TEXT[],
  ARRAY['PMID:22381456']::TEXT[],
  false,
  33
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports thyroid hormone metabolism and function', 'Soutient le métabolisme et la fonction des hormones thyroïdiennes', 'Supporta il metabolismo e la funzione degli ormoni tiroidei', 'clinical_trial', NULL, ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'selenium';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Provides antioxidant protection via glutathione peroxidase', 'Fournit une protection antioxydante via la glutathion peroxydase', 'Fornisce protezione antiossidante tramite la glutatione perossidasi', 'clinical_trial', NULL, ARRAY['immunity', 'longevity']::TEXT[], 1
FROM aliments WHERE slug = 'selenium';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'potassium-citrate',
  'mineral',
  'Potassium Citrate',
  'Citrate de Potassium',
  'Citrato di Potassio',
  'An essential electrolyte for muscle function, nerve signaling, and blood pressure regulation.',
  'Un électrolyte essentiel pour la fonction musculaire, la signalisation nerveuse et la régulation de la pression artérielle.',
  'Un elettrolita essenziale per la funzione muscolare, la segnalazione nervosa e la regolazione della pressione sanguigna.',
  200,
  500,
  'mg',
  '{morning, evening}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Kidney disease', 'ACE inhibitors or potassium-sparing diuretics', 'Hyperkalemia']::TEXT[],
  ARRAY['Maladie rénale', 'Inhibiteurs de l''ECA ou diurétiques épargneurs de potassium', 'Hyperkaliémie']::TEXT[],
  ARRAY['Malattia renale', 'ACE inibitori o diuretici risparmiatori di potassio', 'Iperkaliemia']::TEXT[],
  ARRAY['PMID:23558164']::TEXT[],
  false,
  34
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports healthy blood pressure levels', 'Soutient des niveaux de pression artérielle sains', 'Supporta livelli sani di pressione sanguigna', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'potassium-citrate';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports proper muscle contraction and recovery', 'Soutient la contraction musculaire et la récupération', 'Supporta la contrazione muscolare e il recupero', 'observational', NULL, ARRAY['recovery']::TEXT[], 1
FROM aliments WHERE slug = 'potassium-citrate';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'ginger',
  'spice',
  'Ginger Extract',
  'Extrait de Gingembre',
  'Estratto di Zenzero',
  'A warming spice with powerful anti-inflammatory and digestive benefits, used for millennia in traditional medicine.',
  'Une épice réchauffante aux puissants bienfaits anti-inflammatoires et digestifs, utilisée depuis des millénaires en médecine traditionnelle.',
  'Una spezia riscaldante con potenti benefici antinfiammatori e digestivi, usata da millenni nella medicina tradizionale.',
  250,
  1000,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Blood thinning medications', 'Gallstones', 'May lower blood sugar — diabetics monitor closely']::TEXT[],
  ARRAY['Médicaments anticoagulants', 'Calculs biliaires', 'Peut abaisser la glycémie — diabétiques surveiller de près']::TEXT[],
  ARRAY['Farmaci anticoagulanti', 'Calcoli biliari', 'Può abbassare la glicemia — i diabetici devono monitorare attentamente']::TEXT[],
  ARRAY['PMID:25230520', 'PMID:30680163']::TEXT[],
  true,
  35
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce nausea and support digestive comfort', 'Peut réduire les nausées et favoriser le confort digestif', 'Può ridurre la nausea e favorire il comfort digestivo', 'clinical_trial', 'PMID:25230520', ARRAY['digestion']::TEXT[], 0
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Has been associated with reduced muscle soreness after exercise', 'A été associé à une réduction des douleurs musculaires après l''exercice', 'È stato associato a una riduzione dei dolori muscolari dopo l''esercizio', 'clinical_trial', NULL, ARRAY['recovery']::TEXT[], 1
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support joint comfort through anti-inflammatory pathways', 'Peut favoriser le confort articulaire par des voies anti-inflammatoires', 'Può favorire il comfort articolare attraverso vie antinfiammatorie', 'observational', NULL, ARRAY['joint_health']::TEXT[], 2
FROM aliments WHERE slug = 'ginger';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cinnamon-ceylon',
  'spice',
  'Ceylon Cinnamon',
  'Cannelle de Ceylan',
  'Cannella di Ceylon',
  'The ''true'' cinnamon variety with blood sugar balancing properties and lower coumarin content than cassia.',
  'La variété de cannelle ''vraie'' aux propriétés d''équilibrage de la glycémie et à plus faible teneur en coumarine que la cassia.',
  'La varietà di cannella ''vera'' con proprietà di bilanciamento della glicemia e minor contenuto di cumarina rispetto alla cassia.',
  500,
  2000,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Diabetes medications — may lower blood sugar further', 'Liver disease', 'Pregnancy in high doses']::TEXT[],
  ARRAY['Médicaments contre le diabète — peut abaisser davantage la glycémie', 'Maladie hépatique', 'Grossesse à doses élevées']::TEXT[],
  ARRAY['Farmaci per il diabete — può abbassare ulteriormente la glicemia', 'Malattia epatica', 'Gravidanza a dosi elevate']::TEXT[],
  ARRAY['PMID:24019277']::TEXT[],
  false,
  36
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support healthy blood sugar levels', 'Peut favoriser des niveaux de glycémie sains', 'Può favorire livelli sani di glicemia', 'clinical_trial', NULL, ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'cinnamon-ceylon';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Provides antioxidant and anti-inflammatory support', 'Fournit un soutien antioxydant et anti-inflammatoire', 'Fornisce supporto antiossidante e antinfiammatorio', 'observational', NULL, ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'cinnamon-ceylon';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'green-tea-egcg',
  'functional_food',
  'Green Tea Extract (EGCG)',
  'Extrait de Thé Vert (EGCG)',
  'Estratto di Tè Verde (EGCG)',
  'Concentrated catechins from green tea, particularly EGCG — a potent antioxidant with metabolic and cognitive benefits.',
  'Catéchines concentrées du thé vert, en particulier l''EGCG — un puissant antioxydant aux bienfaits métaboliques et cognitifs.',
  'Catechine concentrate dal tè verde, in particolare l''EGCG — un potente antiossidante con benefici metabolici e cognitivi.',
  250,
  500,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Liver disease', 'Caffeine sensitivity', 'Iron absorption — take apart from iron supplements', 'Pregnancy']::TEXT[],
  ARRAY['Maladie hépatique', 'Sensibilité à la caféine', 'Absorption du fer — prendre séparément des suppléments de fer', 'Grossesse']::TEXT[],
  ARRAY['Malattia epatica', 'Sensibilità alla caffeina', 'Assorbimento del ferro — assumere separatamente dagli integratori di ferro', 'Gravidanza']::TEXT[],
  ARRAY['PMID:28864169', 'PMID:29345213']::TEXT[],
  true,
  37
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports metabolic rate and fat oxidation', 'Soutient le métabolisme et l''oxydation des graisses', 'Supporta il metabolismo e l''ossidazione dei grassi', 'clinical_trial', 'PMID:28864169', ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support focus and cognitive performance via L-theanine synergy', 'Peut favoriser la concentration et les performances cognitives via la synergie avec la L-théanine', 'Può favorire la concentrazione e le prestazioni cognitive tramite la sinergia con la L-teanina', 'clinical_trial', NULL, ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Potent antioxidant protection for cellular health', 'Puissante protection antioxydante pour la santé cellulaire', 'Potente protezione antiossidante per la salute cellulare', 'observational', NULL, ARRAY['longevity', 'skin']::TEXT[], 2
FROM aliments WHERE slug = 'green-tea-egcg';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'valerian-root',
  'herb',
  'Valerian Root',
  'Racine de Valériane',
  'Radice di Valeriana',
  'A calming herb traditionally used for sleep and anxiety. Works through GABA receptor modulation.',
  'Une herbe calmante traditionnellement utilisée pour le sommeil et l''anxiété. Agit via la modulation des récepteurs GABA.',
  'Un''erba calmante tradizionalmente usata per il sonno e l''ansia. Agisce attraverso la modulazione dei recettori GABA.',
  300,
  600,
  'mg',
  '{bedtime}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Sedatives and sleep medications', 'Alcohol', 'Pregnancy and breastfeeding', 'May cause morning grogginess']::TEXT[],
  ARRAY['Sédatifs et somnifères', 'Alcool', 'Grossesse et allaitement', 'Peut causer une somnolence matinale']::TEXT[],
  ARRAY['Sedativi e farmaci per il sonno', 'Alcool', 'Gravidanza e allattamento', 'Può causare sonnolenza mattutina']::TEXT[],
  ARRAY['PMID:17145239']::TEXT[],
  true,
  38
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve sleep quality and reduce time to fall asleep', 'Peut améliorer la qualité du sommeil et réduire le temps d''endormissement', 'Può migliorare la qualità del sonno e ridurre il tempo di addormentamento', 'clinical_trial', 'PMID:17145239', ARRAY['sleep']::TEXT[], 0
FROM aliments WHERE slug = 'valerian-root';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce symptoms of anxiety', 'Peut réduire les symptômes d''anxiété', 'Può ridurre i sintomi dell''ansia', 'observational', NULL, ARRAY['stress']::TEXT[], 1
FROM aliments WHERE slug = 'valerian-root';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'chamomile',
  'herb',
  'Chamomile Extract',
  'Extrait de Camomille',
  'Estratto di Camomilla',
  'A gentle, well-studied herb for relaxation, sleep, and digestive comfort. One of the safest herbal remedies.',
  'Une herbe douce et bien étudiée pour la relaxation, le sommeil et le confort digestif. L''un des remèdes à base de plantes les plus sûrs.',
  'Un''erba delicata e ben studiata per il rilassamento, il sonno e il comfort digestivo. Uno dei rimedi erboristici più sicuri.',
  200,
  400,
  'mg',
  '{evening, bedtime}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Ragweed allergy (cross-reactivity)', 'Blood thinners', 'Pregnancy in therapeutic doses']::TEXT[],
  ARRAY['Allergie à l''ambroisie (réactivité croisée)', 'Anticoagulants', 'Grossesse à doses thérapeutiques']::TEXT[],
  ARRAY['Allergia all''ambrosia (reattività crociata)', 'Anticoagulanti', 'Gravidanza a dosi terapeutiche']::TEXT[],
  ARRAY['PMID:27912875']::TEXT[],
  false,
  39
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May promote relaxation and improve sleep quality', 'Peut favoriser la relaxation et améliorer la qualité du sommeil', 'Può favorire il rilassamento e migliorare la qualità del sonno', 'clinical_trial', NULL, ARRAY['sleep', 'stress']::TEXT[], 0
FROM aliments WHERE slug = 'chamomile';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports digestive comfort and may reduce bloating', 'Soutient le confort digestif et peut réduire les ballonnements', 'Supporta il comfort digestivo e può ridurre il gonfiore', 'traditional', NULL, ARRAY['digestion']::TEXT[], 1
FROM aliments WHERE slug = 'chamomile';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'echinacea',
  'herb',
  'Echinacea',
  'Échinacée',
  'Echinacea',
  'A widely used herb for immune support, particularly during cold and flu season.',
  'Une herbe largement utilisée pour le soutien immunitaire, en particulier pendant la saison des rhumes et de la grippe.',
  'Un''erba ampiamente usata per il supporto immunitario, in particolare durante la stagione dei raffreddori e dell''influenza.',
  300,
  500,
  'mg',
  '{morning}',
  true,
  'cure',
  8,
  4,
  'Prolonged continuous use may reduce immune-stimulating effectiveness. Cycling maintains potency.',
  'L''utilisation continue prolongée peut réduire l''efficacité immunostimulante. Le cyclage maintient la puissance.',
  'L''uso continuo prolungato può ridurre l''efficacia immunostimolante. Il ciclo mantiene la potenza.',
  ARRAY['Autoimmune disorders', 'Immunosuppressive medications', 'Daisy family allergy']::TEXT[],
  ARRAY['Maladies auto-immunes', 'Médicaments immunosuppresseurs', 'Allergie à la famille des marguerites']::TEXT[],
  ARRAY['Malattie autoimmuni', 'Farmaci immunosoppressori', 'Allergia alla famiglia delle margherite']::TEXT[],
  ARRAY['PMID:24554461']::TEXT[],
  true,
  40
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce duration and severity of common cold symptoms', 'Peut réduire la durée et la gravité des symptômes du rhume', 'Può ridurre la durata e la gravità dei sintomi del raffreddore', 'clinical_trial', 'PMID:24554461', ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'echinacea';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports innate immune cell activity', 'Soutient l''activité des cellules immunitaires innées', 'Supporta l''attività delle cellule immunitarie innate', 'observational', NULL, ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'echinacea';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'saw-palmetto',
  'herb',
  'Saw Palmetto',
  'Palmier Nain',
  'Serenoa Repens',
  'A palm berry extract traditionally used for prostate and urinary tract health in men.',
  'Un extrait de baie de palmier traditionnellement utilisé pour la santé de la prostate et des voies urinaires chez l''homme.',
  'Un estratto di bacca di palma tradizionalmente usato per la salute della prostata e delle vie urinarie nell''uomo.',
  160,
  320,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Hormone-sensitive conditions', 'Blood thinners', 'Pregnancy', 'Oral contraceptives']::TEXT[],
  ARRAY['Conditions hormono-sensibles', 'Anticoagulants', 'Grossesse', 'Contraceptifs oraux']::TEXT[],
  ARRAY['Condizioni ormono-sensibili', 'Anticoagulanti', 'Gravidanza', 'Contraccettivi orali']::TEXT[],
  ARRAY['PMID:12062586']::TEXT[],
  false,
  41
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support prostate health and urinary flow', 'Peut soutenir la santé de la prostate et le flux urinaire', 'Può supportare la salute della prostata e il flusso urinario', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Has been associated with reduced 5-alpha reductase activity', 'A été associé à une réduction de l''activité de la 5-alpha réductase', 'È stato associato a una riduzione dell''attività della 5-alfa reduttasi', 'observational', NULL, ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'taurine',
  'amino_acid',
  'Taurine',
  'Taurine',
  'Taurina',
  'A conditionally essential amino acid concentrated in the heart, brain, and muscles. Recently linked to longevity.',
  'Un acide aminé conditionnellement essentiel concentré dans le cœur, le cerveau et les muscles. Récemment lié à la longévité.',
  'Un amminoacido condizionatamente essenziale concentrato nel cuore, cervello e muscoli. Recentemente collegato alla longevità.',
  500,
  2000,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Bipolar disorder — may worsen symptoms', 'Kidney disease']::TEXT[],
  ARRAY['Trouble bipolaire — peut aggraver les symptômes', 'Maladie rénale']::TEXT[],
  ARRAY['Disturbo bipolare — può peggiorare i sintomi', 'Malattia renale']::TEXT[],
  ARRAY['PMID:37253901', 'PMID:22855206']::TEXT[],
  false,
  42
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Has been associated with longevity markers in animal studies', 'A été associé à des marqueurs de longévité dans des études animales', 'È stato associato a marcatori di longevità in studi animali', 'observational', 'PMID:37253901', ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports cardiovascular function and electrolyte balance', 'Soutient la fonction cardiovasculaire et l''équilibre électrolytique', 'Supporta la funzione cardiovascolare e l''equilibrio elettrolitico', 'clinical_trial', NULL, ARRAY['recovery']::TEXT[], 1
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support exercise performance and reduce oxidative stress', 'Peut soutenir la performance à l''exercice et réduire le stress oxydatif', 'Può supportare le prestazioni nell''esercizio e ridurre lo stress ossidativo', 'clinical_trial', NULL, ARRAY['energy', 'recovery']::TEXT[], 2
FROM aliments WHERE slug = 'taurine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'l-glutamine',
  'amino_acid',
  'L-Glutamine',
  'L-Glutamine',
  'L-Glutammina',
  'The most abundant amino acid in the body. Supports gut lining integrity, immune function, and muscle recovery.',
  'L''acide aminé le plus abondant dans le corps. Soutient l''intégrité de la paroi intestinale, la fonction immunitaire et la récupération musculaire.',
  'L''amminoacido più abbondante nel corpo. Supporta l''integrità della parete intestinale, la funzione immunitaria e il recupero muscolare.',
  2000,
  5000,
  'mg',
  '{morning, evening}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Liver disease', 'Reye''s syndrome', 'MSG sensitivity']::TEXT[],
  ARRAY['Maladie hépatique', 'Syndrome de Reye', 'Sensibilité au MSG']::TEXT[],
  ARRAY['Malattia epatica', 'Sindrome di Reye', 'Sensibilità al MSG']::TEXT[],
  ARRAY['PMID:29784013']::TEXT[],
  false,
  43
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports intestinal barrier integrity and gut health', 'Soutient l''intégrité de la barrière intestinale et la santé intestinale', 'Supporta l''integrità della barriera intestinale e la salute dell''intestino', 'clinical_trial', 'PMID:29784013', ARRAY['digestion']::TEXT[], 0
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support muscle recovery after intense exercise', 'Peut soutenir la récupération musculaire après un exercice intense', 'Può supportare il recupero muscolare dopo un esercizio intenso', 'observational', NULL, ARRAY['recovery']::TEXT[], 1
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Fuel source for immune cells during stress', 'Source de carburant pour les cellules immunitaires pendant le stress', 'Fonte di carburante per le cellule immunitarie durante lo stress', 'clinical_trial', NULL, ARRAY['immunity']::TEXT[], 2
FROM aliments WHERE slug = 'l-glutamine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'alpha-lipoic-acid',
  'specialty_compound',
  'Alpha-Lipoic Acid',
  'Acide Alpha-Lipoïque',
  'Acido Alfa-Lipoico',
  'A universal antioxidant that works in both water and fat. Supports blood sugar balance and nerve health.',
  'Un antioxydant universel qui agit dans l''eau et les graisses. Soutient l''équilibre glycémique et la santé nerveuse.',
  'Un antiossidante universale che agisce sia in acqua che nei grassi. Supporta l''equilibrio glicemico e la salute nervosa.',
  300,
  600,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Diabetes medications — may lower blood sugar further', 'Thyroid medications', 'Thiamine deficiency']::TEXT[],
  ARRAY['Médicaments contre le diabète — peut abaisser davantage la glycémie', 'Médicaments thyroïdiens', 'Carence en thiamine']::TEXT[],
  ARRAY['Farmaci per il diabete — può abbassare ulteriormente la glicemia', 'Farmaci tiroidei', 'Carenza di tiamina']::TEXT[],
  ARRAY['PMID:21666939']::TEXT[],
  false,
  44
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports healthy blood sugar metabolism', 'Soutient un métabolisme sain de la glycémie', 'Supporta un metabolismo sano della glicemia', 'clinical_trial', NULL, ARRAY['energy']::TEXT[], 0
FROM aliments WHERE slug = 'alpha-lipoic-acid';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Regenerates other antioxidants like vitamins C and E', 'Régénère d''autres antioxydants comme les vitamines C et E', 'Rigenera altri antiossidanti come le vitamine C ed E', 'observational', NULL, ARRAY['longevity', 'skin']::TEXT[], 1
FROM aliments WHERE slug = 'alpha-lipoic-acid';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'pqq',
  'specialty_compound',
  'PQQ (Pyrroloquinoline Quinone)',
  'PQQ (Pyrroloquinoléine Quinone)',
  'PQQ (Pirrolochinolina Chinone)',
  'A novel compound that supports mitochondrial biogenesis — the creation of new mitochondria for cellular energy.',
  'Un composé novateur qui soutient la biogenèse mitochondriale — la création de nouvelles mitochondries pour l''énergie cellulaire.',
  'Un composto innovativo che supporta la biogenesi mitocondriale — la creazione di nuovi mitocondri per l''energia cellulare.',
  10,
  20,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Limited long-term safety data', 'Pregnancy and breastfeeding — insufficient data']::TEXT[],
  ARRAY['Données de sécurité à long terme limitées', 'Grossesse et allaitement — données insuffisantes']::TEXT[],
  ARRAY['Dati di sicurezza a lungo termine limitati', 'Gravidanza e allattamento — dati insufficienti']::TEXT[],
  ARRAY['PMID:23129300']::TEXT[],
  false,
  45
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support mitochondrial biogenesis and cellular energy', 'Peut soutenir la biogenèse mitochondriale et l''énergie cellulaire', 'Può supportare la biogenesi mitocondriale e l''energia cellulare', 'observational', 'PMID:23129300', ARRAY['energy', 'longevity']::TEXT[], 0
FROM aliments WHERE slug = 'pqq';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cognitive function and neuroprotection', 'Peut soutenir la fonction cognitive et la neuroprotection', 'Può supportare la funzione cognitiva e la neuroprotezione', 'observational', NULL, ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'pqq';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'nmn',
  'specialty_compound',
  'NMN (Nicotinamide Mononucleotide)',
  'NMN (Nicotinamide Mononucléotide)',
  'NMN (Nicotinamide Mononucleotide)',
  'A direct precursor to NAD+, a molecule critical for energy metabolism, DNA repair, and healthy aging.',
  'Un précurseur direct du NAD+, une molécule critique pour le métabolisme énergétique, la réparation de l''ADN et le vieillissement sain.',
  'Un precursore diretto del NAD+, una molecola critica per il metabolismo energetico, la riparazione del DNA e l''invecchiamento sano.',
  250,
  500,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Limited human safety data for long-term use', 'Cancer — NAD+ may fuel tumor growth', 'Pregnancy']::TEXT[],
  ARRAY['Données de sécurité humaine limitées pour l''utilisation à long terme', 'Cancer — le NAD+ peut alimenter la croissance tumorale', 'Grossesse']::TEXT[],
  ARRAY['Dati di sicurezza umana limitati per l''uso a lungo termine', 'Cancro — il NAD+ può alimentare la crescita tumorale', 'Gravidanza']::TEXT[],
  ARRAY['PMID:36482258']::TEXT[],
  false,
  46
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Raises NAD+ levels, which decline with age', 'Augmente les niveaux de NAD+, qui déclinent avec l''âge', 'Aumenta i livelli di NAD+, che diminuiscono con l''età', 'clinical_trial', 'PMID:36482258', ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'nmn';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cellular energy metabolism and DNA repair', 'Peut soutenir le métabolisme énergétique cellulaire et la réparation de l''ADN', 'Può supportare il metabolismo energetico cellulare e la riparazione del DNA', 'observational', NULL, ARRAY['energy', 'longevity']::TEXT[], 1
FROM aliments WHERE slug = 'nmn';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'kefir',
  'fermented_food',
  'Kefir',
  'Kéfir',
  'Kefir',
  'A fermented milk drink with diverse probiotic strains — more potent than yogurt for gut colonization.',
  'Une boisson lactée fermentée avec diverses souches probiotiques — plus puissant que le yaourt pour la colonisation intestinale.',
  'Una bevanda a base di latte fermentato con diverse ceppi probiotici — più potente dello yogurt per la colonizzazione intestinale.',
  200,
  400,
  'ml',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Lactose intolerance (though reduced)', 'Immunocompromised patients', 'Casein allergy']::TEXT[],
  ARRAY['Intolérance au lactose (bien que réduite)', 'Patients immunodéprimés', 'Allergie à la caséine']::TEXT[],
  ARRAY['Intolleranza al lattosio (sebbene ridotta)', 'Pazienti immunocompromessi', 'Allergia alla caseina']::TEXT[],
  ARRAY['PMID:28222814']::TEXT[],
  false,
  47
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Contains diverse probiotic strains for gut microbiome diversity', 'Contient diverses souches probiotiques pour la diversité du microbiome intestinal', 'Contiene diversi ceppi probiotici per la diversità del microbioma intestinale', 'clinical_trial', NULL, ARRAY['digestion']::TEXT[], 0
FROM aliments WHERE slug = 'kefir';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support immune modulation and reduce inflammation', 'Peut soutenir la modulation immunitaire et réduire l''inflammation', 'Può supportare la modulazione immunitaria e ridurre l''infiammazione', 'observational', NULL, ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'kefir';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'cacao-raw',
  'functional_food',
  'Raw Cacao',
  'Cacao Cru',
  'Cacao Crudo',
  'Unprocessed chocolate — one of the highest antioxidant foods. Rich in flavanols, magnesium, and theobromine.',
  'Chocolat non transformé — l''un des aliments les plus riches en antioxydants. Riche en flavanols, magnésium et théobromine.',
  'Cioccolato non trasformato — uno degli alimenti più ricchi di antiossidanti. Ricco di flavanoli, magnesio e teobromina.',
  10,
  30,
  'g',
  '{morning, afternoon}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Caffeine sensitivity (contains theobromine)', 'MAOI medications', 'Kidney stones (oxalates)']::TEXT[],
  ARRAY['Sensibilité à la caféine (contient de la théobromine)', 'Médicaments IMAO', 'Calculs rénaux (oxalates)']::TEXT[],
  ARRAY['Sensibilità alla caffeina (contiene teobromina)', 'Farmaci IMAO', 'Calcoli renali (ossalati)']::TEXT[],
  ARRAY['PMID:22301923']::TEXT[],
  true,
  48
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Flavanols may support cardiovascular health and blood flow', 'Les flavanols peuvent soutenir la santé cardiovasculaire et le flux sanguin', 'I flavanoli possono supportare la salute cardiovascolare e il flusso sanguigno', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Theobromine provides gentle, sustained energy without jitters', 'La théobromine fournit une énergie douce et soutenue sans nervosité', 'La teobromina fornisce energia delicata e sostenuta senza nervosismo', 'observational', NULL, ARRAY['energy', 'focus']::TEXT[], 1
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support mood through serotonin precursor activity', 'Peut soutenir l''humeur par l''activité des précurseurs de la sérotonine', 'Può supportare l''umore attraverso l''attività dei precursori della serotonina', 'observational', NULL, ARRAY['stress']::TEXT[], 2
FROM aliments WHERE slug = 'cacao-raw';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'krill-oil',
  'fatty_acid',
  'Krill Oil',
  'Huile de Krill',
  'Olio di Krill',
  'Omega-3 in phospholipid form for superior absorption. Also contains astaxanthin, a potent antioxidant.',
  'Oméga-3 sous forme de phospholipides pour une absorption supérieure. Contient également de l''astaxanthine, un puissant antioxydant.',
  'Omega-3 in forma di fosfolipidi per un assorbimento superiore. Contiene anche astaxantina, un potente antiossidante.',
  500,
  1000,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Shellfish allergy', 'Blood thinners', 'Surgery — stop 2 weeks before']::TEXT[],
  ARRAY['Allergie aux crustacés', 'Anticoagulants', 'Chirurgie — arrêter 2 semaines avant']::TEXT[],
  ARRAY['Allergia ai crostacei', 'Anticoagulanti', 'Chirurgia — interrompere 2 settimane prima']::TEXT[],
  ARRAY['PMID:25474740']::TEXT[],
  false,
  49
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Omega-3s in phospholipid form may have superior bioavailability', 'Les oméga-3 sous forme de phospholipides peuvent avoir une biodisponibilité supérieure', 'Gli omega-3 in forma di fosfolipidi possono avere una biodisponibilità superiore', 'clinical_trial', NULL, ARRAY['longevity']::TEXT[], 0
FROM aliments WHERE slug = 'krill-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Astaxanthin content provides additional antioxidant skin benefits', 'Le contenu en astaxanthine fournit des bienfaits antioxydants supplémentaires pour la peau', 'Il contenuto di astaxantina fornisce ulteriori benefici antiossidanti per la pelle', 'observational', NULL, ARRAY['skin']::TEXT[], 1
FROM aliments WHERE slug = 'krill-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'evening-primrose-oil',
  'fatty_acid',
  'Evening Primrose Oil',
  'Huile d''Onagre',
  'Olio di Enotera',
  'Rich in GLA (gamma-linolenic acid), an omega-6 with anti-inflammatory properties. Supports skin and hormonal balance.',
  'Riche en GLA (acide gamma-linolénique), un oméga-6 aux propriétés anti-inflammatoires. Soutient la peau et l''équilibre hormonal.',
  'Ricco di GLA (acido gamma-linolenico), un omega-6 con proprietà antinfiammatorie. Supporta la pelle e l''equilibrio ormonale.',
  500,
  1300,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Bleeding disorders', 'Seizure medications', 'Blood thinners', 'Pregnancy — may induce labor']::TEXT[],
  ARRAY['Troubles de la coagulation', 'Médicaments antiépileptiques', 'Anticoagulants', 'Grossesse — peut induire le travail']::TEXT[],
  ARRAY['Disturbi della coagulazione', 'Farmaci antiepilettici', 'Anticoagulanti', 'Gravidanza — può indurre il travaglio']::TEXT[],
  ARRAY['PMID:28211338']::TEXT[],
  false,
  50
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'GLA may support skin hydration and reduce eczema symptoms', 'Le GLA peut soutenir l''hydratation de la peau et réduire les symptômes d''eczéma', 'Il GLA può supportare l''idratazione della pelle e ridurre i sintomi dell''eczema', 'clinical_trial', NULL, ARRAY['skin']::TEXT[], 0
FROM aliments WHERE slug = 'evening-primrose-oil';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support hormonal balance and reduce PMS symptoms', 'Peut soutenir l''équilibre hormonal et réduire les symptômes du SPM', 'Può supportare l''equilibrio ormonale e ridurre i sintomi della sindrome premestruale', 'observational', NULL, ARRAY['stress']::TEXT[], 1
FROM aliments WHERE slug = 'evening-primrose-oil';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'saccharomyces-boulardii',
  'probiotic',
  'Saccharomyces boulardii',
  'Saccharomyces boulardii',
  'Saccharomyces boulardii',
  'A beneficial yeast probiotic — uniquely resistant to antibiotics and effective for diarrhea prevention.',
  'Un probiotique à levure bénéfique — uniquement résistant aux antibiotiques et efficace pour la prévention de la diarrhée.',
  'Un probiotico a lievito benefico — unicamente resistente agli antibiotici ed efficace per la prevenzione della diarrea.',
  250,
  500,
  'mg',
  '{morning}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Central venous catheter patients', 'Immunocompromised — risk of fungemia', 'Yeast allergy']::TEXT[],
  ARRAY['Patients avec cathéter veineux central', 'Immunodéprimés — risque de fongémie', 'Allergie aux levures']::TEXT[],
  ARRAY['Pazienti con catetere venoso centrale', 'Immunocompromessi — rischio di fungemia', 'Allergia ai lieviti']::TEXT[],
  ARRAY['PMID:25157183']::TEXT[],
  false,
  51
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May prevent antibiotic-associated diarrhea', 'Peut prévenir la diarrhée associée aux antibiotiques', 'Può prevenire la diarrea associata agli antibiotici', 'clinical_trial', 'PMID:25157183', ARRAY['digestion']::TEXT[], 0
FROM aliments WHERE slug = 'saccharomyces-boulardii';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports gut barrier function during pathogen exposure', 'Soutient la fonction de barrière intestinale lors de l''exposition aux pathogènes', 'Supporta la funzione di barriera intestinale durante l''esposizione ai patogeni', 'clinical_trial', NULL, ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'saccharomyces-boulardii';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'bone-broth-collagen',
  'functional_food',
  'Bone Broth Protein',
  'Protéine de Bouillon d''Os',
  'Proteina di Brodo d''Ossa',
  'Concentrated collagen, gelatin, and minerals from slow-simmered bones. Supports gut, joints, and skin.',
  'Collagène, gélatine et minéraux concentrés issus d''os mijotés lentement. Soutient l''intestin, les articulations et la peau.',
  'Collagene, gelatina e minerali concentrati da ossa cotte a fuoco lento. Supporta intestino, articolazioni e pelle.',
  10,
  20,
  'g',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Histamine intolerance', 'Glutamate sensitivity', 'Lead contamination risk in some products']::TEXT[],
  ARRAY['Intolérance à l''histamine', 'Sensibilité au glutamate', 'Risque de contamination au plomb dans certains produits']::TEXT[],
  ARRAY['Intolleranza all''istamina', 'Sensibilità al glutammato', 'Rischio di contaminazione da piombo in alcuni prodotti']::TEXT[],
  ARRAY['PMID:28174772']::TEXT[],
  false,
  52
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Provides collagen peptides for joint and skin support', 'Fournit des peptides de collagène pour le soutien des articulations et de la peau', 'Fornisce peptidi di collagene per il supporto di articolazioni e pelle', 'observational', NULL, ARRAY['joint_health', 'skin']::TEXT[], 0
FROM aliments WHERE slug = 'bone-broth-collagen';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Gelatin may support gut lining integrity', 'La gélatine peut soutenir l''intégrité de la paroi intestinale', 'La gelatina può supportare l''integrità della parete intestinale', 'traditional', NULL, ARRAY['digestion']::TEXT[], 1
FROM aliments WHERE slug = 'bone-broth-collagen';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'glycine',
  'amino_acid',
  'Glycine',
  'Glycine',
  'Glicina',
  'The simplest amino acid with surprising depth — supports sleep quality, collagen synthesis, and liver detoxification.',
  'L''acide aminé le plus simple avec une profondeur surprenante — soutient la qualité du sommeil, la synthèse du collagène et la détoxification hépatique.',
  'L''amminoacido più semplice con una profondità sorprendente — supporta la qualità del sonno, la sintesi del collagene e la disintossicazione epatica.',
  2000,
  5000,
  'mg',
  '{bedtime}',
  false,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Clozapine use', 'Very high doses may cause gastrointestinal discomfort']::TEXT[],
  ARRAY['Utilisation de clozapine', 'Des doses très élevées peuvent causer un inconfort gastro-intestinal']::TEXT[],
  ARRAY['Uso di clozapina', 'Dosi molto elevate possono causare disagio gastrointestinale']::TEXT[],
  ARRAY['PMID:22293292', 'PMID:26118561']::TEXT[],
  false,
  53
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve subjective sleep quality and reduce next-day fatigue', 'Peut améliorer la qualité subjective du sommeil et réduire la fatigue du lendemain', 'Può migliorare la qualità soggettiva del sonno e ridurre la fatica del giorno dopo', 'clinical_trial', 'PMID:22293292', ARRAY['sleep']::TEXT[], 0
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Building block for collagen — supports skin elasticity', 'Composant du collagène — soutient l''élasticité de la peau', 'Componente del collagene — supporta l''elasticità della pelle', 'observational', NULL, ARRAY['skin']::TEXT[], 1
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Supports glutathione production for liver detoxification', 'Soutient la production de glutathion pour la détoxification hépatique', 'Supporta la produzione di glutatione per la disintossicazione epatica', 'observational', NULL, ARRAY['longevity']::TEXT[], 2
FROM aliments WHERE slug = 'glycine';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'astragalus',
  'adaptogen',
  'Astragalus Root',
  'Racine d''Astragale',
  'Radice di Astragalo',
  'A cornerstone of Traditional Chinese Medicine for immune support and vitality. Contains telomere-protective compounds.',
  'Une pierre angulaire de la médecine traditionnelle chinoise pour le soutien immunitaire et la vitalité. Contient des composés protecteurs des télomères.',
  'Una pietra miliare della medicina tradizionale cinese per il supporto immunitario e la vitalità. Contiene composti protettivi dei telomeri.',
  500,
  1500,
  'mg',
  '{morning}',
  true,
  'cure',
  8,
  2,
  'Cycling prevents immune system habituation and maintains the adaptogenic response.',
  'Le cyclage prévient l''habituation du système immunitaire et maintient la réponse adaptogène.',
  'Il ciclo previene l''abituazione del sistema immunitario e mantiene la risposta adattogena.',
  ARRAY['Autoimmune disorders', 'Immunosuppressive medications', 'Lithium interactions']::TEXT[],
  ARRAY['Maladies auto-immunes', 'Médicaments immunosuppresseurs', 'Interactions avec le lithium']::TEXT[],
  ARRAY['Malattie autoimmuni', 'Farmaci immunosoppressori', 'Interazioni con il litio']::TEXT[],
  ARRAY['PMID:23193925']::TEXT[],
  false,
  54
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support immune cell activity and resistance to infections', 'Peut soutenir l''activité des cellules immunitaires et la résistance aux infections', 'Può supportare l''attività delle cellule immunitarie e la resistenza alle infezioni', 'clinical_trial', NULL, ARRAY['immunity']::TEXT[], 0
FROM aliments WHERE slug = 'astragalus';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Contains cycloastragenol, associated with telomere protection', 'Contient du cycloastragénol, associé à la protection des télomères', 'Contiene cicloastragenolo, associato alla protezione dei telomeri', 'observational', NULL, ARRAY['longevity']::TEXT[], 1
FROM aliments WHERE slug = 'astragalus';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'holy-basil-tulsi',
  'adaptogen',
  'Holy Basil (Tulsi)',
  'Basilic Sacré (Tulsi)',
  'Basilico Sacro (Tulsi)',
  'The ''Queen of Herbs'' in Ayurveda. An adaptogen for stress resilience, cognitive clarity, and blood sugar balance.',
  'La ''Reine des Herbes'' en Ayurveda. Un adaptogène pour la résilience au stress, la clarté cognitive et l''équilibre glycémique.',
  'La ''Regina delle Erbe'' nell''Ayurveda. Un adattogeno per la resilienza allo stress, la chiarezza cognitiva e l''equilibrio glicemico.',
  300,
  600,
  'mg',
  '{morning, afternoon}',
  true,
  'cure',
  6,
  2,
  'As an adaptogen, cycling prevents receptor desensitization and maintains stress response modulation.',
  'En tant qu''adaptogène, le cyclage prévient la désensibilisation des récepteurs et maintient la modulation de la réponse au stress.',
  'Come adattogeno, il ciclo previene la desensibilizzazione dei recettori e mantiene la modulazione della risposta allo stress.',
  ARRAY['Pregnancy', 'Blood thinners', 'Fertility treatments — may have anti-fertility effects']::TEXT[],
  ARRAY['Grossesse', 'Anticoagulants', 'Traitements de fertilité — peut avoir des effets anti-fertilité']::TEXT[],
  ARRAY['Gravidanza', 'Anticoagulanti', 'Trattamenti di fertilità — può avere effetti anti-fertilità']::TEXT[],
  ARRAY['PMID:28400848']::TEXT[],
  false,
  55
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May reduce cortisol levels and improve stress resilience', 'Peut réduire les niveaux de cortisol et améliorer la résilience au stress', 'Può ridurre i livelli di cortisolo e migliorare la resilienza allo stress', 'clinical_trial', NULL, ARRAY['stress']::TEXT[], 0
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support cognitive function and mental clarity', 'Peut soutenir la fonction cognitive et la clarté mentale', 'Può supportare la funzione cognitiva e la chiarezza mentale', 'observational', NULL, ARRAY['focus']::TEXT[], 1
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'Traditionally used for blood sugar and metabolic support', 'Traditionnellement utilisé pour le soutien glycémique et métabolique', 'Tradizionalmente usato per il supporto glicemico e metabolico', 'traditional', NULL, ARRAY['energy']::TEXT[], 2
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'chaga-mushroom',
  'mushroom',
  'Chaga Mushroom',
  'Champignon Chaga',
  'Fungo Chaga',
  'A birch-tree fungus with the highest antioxidant content of any mushroom. Supports immune function and skin health.',
  'Un champignon de bouleau avec le contenu antioxydant le plus élevé de tous les champignons. Soutient la fonction immunitaire et la santé de la peau.',
  'Un fungo di betulla con il più alto contenuto di antiossidanti di qualsiasi fungo. Supporta la funzione immunitaria e la salute della pelle.',
  500,
  1500,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Blood thinners', 'Diabetes medications', 'Autoimmune conditions', 'Kidney stones (high oxalates)']::TEXT[],
  ARRAY['Anticoagulants', 'Médicaments contre le diabète', 'Conditions auto-immunes', 'Calculs rénaux (oxalates élevés)']::TEXT[],
  ARRAY['Anticoagulanti', 'Farmaci per il diabete', 'Condizioni autoimmuni', 'Calcoli renali (ossalati elevati)']::TEXT[],
  ARRAY['PMID:21820502']::TEXT[],
  false,
  56
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'One of the highest natural sources of antioxidants (ORAC)', 'L''une des sources naturelles les plus riches en antioxydants (ORAC)', 'Una delle fonti naturali più ricche di antiossidanti (ORAC)', 'observational', NULL, ARRAY['longevity', 'skin']::TEXT[], 0
FROM aliments WHERE slug = 'chaga-mushroom';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support immune modulation through beta-glucans', 'Peut soutenir la modulation immunitaire par les bêta-glucanes', 'Può supportare la modulazione immunitaria attraverso i beta-glucani', 'observational', NULL, ARRAY['immunity']::TEXT[], 1
FROM aliments WHERE slug = 'chaga-mushroom';

INSERT INTO aliments (slug, category, name_en, name_fr, name_it, summary_en, summary_fr, summary_it, dosage_min, dosage_max, dosage_unit, best_time, with_food, use_mode, cure_on_weeks, cure_off_weeks, cure_rationale_en, cure_rationale_fr, cure_rationale_it, contraindications_en, contraindications_fr, contraindications_it, source_refs, is_popular, sort_order) VALUES (
  'hyaluronic-acid',
  'specialty_compound',
  'Hyaluronic Acid',
  'Acide Hyaluronique',
  'Acido Ialuronico',
  'A naturally occurring molecule that holds 1000x its weight in water. Supports skin hydration, joints, and eye health.',
  'Une molécule naturelle qui retient 1000 fois son poids en eau. Soutient l''hydratation de la peau, les articulations et la santé oculaire.',
  'Una molecola naturale che trattiene 1000 volte il suo peso in acqua. Supporta l''idratazione della pelle, le articolazioni e la salute oculare.',
  100,
  200,
  'mg',
  '{morning}',
  true,
  'continuous',
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  ARRAY['Cancer — may promote tumor growth', 'Pregnancy — insufficient data']::TEXT[],
  ARRAY['Cancer — peut favoriser la croissance tumorale', 'Grossesse — données insuffisantes']::TEXT[],
  ARRAY['Cancro — può favorire la crescita tumorale', 'Gravidanza — dati insufficienti']::TEXT[],
  ARRAY['PMID:28025987']::TEXT[],
  true,
  57
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May improve skin hydration and reduce wrinkle depth', 'Peut améliorer l''hydratation de la peau et réduire la profondeur des rides', 'Può migliorare l''idratazione della pelle e ridurre la profondità delle rughe', 'clinical_trial', 'PMID:28025987', ARRAY['skin']::TEXT[], 0
FROM aliments WHERE slug = 'hyaluronic-acid';

INSERT INTO aliment_benefits (aliment_id, benefit_en, benefit_fr, benefit_it, evidence_level, source_ref, goal_tags, sort_order)
SELECT id, 'May support joint lubrication and comfort', 'Peut soutenir la lubrification et le confort articulaire', 'Può supportare la lubrificazione e il comfort articolare', 'observational', NULL, ARRAY['joint_health']::TEXT[], 1
FROM aliments WHERE slug = 'hyaluronic-acid';

-- =============================================================================
-- INTERACTIONS
-- =============================================================================

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Zinc and magnesium work synergistically — both support sleep quality and muscle recovery. Can be taken together in the evening.', 'Le zinc et le magnésium fonctionnent en synergie — tous deux soutiennent la qualité du sommeil et la récupération musculaire. Peuvent être pris ensemble le soir.', 'Zinco e magnesio funzionano in sinergia — entrambi supportano la qualità del sonno e il recupero muscolare. Possono essere assunti insieme la sera.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'zinc' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'timing_separation', 'warning', 'Zinc and iron compete for absorption. Take them at least 2 hours apart for optimal absorption of both minerals.', 'Le zinc et le fer entrent en compétition pour l''absorption. Les prendre à au moins 2 heures d''intervalle pour une absorption optimale des deux minéraux.', 'Zinco e ferro competono per l''assorbimento. Assumerli a distanza di almeno 2 ore per un assorbimento ottimale di entrambi i minerali.', 2, NULL
FROM aliments a, aliments b WHERE a.slug = 'zinc' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Copper supplements', 'conflict', 'warning', 'Zinc and copper compete for the same absorption pathways. High zinc intake (>40mg/day) can cause copper deficiency over time. Take at least 4 hours apart.', 'Le zinc et le cuivre utilisent les mêmes voies d''absorption. Un apport élevé en zinc (>40mg/jour) peut causer une carence en cuivre. Prendre à au moins 4 heures d''intervalle.', 'Zinco e rame competono per le stesse vie di assorbimento. Un apporto elevato di zinco (>40mg/giorno) può causare carenza di rame. Assumere a distanza di almeno 4 ore.', 4, NULL
FROM aliments WHERE slug = 'zinc';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin D3 is fat-soluble — taking it with omega-3 (a fat source) significantly increases absorption. Best taken together with a meal.', 'La vitamine D3 est liposoluble — la prendre avec des oméga-3 (source de graisses) augmente significativement l''absorption. Mieux pris ensemble avec un repas.', 'La vitamina D3 è liposolubile — assumerla con omega-3 (fonte di grassi) aumenta significativamente l''assorbimento. Meglio assunti insieme con un pasto.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-d3' AND b.slug = 'omega-3-epa-dha';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Calcium supplements', 'synergy', 'info', 'Vitamin D3 is essential for calcium absorption. Taking them together maximizes bone health benefits.', 'La vitamine D3 est essentielle pour l''absorption du calcium. Les prendre ensemble maximise les bénéfices pour la santé osseuse.', 'La vitamina D3 è essenziale per l''assorbimento del calcio. Assumerli insieme massimizza i benefici per la salute ossea.', NULL, NULL
FROM aliments WHERE slug = 'vitamin-d3';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Piperine / Black pepper extract', 'synergy', 'info', 'Piperine increases curcumin bioavailability by up to 2000%. Always take curcumin with piperine or in a lipid formulation.', 'La pipérine augmente la biodisponibilité de la curcumine jusqu''à 2000%. Toujours prendre la curcumine avec de la pipérine ou sous forme lipidique.', 'La piperina aumenta la biodisponibilità della curcumina fino al 2000%. Assumere sempre la curcumina con piperina o in formulazione lipidica.', NULL, NULL
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'danger', 'Curcumin has antiplatelet properties and may increase bleeding risk when combined with anticoagulant medications. Consult your doctor before combining.', 'La curcumine a des propriétés antiplaquettaires et peut augmenter le risque de saignement en combinaison avec des anticoagulants. Consultez votre médecin avant de combiner.', 'La curcumina ha proprietà antipiastriniche e può aumentare il rischio di sanguinamento se combinata con farmaci anticoagulanti. Consultare il medico prima di combinare.', NULL, NULL
FROM aliments WHERE slug = 'turmeric-curcumin';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Caffeine', 'synergy', 'info', 'L-Theanine + caffeine is one of the most well-studied synergies. L-Theanine smooths out caffeine jitters while preserving alertness and focus.', 'L-Théanine + caféine est l''une des synergies les plus étudiées. La L-Théanine atténue la nervosité de la caféine tout en préservant la vigilance et la concentration.', 'L-Teanina + caffeina è una delle sinergie più studiate. La L-Teanina attenua il nervosismo della caffeina preservando la vigilanza e la concentrazione.', NULL, NULL
FROM aliments WHERE slug = 'l-theanine';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Thyroid medications (levothyroxine)', 'conflict', 'danger', 'Ashwagandha may increase thyroid hormone levels (T3/T4). This can dangerously interact with thyroid medications. Consult your endocrinologist.', 'L''ashwagandha peut augmenter les niveaux d''hormones thyroïdiennes (T3/T4). Cela peut interagir dangereusement avec les médicaments thyroïdiens. Consultez votre endocrinologue.', 'L''ashwagandha può aumentare i livelli di ormoni tiroidei (T3/T4). Questo può interagire pericolosamente con i farmaci tiroidei. Consultare l''endocrinologo.', NULL, NULL
FROM aliments WHERE slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Both promote calm without sedation through different mechanisms. Ashwagandha modulates cortisol while L-Theanine increases alpha waves. Effective stack for stress + focus.', 'Les deux favorisent le calme sans sédation par des mécanismes différents. L''ashwagandha module le cortisol tandis que la L-Théanine augmente les ondes alpha. Stack efficace pour le stress + la concentration.', 'Entrambi promuovono la calma senza sedazione attraverso meccanismi diversi. L''ashwagandha modula il cortisolo mentre la L-Teanina aumenta le onde alfa. Stack efficace per stress + concentrazione.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'ashwagandha' AND b.slug = 'l-theanine';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Lion''s Mane (NGF stimulation) + Ashwagandha (stress reduction) complement each other for cognitive performance under stress. Popular nootropic stack.', 'Crinière de Lion (stimulation du NGF) + Ashwagandha (réduction du stress) se complètent pour la performance cognitive sous stress. Stack nootropique populaire.', 'Criniera di Leone (stimolazione NGF) + Ashwagandha (riduzione dello stress) si completano per le prestazioni cognitive sotto stress. Stack nootropico popolare.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'lions-mane' AND b.slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Antibiotics', 'timing_separation', 'warning', 'Antibiotics kill probiotic bacteria. Take probiotics at least 2 hours after antibiotics to maintain some benefit. Continue probiotics for 2 weeks after completing antibiotics course.', 'Les antibiotiques tuent les bactéries probiotiques. Prendre les probiotiques au moins 2 heures après les antibiotiques. Continuer les probiotiques 2 semaines après la fin du traitement.', 'Gli antibiotici uccidono i batteri probiotici. Assumere i probiotici almeno 2 ore dopo gli antibiotici. Continuare i probiotici per 2 settimane dopo il completamento del ciclo.', 2, NULL
FROM aliments WHERE slug = 'probiotics-lactobacillus';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin C dramatically increases non-heme iron absorption (up to 6x). Always take iron with vitamin C for maximum benefit.', 'La vitamine C augmente considérablement l''absorption du fer non héminique (jusqu''à 6x). Toujours prendre le fer avec de la vitamine C pour un bénéfice maximal.', 'La vitamina C aumenta drasticamente l''assorbimento del ferro non eme (fino a 6x). Assumere sempre il ferro con vitamina C per il massimo beneficio.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-c' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin C is essential for collagen synthesis. Taking vitamin C with collagen peptides supports the body''s ability to build and repair connective tissue.', 'La vitamine C est essentielle pour la synthèse du collagène. Prendre de la vitamine C avec des peptides de collagène soutient la capacité du corps à construire et réparer le tissu conjonctif.', 'La vitamina C è essenziale per la sintesi del collagene. Assumere vitamina C con peptidi di collagene supporta la capacità del corpo di costruire e riparare il tessuto connettivo.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-c' AND b.slug = 'collagen-peptides';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Calcium supplements', 'timing_separation', 'warning', 'Calcium inhibits iron absorption. Take iron and calcium supplements at least 2 hours apart.', 'Le calcium inhibe l''absorption du fer. Prendre les suppléments de fer et de calcium à au moins 2 heures d''intervalle.', 'Il calcio inibisce l''assorbimento del ferro. Assumere integratori di ferro e calcio a distanza di almeno 2 ore.', 2, NULL
FROM aliments WHERE slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Caffeine', 'timing_separation', 'info', 'Some research suggests caffeine may slightly reduce creatine''s ergogenic benefits. Consider taking creatine separately from high-caffeine beverages.', 'Certaines recherches suggèrent que la caféine pourrait légèrement réduire les bénéfices ergogéniques de la créatine. Envisagez de prendre la créatine séparément des boissons riches en caféine.', 'Alcune ricerche suggeriscono che la caffeina potrebbe ridurre leggermente i benefici ergogenici della creatina. Considerare di assumere la creatina separatamente dalle bevande ad alto contenuto di caffeina.', 1, NULL
FROM aliments WHERE slug = 'creatine-monohydrate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Two complementary adaptogens: Rhodiola provides acute energy and focus, while Ashwagandha offers sustained stress resilience. Effective together for demanding periods.', 'Deux adaptogènes complémentaires : la Rhodiola apporte énergie et concentration aiguës, tandis que l''Ashwagandha offre une résilience au stress durable. Efficaces ensemble en période exigeante.', 'Due adattogeni complementari: la Rhodiola fornisce energia e concentrazione acute, mentre l''Ashwagandha offre resilienza allo stress duratura. Efficaci insieme nei periodi impegnativi.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'rhodiola-rosea' AND b.slug = 'ashwagandha';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Both support cellular energy production through complementary mechanisms. Cordyceps enhances oxygen utilization while CoQ10 is essential for mitochondrial ATP synthesis.', 'Les deux soutiennent la production d''énergie cellulaire par des mécanismes complémentaires. Le Cordyceps améliore l''utilisation de l''oxygène tandis que le CoQ10 est essentiel pour la synthèse mitochondriale d''ATP.', 'Entrambi supportano la produzione di energia cellulare attraverso meccanismi complementari. Il Cordyceps migliora l''utilizzo dell''ossigeno mentre il CoQ10 è essenziale per la sintesi mitocondriale di ATP.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'cordyceps' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Metformin', 'conflict', 'danger', 'Both berberine and metformin lower blood glucose through similar mechanisms. Combining them may cause dangerously low blood sugar (hypoglycemia). Consult your doctor.', 'La berbérine et la metformine abaissent toutes deux la glycémie par des mécanismes similaires. Les combiner peut provoquer une hypoglycémie dangereuse. Consultez votre médecin.', 'Sia la berberina che la metformina abbassano la glicemia attraverso meccanismi simili. Combinarle può causare un''ipoglicemia pericolosa. Consultare il medico.', NULL, NULL
FROM aliments WHERE slug = 'berberine';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Magnesium and melatonin complement each other for sleep: magnesium relaxes muscles and calms the nervous system, while melatonin regulates the sleep-wake cycle.', 'Le magnésium et la mélatonine se complètent pour le sommeil : le magnésium détend les muscles et calme le système nerveux, tandis que la mélatonine régule le cycle veille-sommeil.', 'Magnesio e melatonina si completano per il sonno: il magnesio rilassa i muscoli e calma il sistema nervoso, mentre la melatonina regola il ciclo sonno-veglia.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'melatonin' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Quercetin and vitamin C enhance each other''s antioxidant effects. Vitamin C helps regenerate quercetin, extending its protective duration in the body.', 'La quercétine et la vitamine C renforcent mutuellement leurs effets antioxydants. La vitamine C aide à régénérer la quercétine, prolongeant sa durée de protection dans le corps.', 'La quercetina e la vitamina C potenziano reciprocamente i loro effetti antiossidanti. La vitamina C aiuta a rigenerare la quercetina, prolungando la sua durata protettiva nel corpo.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'quercetin' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Curcumin and boswellic acids target different inflammatory pathways (NF-kB and 5-LOX respectively). Together they provide broader anti-inflammatory support.', 'La curcumine et les acides boswelliques ciblent différentes voies inflammatoires (NF-kB et 5-LOX respectivement). Ensemble, ils offrent un soutien anti-inflammatoire plus large.', 'La curcumina e gli acidi boswellici agiscono su diverse vie infiammatorie (NF-kB e 5-LOX rispettivamente). Insieme forniscono un supporto antinfiammatorio più ampio.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'turmeric-curcumin' AND b.slug = 'boswellia';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'NAC (glutathione precursor) and milk thistle (silymarin) both support liver detoxification through complementary mechanisms. A well-established liver support stack.', 'Le NAC (précurseur du glutathion) et le chardon-Marie (silymarine) soutiennent tous deux la détoxification hépatique par des mécanismes complémentaires. Un stack de soutien hépatique bien établi.', 'Il NAC (precursore del glutatione) e il cardo mariano (silimarina) supportano entrambi la disintossicazione epatica attraverso meccanismi complementari. Uno stack di supporto epatico ben consolidato.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'nac' AND b.slug = 'milk-thistle';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'danger', 'Ginkgo biloba has blood-thinning properties and may increase bleeding risk when combined with anticoagulant medications. Consult your doctor before use.', 'Le Ginkgo biloba a des propriétés anticoagulantes et peut augmenter le risque de saignement en combinaison avec des médicaments anticoagulants. Consultez votre médecin avant utilisation.', 'Il Ginkgo biloba ha proprietà anticoagulanti e può aumentare il rischio di sanguinamento se combinato con farmaci anticoagulanti. Consultare il medico prima dell''uso.', NULL, NULL
FROM aliments WHERE slug = 'ginkgo-biloba';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Ginkgo (cerebral blood flow) + Lion''s Mane (nerve growth factor) target different aspects of cognitive function. Together they may provide enhanced neuroprotection.', 'Le Ginkgo (flux sanguin cérébral) + Crinière de Lion (facteur de croissance nerveuse) ciblent différents aspects de la fonction cognitive. Ensemble, ils peuvent offrir une neuroprotection améliorée.', 'Il Ginkgo (flusso sanguigno cerebrale) + Criniera di Leone (fattore di crescita nervosa) agiscono su diversi aspetti della funzione cognitiva. Insieme possono offrire una neuroprotezione potenziata.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'ginkgo-biloba' AND b.slug = 'lions-mane';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Elderberry and vitamin C both support immune function through different mechanisms. A classic immune support combination during cold and flu season.', 'Le sureau et la vitamine C soutiennent tous deux la fonction immunitaire par des mécanismes différents. Une combinaison classique de soutien immunitaire pendant la saison des rhumes et grippes.', 'Il sambuco e la vitamina C supportano entrambi la funzione immunitaria attraverso meccanismi diversi. Una combinazione classica di supporto immunitario durante la stagione di raffreddori e influenze.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'elderberry' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Vitamin K2 directs calcium to bones and teeth, preventing arterial calcification. Essential partner for high-dose vitamin D3 supplementation.', 'La vitamine K2 dirige le calcium vers les os et les dents, prévenant la calcification artérielle. Partenaire essentiel pour la supplémentation en vitamine D3 à haute dose.', 'La vitamina K2 dirige il calcio verso ossa e denti, prevenendo la calcificazione arteriosa. Partner essenziale per l''integrazione di vitamina D3 ad alto dosaggio.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'vitamin-k2' AND b.slug = 'vitamin-d3';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'timing_separation', 'warning', 'EGCG in green tea chelates iron, reducing its absorption by up to 60%. Take iron supplements at least 2 hours apart from green tea.', 'L''EGCG du thé vert chélate le fer, réduisant son absorption jusqu''à 60%. Prendre les suppléments de fer à au moins 2 heures du thé vert.', 'L''EGCG del tè verde chela il ferro, riducendo il suo assorbimento fino al 60%. Assumere gli integratori di ferro almeno 2 ore lontano dal tè verde.', 2, NULL
FROM aliments a, aliments b WHERE a.slug = 'green-tea-egcg' AND b.slug = 'iron-bisglycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Valerian (GABA modulation) + melatonin (circadian signaling) address different aspects of sleep onset. Together they may reduce time to fall asleep more than either alone.', 'La valériane (modulation GABA) + mélatonine (signal circadien) adressent différents aspects de l''endormissement. Ensemble, ils peuvent réduire le temps d''endormissement plus que séparément.', 'La valeriana (modulazione GABA) + melatonina (segnale circadiano) affrontano diversi aspetti dell''addormentamento. Insieme possono ridurre il tempo per addormentarsi più di ciascuno singolarmente.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'valerian-root' AND b.slug = 'melatonin';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Both are mitochondrial antioxidants. ALA regenerates CoQ10''s reduced form (ubiquinol), extending its protective effects in the electron transport chain.', 'Les deux sont des antioxydants mitochondriaux. L''ALA régénère la forme réduite du CoQ10 (ubiquinol), prolongeant ses effets protecteurs dans la chaîne de transport d''électrons.', 'Entrambi sono antiossidanti mitocondriali. L''ALA rigenera la forma ridotta del CoQ10 (ubiquinolo), prolungando i suoi effetti protettivi nella catena di trasporto degli elettroni.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'alpha-lipoic-acid' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'NMN raises NAD+ levels while resveratrol activates sirtuins that consume NAD+. Together they fuel and activate the longevity pathway simultaneously.', 'Le NMN élève les niveaux de NAD+ tandis que le resvératrol active les sirtuines qui consomment le NAD+. Ensemble, ils alimentent et activent la voie de la longévité simultanément.', 'Il NMN alza i livelli di NAD+ mentre il resveratrolo attiva le sirtuine che consumano NAD+. Insieme alimentano e attivano simultaneamente il percorso della longevità.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'nmn' AND b.slug = 'resveratrol';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Both glycine and magnesium promote relaxation and sleep quality. Magnesium glycinate already contains glycine — supplementing extra glycine (3g) before bed amplifies the calming effect.', 'La glycine et le magnésium favorisent tous deux la relaxation et la qualité du sommeil. Le glycinate de magnésium contient déjà de la glycine — supplémenter en glycine extra (3g) avant le coucher amplifie l''effet calmant.', 'Sia la glicina che il magnesio promuovono il rilassamento e la qualità del sonno. Il glicinato di magnesio contiene già glicina — integrare glicina extra (3g) prima di dormire amplifica l''effetto calmante.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'glycine' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Blood sugar medications', 'conflict', 'warning', 'Holy basil may lower blood sugar levels. Combining with diabetes medications may cause hypoglycemia. Monitor blood glucose closely and consult your doctor.', 'Le basilic sacré peut abaisser la glycémie. En combinaison avec des médicaments antidiabétiques, il peut causer une hypoglycémie. Surveiller la glycémie et consulter votre médecin.', 'Il basilico sacro può abbassare i livelli di zucchero nel sangue. In combinazione con farmaci per il diabete può causare ipoglicemia. Monitorare la glicemia e consultare il medico.', NULL, NULL
FROM aliments WHERE slug = 'holy-basil-tulsi';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Krill oil''s phospholipid form enhances absorption of fat-soluble compounds. CoQ10 taken with krill oil shows better bioavailability than with standard fish oil.', 'La forme phospholipidique de l''huile de krill améliore l''absorption des composés liposolubles. Le CoQ10 pris avec l''huile de krill montre une meilleure biodisponibilité qu''avec l''huile de poisson standard.', 'La forma fosfolipidica dell''olio di krill migliora l''assorbimento dei composti liposolubili. Il CoQ10 assunto con olio di krill mostra una migliore biodisponibilità rispetto all''olio di pesce standard.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'krill-oil' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Taurine enhances magnesium retention in cells and both support cardiovascular function. Together they improve heart rhythm stability and reduce muscle cramps.', 'La taurine améliore la rétention du magnésium dans les cellules et tous deux soutiennent la fonction cardiovasculaire. Ensemble, ils améliorent la stabilité du rythme cardiaque et réduisent les crampes.', 'La taurina migliora la ritenzione del magnesio nelle cellule ed entrambi supportano la funzione cardiovascolare. Insieme migliorano la stabilità del ritmo cardiaco e riducono i crampi.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'taurine' AND b.slug = 'magnesium-glycinate';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Immunosuppressant medications', 'conflict', 'danger', 'Echinacea stimulates immune function, which directly opposes immunosuppressant medications (cyclosporine, tacrolimus). Do not combine without medical supervision.', 'L''échinacée stimule la fonction immunitaire, ce qui s''oppose directement aux médicaments immunosuppresseurs (ciclosporine, tacrolimus). Ne pas combiner sans supervision médicale.', 'L''echinacea stimola la funzione immunitaria, opponendosi direttamente ai farmaci immunosoppressori (ciclosporina, tacrolimus). Non combinare senza supervisione medica.', NULL, NULL
FROM aliments WHERE slug = 'echinacea';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'L-Glutamine repairs intestinal lining while probiotics restore healthy gut flora. Together they provide comprehensive gut restoration support.', 'La L-Glutamine répare la muqueuse intestinale tandis que les probiotiques restaurent la flore intestinale saine. Ensemble, ils offrent un soutien complet à la restauration intestinale.', 'La L-Glutamina ripara il rivestimento intestinale mentre i probiotici ripristinano la flora intestinale sana. Insieme forniscono un supporto completo alla restaurazione intestinale.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'l-glutamine' AND b.slug = 'probiotics-lactobacillus';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'PQQ stimulates mitochondrial biogenesis (new mitochondria) while CoQ10 optimizes existing mitochondrial function. A powerful cellular energy stack.', 'Le PQQ stimule la biogenèse mitochondriale (nouvelles mitochondries) tandis que le CoQ10 optimise la fonction mitochondriale existante. Un puissant stack d''énergie cellulaire.', 'Il PQQ stimola la biogenesi mitocondriale (nuovi mitocondri) mentre il CoQ10 ottimizza la funzione mitocondriale esistente. Un potente stack di energia cellulare.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'pqq' AND b.slug = 'coenzyme-q10';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Hormone therapies (finasteride, dutasteride)', 'conflict', 'warning', 'Saw palmetto inhibits 5-alpha reductase similarly to finasteride. Combining may lead to excessive DHT suppression. Consult your urologist before combining.', 'Le palmier nain inhibe la 5-alpha réductase de manière similaire au finastéride. Combiner peut mener à une suppression excessive de la DHT. Consultez votre urologue avant de combiner.', 'La serenoa repens inibisce la 5-alfa reduttasi in modo simile alla finasteride. Combinare può portare a una soppressione eccessiva del DHT. Consultare l''urologo prima di combinare.', NULL, NULL
FROM aliments WHERE slug = 'saw-palmetto';

INSERT INTO interactions (aliment_a_id, aliment_b_id, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT a.id, b.id, 'synergy', 'info', 'Spirulina''s plant-based iron is better absorbed with vitamin C. Also, both are potent antioxidants with complementary mechanisms for immune support.', 'Le fer végétal de la spiruline est mieux absorbé avec la vitamine C. De plus, les deux sont de puissants antioxydants avec des mécanismes complémentaires pour le soutien immunitaire.', 'Il ferro vegetale della spirulina è meglio assorbito con la vitamina C. Inoltre, entrambi sono potenti antiossidanti con meccanismi complementari per il supporto immunitario.', NULL, NULL
FROM aliments a, aliments b WHERE a.slug = 'spirulina' AND b.slug = 'vitamin-c';

INSERT INTO interactions (aliment_a_id, aliment_b_name, interaction_type, severity, description_en, description_fr, description_it, separation_hours, source_ref)
SELECT id, 'Blood thinners (warfarin, aspirin)', 'conflict', 'warning', 'Chaga contains compounds that may inhibit platelet aggregation. Combined with anticoagulants, this increases bleeding risk. Consult your doctor before use.', 'Le chaga contient des composés qui peuvent inhiber l''agrégation plaquettaire. Combiné avec des anticoagulants, cela augmente le risque de saignement. Consultez votre médecin.', 'Il chaga contiene composti che possono inibire l''aggregazione piastrinica. Combinato con anticoagulanti, questo aumenta il rischio di sanguinamento. Consultare il medico.', NULL, NULL
FROM aliments WHERE slug = 'chaga-mushroom';
