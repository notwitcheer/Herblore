import { View, Text, StyleSheet } from "react-native";
import { useTranslation } from "react-i18next";
import { colors, spacing, radii, typography, withAlpha } from "@/lib/constants";
import type { InteractionType, InteractionSeverity } from "@/lib/types";

const TYPE_CONFIG: Record<
  InteractionType,
  { icon: string; labelKey: string; color: string; bg: string }
> = {
  synergy: {
    icon: "↗",
    labelKey: "interactions.synergy",
    color: colors.synergy,
    bg: withAlpha("#5BA66B", 0.1),
  },
  conflict: {
    icon: "⚠",
    labelKey: "interactions.conflict",
    color: colors.danger,
    bg: withAlpha("#C45C4A", 0.1),
  },
  timing_separation: {
    icon: "⏱",
    labelKey: "interactions.timing",
    color: colors.warning,
    bg: withAlpha("#D4A847", 0.1),
  },
};

const SEVERITY_BORDER: Record<InteractionSeverity, string> = {
  info: colors.border,
  warning: withAlpha("#D4A847", 0.3),
  danger: withAlpha("#C45C4A", 0.3),
};

interface InteractionBadgeProps {
  type: InteractionType;
  severity: InteractionSeverity;
  description: string;
  separationHours?: number | null;
  compact?: boolean;
}

export function InteractionBadge({
  type,
  severity,
  description,
  separationHours,
  compact = false,
}: InteractionBadgeProps) {
  const { t } = useTranslation();
  const config = TYPE_CONFIG[type];
  const label = t(config.labelKey);

  if (compact) {
    return (
      <View style={[styles.compactBadge, { backgroundColor: config.bg, borderColor: `${config.color}30` }]}>
        <Text style={styles.compactIcon}>{config.icon}</Text>
        <Text style={[styles.compactLabel, { color: config.color }]}>
          {label}
        </Text>
      </View>
    );
  }

  return (
    <View
      style={[
        styles.card,
        {
          backgroundColor: config.bg,
          borderLeftColor: config.color,
          borderColor: SEVERITY_BORDER[severity],
        },
      ]}
    >
      <View style={styles.header}>
        <Text style={[styles.icon, { color: config.color }]}>
          {config.icon}
        </Text>
        <Text style={[styles.typeLabel, { color: config.color }]}>
          {label}
        </Text>
        {separationHours != null && (
          <Text style={styles.hours}>
            {t("interactions.hoursApart", { hours: separationHours })}
          </Text>
        )}
      </View>
      <Text style={styles.description}>{description}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  card: {
    borderRadius: radii.md,
    padding: spacing.md,
    borderLeftWidth: 3,
    borderWidth: 1,
    gap: spacing.xs,
  },
  header: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
  },
  icon: {
    fontSize: 14,
    fontWeight: "700",
  },
  typeLabel: {
    ...typography.captionBold,
    textTransform: "uppercase",
    letterSpacing: 0.8,
    flex: 1,
  },
  hours: {
    ...typography.caption,
    color: colors.textSecondary,
  },
  description: {
    ...typography.caption,
    color: colors.textSecondary,
    lineHeight: 18,
  },
  compactBadge: {
    flexDirection: "row",
    alignItems: "center",
    paddingHorizontal: spacing.sm,
    paddingVertical: spacing.xs,
    borderRadius: radii.full,
    gap: 4,
    borderWidth: 1,
  },
  compactIcon: {
    fontSize: 10,
  },
  compactLabel: {
    ...typography.label,
    textTransform: "uppercase",
  },
});
