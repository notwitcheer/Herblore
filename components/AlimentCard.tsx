import { Pressable, View, Text, StyleSheet } from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  FadeInDown,
} from "react-native-reanimated";
import { useTranslation } from "react-i18next";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { localizedField } from "@/lib/types";
import type { Aliment, SupportedLocale, EvidenceLevel } from "@/lib/types";
import { EvidenceDots } from "./EvidenceBadge";

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

const CATEGORY_COLORS: Record<string, string> = {
  vitamin: "#3B82F6",
  mineral: "#6366F1",
  amino_acid: "#8B5CF6",
  adaptogen: "#059669",
  mushroom: "#92400E",
  superfood: "#16A34A",
  herb: "#2D6A4F",
  spice: "#DC2626",
  fermented_food: "#D97706",
  functional_food: "#0891B2",
  fatty_acid: "#0EA5E9",
  probiotic: "#7C3AED",
  specialty_compound: "#4F46E5",
};

interface AlimentCardProps {
  aliment: Aliment;
  index?: number;
  onPress: () => void;
  locked?: boolean;
}

export function AlimentCard({
  aliment,
  index = 0,
  onPress,
  locked = false,
}: AlimentCardProps) {
  const { i18n, t } = useTranslation();
  const locale = i18n.language as SupportedLocale;
  const scale = useSharedValue(1);

  const name = localizedField(aliment, "name", locale);
  const summary = localizedField(aliment, "summary", locale);
  const categoryColor = CATEGORY_COLORS[aliment.category] ?? colors.primary;
  const evidenceLevels: EvidenceLevel[] = aliment.benefits?.map(
    (b) => b.evidence_level,
  ) ?? [];

  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  return (
    <AnimatedPressable
      onPress={onPress}
      onPressIn={() => {
        scale.value = withSpring(0.97, { damping: 15, stiffness: 400 });
      }}
      onPressOut={() => {
        scale.value = withSpring(1, { damping: 12, stiffness: 300 });
      }}
      entering={FadeInDown.delay(index * 60).duration(400).springify()}
      style={[styles.card, animatedStyle]}
    >
      <View style={[styles.accent, { backgroundColor: categoryColor }]} />

      <View style={styles.content}>
        <View style={styles.topRow}>
          <View style={styles.nameColumn}>
            <Text style={styles.name} numberOfLines={1}>
              {name}
            </Text>
            {aliment.dosage_min != null && (
              <Text style={styles.dosage}>
                {aliment.dosage_min}
                {aliment.dosage_max && aliment.dosage_max !== aliment.dosage_min
                  ? `–${aliment.dosage_max}`
                  : ""}
                {" "}
                {aliment.dosage_unit}
              </Text>
            )}
          </View>

          <View
            style={[
              styles.categoryPill,
              { backgroundColor: `${categoryColor}10` },
            ]}
          >
            <Text style={[styles.categoryText, { color: categoryColor }]}>
              {t(`categories.${aliment.category}`)}
            </Text>
          </View>
        </View>

        <Text style={styles.summary} numberOfLines={2}>
          {summary}
        </Text>

        <View style={styles.bottomRow}>
          <EvidenceDots levels={evidenceLevels} />

          <View style={styles.meta}>
            {aliment.best_time.length > 0 && (
              <Text style={styles.metaText}>
                {aliment.best_time
                  .map((t) =>
                    t === "wake"
                      ? "AM"
                      : t === "morning"
                        ? "AM"
                        : t === "afternoon"
                          ? "PM"
                          : t === "evening"
                            ? "PM"
                            : "PM",
                  )
                  .filter((v, i, a) => a.indexOf(v) === i)
                  .join("/")}
              </Text>
            )}
            {aliment.use_mode === "cure" && (
              <Text style={styles.cureTag}>cycle</Text>
            )}
          </View>
        </View>
      </View>

      {locked && (
        <View style={styles.lockOverlay}>
          <Text style={styles.lockIcon}>🔒</Text>
        </View>
      )}
    </AnimatedPressable>
  );
}

const styles = StyleSheet.create({
  card: {
    flexDirection: "row",
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    overflow: "hidden",
    shadowColor: "#1B4332",
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.06,
    shadowRadius: 12,
    elevation: 3,
  },
  accent: {
    width: 4,
  },
  content: {
    flex: 1,
    padding: spacing.md,
    gap: spacing.sm,
  },
  topRow: {
    flexDirection: "row",
    alignItems: "flex-start",
    justifyContent: "space-between",
    gap: spacing.sm,
  },
  nameColumn: {
    flex: 1,
    gap: 2,
  },
  name: {
    ...typography.bodyBold,
    color: colors.textPrimary,
    letterSpacing: -0.2,
  },
  dosage: {
    ...typography.caption,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
  },
  categoryPill: {
    paddingHorizontal: spacing.sm,
    paddingVertical: 3,
    borderRadius: radii.full,
  },
  categoryText: {
    ...typography.label,
    textTransform: "uppercase",
  },
  summary: {
    ...typography.caption,
    color: colors.textSecondary,
    lineHeight: 19,
  },
  bottomRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  meta: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
  },
  metaText: {
    ...typography.label,
    color: colors.textTertiary,
    textTransform: "uppercase",
  },
  cureTag: {
    ...typography.label,
    color: colors.accent,
    textTransform: "uppercase",
    backgroundColor: "rgba(244, 162, 97, 0.1)",
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: radii.sm,
    overflow: "hidden",
  },
  lockOverlay: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(250, 250, 245, 0.7)",
    justifyContent: "center",
    alignItems: "center",
    borderRadius: radii.lg,
  },
  lockIcon: {
    fontSize: 20,
  },
});
