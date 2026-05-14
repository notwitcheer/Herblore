import { Dimensions } from "react-native";

export const { width: SCREEN_WIDTH, height: SCREEN_HEIGHT } =
  Dimensions.get("window");

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

export const FREE_TIER_LIMIT = 20;
export const AI_DAILY_LIMIT = 10;
