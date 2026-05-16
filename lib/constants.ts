export function withAlpha(hex: string, alpha: number): string {
  const r = parseInt(hex.slice(1, 3), 16);
  const g = parseInt(hex.slice(3, 5), 16);
  const b = parseInt(hex.slice(5, 7), 16);
  return `rgba(${r}, ${g}, ${b}, ${alpha})`;
}

export const fonts = {
  serif: "CrimsonPro-Regular",
  serifMedium: "CrimsonPro-Medium",
  serifSemiBold: "CrimsonPro-SemiBold",
  serifBold: "CrimsonPro-Bold",
} as const;

export const colors = {
  background: "#1A1612",
  backgroundAlt: "#231E18",
  surface: "#2A2318",
  surfaceElevated: "#342C20",

  parchment: "#E8DCC8",
  parchmentDark: "#C4B59A",

  primary: "#4A7C59",
  primaryLight: "#6B9E78",
  primaryDark: "#2D5A3A",

  accent: "#D4A847",
  accentGlow: "#E8C56D",
  accentWarm: "#C4813D",

  textPrimary: "#E8DCC8",
  textSecondary: "#9E8E75",
  textTertiary: "#6B5D4A",

  evidenceClinical: "#5BA66B",
  evidenceObservational: "#D4A847",
  evidenceTraditional: "#C4813D",

  danger: "#C45C4A",
  synergy: "#5BA66B",
  warning: "#D4A847",

  border: "#3D3428",
  divider: "#2E271E",
} as const;

export const spacing = {
  xs: 4,
  sm: 8,
  md: 16,
  lg: 24,
  xl: 32,
  xxl: 48,
} as const;

export const radii = {
  sm: 6,
  md: 10,
  lg: 14,
  xl: 22,
  full: 9999,
} as const;

export const typography = {
  h1: {
    fontSize: 30,
    fontFamily: fonts.serifBold,
    lineHeight: 36,
  },
  h2: {
    fontSize: 24,
    fontFamily: fonts.serifSemiBold,
    lineHeight: 30,
  },
  h3: {
    fontSize: 19,
    fontFamily: fonts.serifSemiBold,
    lineHeight: 25,
  },
  body: { fontSize: 16, fontWeight: "400" as const, lineHeight: 22 },
  bodyBold: { fontSize: 16, fontWeight: "600" as const, lineHeight: 22 },
  caption: { fontSize: 13, fontWeight: "400" as const, lineHeight: 18 },
  captionBold: { fontSize: 13, fontWeight: "600" as const, lineHeight: 18 },
  label: {
    fontSize: 12,
    fontFamily: fonts.serifMedium,
    lineHeight: 16,
    letterSpacing: 0.8,
  },
  dosage: {
    fontSize: 22,
    fontWeight: "700" as const,
    fontVariant: ["tabular-nums" as const],
  },
} as const;

export const GOALS = [
  { slug: "energy", icon: "⚡", color: "#D4A847" },
  { slug: "sleep", icon: "🌙", color: "#7B8FA8" },
  { slug: "immunity", icon: "🛡️", color: "#5BA66B" },
  { slug: "focus", icon: "🎯", color: "#9E7CB5" },
  { slug: "stress", icon: "🧘", color: "#6B9E78" },
  { slug: "digestion", icon: "🫆", color: "#C4813D" },
  { slug: "skin", icon: "✨", color: "#C48A6B" },
  { slug: "longevity", icon: "🧬", color: "#7BA8A0" },
  { slug: "recovery", icon: "💪", color: "#C45C4A" },
  { slug: "joint_health", icon: "🦴", color: "#9E8E75" },
] as const;

export const TIME_BLOCKS = [
  "wake",
  "breakfast",
  "lunch",
  "afternoon",
  "dinner",
  "bedtime",
] as const;

export const CATEGORY_COLORS: Record<string, string> = {
  vitamin: "#6B9E78",
  mineral: "#7B8FA8",
  amino_acid: "#9E7CB5",
  adaptogen: "#5BA66B",
  mushroom: "#C4813D",
  superfood: "#6B9E78",
  herb: "#4A7C59",
  spice: "#C45C4A",
  fermented_food: "#D4A847",
  functional_food: "#7BA8A0",
  fatty_acid: "#7B8FA8",
  probiotic: "#9E7CB5",
  specialty_compound: "#7B8FA8",
};

export const BLOCK_ICONS: Record<string, string> = {
  wake: "🌅",
  breakfast: "🍳",
  lunch: "🥗",
  afternoon: "☀️",
  dinner: "🍽",
  bedtime: "🌙",
};

export const TIME_PERIOD_MAP: Record<string, string> = {
  wake: "AM",
  morning: "AM",
  afternoon: "PM",
  evening: "PM",
  bedtime: "PM",
};

export const shadows = {
  card: {
    shadowColor: colors.accentWarm,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.06,
    shadowRadius: 12,
    elevation: 3,
  },
  glow: {
    shadowColor: colors.accent,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.25,
    shadowRadius: 8,
    elevation: 4,
  },
} as const;

export const springs = {
  pressIn: { damping: 15, stiffness: 400 },
  pressOut: { damping: 12, stiffness: 300 },
  scaleIn: 0.97,
  scaleInSubtle: 0.98,
  scaleInStrong: 0.93,
} as const;

export const FREE_TIER_LIMIT = 20;
export const AI_DAILY_LIMIT = 10;
