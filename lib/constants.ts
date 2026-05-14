import { Dimensions } from "react-native";

export const { width: SCREEN_WIDTH, height: SCREEN_HEIGHT } =
  Dimensions.get("window");

export const colors = {
  primary: "#2D6A4F",
  primaryLight: "#52B788",
  primaryDark: "#1B4332",
  accent: "#F4A261",

  background: "#FAFAF5",
  surface: "#FFFFFF",
  surfaceElevated: "#F5F5F0",

  textPrimary: "#1A1A1A",
  textSecondary: "#6B7280",
  textTertiary: "#9CA3AF",

  evidenceClinical: "#16A34A",
  evidenceObservational: "#EAB308",
  evidenceTraditional: "#F97316",

  danger: "#DC2626",
  synergy: "#059669",
  warning: "#F59E0B",

  border: "#E5E7EB",
  divider: "#F3F4F6",
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
  md: 12,
  lg: 16,
  xl: 24,
  full: 9999,
} as const;

export const typography = {
  h1: { fontSize: 28, fontWeight: "700" as const, lineHeight: 34 },
  h2: { fontSize: 22, fontWeight: "700" as const, lineHeight: 28 },
  h3: { fontSize: 18, fontWeight: "600" as const, lineHeight: 24 },
  body: { fontSize: 16, fontWeight: "400" as const, lineHeight: 22 },
  bodyBold: { fontSize: 16, fontWeight: "600" as const, lineHeight: 22 },
  caption: { fontSize: 13, fontWeight: "400" as const, lineHeight: 18 },
  captionBold: { fontSize: 13, fontWeight: "600" as const, lineHeight: 18 },
  label: { fontSize: 11, fontWeight: "600" as const, lineHeight: 14, letterSpacing: 0.5 },
  dosage: { fontSize: 20, fontWeight: "700" as const, fontVariant: ["tabular-nums" as const] },
} as const;

export const GOALS = [
  { slug: "energy", icon: "⚡", color: "#F59E0B" },
  { slug: "sleep", icon: "🌙", color: "#6366F1" },
  { slug: "immunity", icon: "🛡️", color: "#3B82F6" },
  { slug: "focus", icon: "🎯", color: "#8B5CF6" },
  { slug: "stress", icon: "🧘", color: "#14B8A6" },
  { slug: "digestion", icon: "🫆", color: "#F97316" },
  { slug: "skin", icon: "✨", color: "#EC4899" },
  { slug: "longevity", icon: "🧬", color: "#06B6D4" },
  { slug: "recovery", icon: "💪", color: "#EF4444" },
  { slug: "joint_health", icon: "🦴", color: "#78716C" },
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
