import { View, Text, StyleSheet } from "react-native";
import { useTranslation } from "react-i18next";
import { colors, spacing, radii, typography } from "@/lib/constants";
import type { EvidenceLevel } from "@/lib/types";

const EVIDENCE_CONFIG: Record<
  EvidenceLevel,
  { color: string; bg: string; dot: string }
> = {
  clinical_trial: {
    color: colors.evidenceClinical,
    bg: "rgba(91, 166, 107, 0.12)",
    dot: "rgba(91, 166, 107, 0.7)",
  },
  observational: {
    color: colors.evidenceObservational,
    bg: "rgba(212, 168, 71, 0.12)",
    dot: "rgba(212, 168, 71, 0.7)",
  },
  traditional: {
    color: colors.evidenceTraditional,
    bg: "rgba(196, 129, 61, 0.12)",
    dot: "rgba(196, 129, 61, 0.7)",
  },
};

interface EvidenceBadgeProps {
  level: EvidenceLevel;
  compact?: boolean;
}

export function EvidenceBadge({ level, compact = false }: EvidenceBadgeProps) {
  const { t } = useTranslation();
  const config = EVIDENCE_CONFIG[level];

  if (compact) {
    return (
      <View style={[styles.dot, { backgroundColor: config.dot }]} />
    );
  }

  return (
    <View style={[styles.badge, { backgroundColor: config.bg, borderColor: `${config.color}30` }]}>
      <View style={[styles.dot, { backgroundColor: config.color }]} />
      <Text style={[styles.label, { color: config.color }]}>
        {t(`evidence.${level}`)}
      </Text>
    </View>
  );
}

export function EvidenceDots({
  levels,
}: {
  levels: EvidenceLevel[];
}) {
  const unique = [...new Set(levels)];
  return (
    <View style={styles.dotsRow}>
      {unique.map((level) => (
        <EvidenceBadge key={level} level={level} compact />
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  badge: {
    flexDirection: "row",
    alignItems: "center",
    paddingHorizontal: spacing.sm + 2,
    paddingVertical: spacing.xs,
    borderRadius: radii.full,
    gap: spacing.xs,
    alignSelf: "flex-start",
    borderWidth: 1,
  },
  dot: {
    width: 7,
    height: 7,
    borderRadius: 3.5,
  },
  label: {
    ...typography.label,
    textTransform: "uppercase",
  },
  dotsRow: {
    flexDirection: "row",
    gap: 4,
    alignItems: "center",
  },
});
