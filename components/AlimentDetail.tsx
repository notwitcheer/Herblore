import { View, Text, StyleSheet, ScrollView, Pressable } from "react-native";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import * as Haptics from "expo-haptics";
import { useTranslation } from "react-i18next";
import {
  colors,
  spacing,
  radii,
  typography,
  CATEGORY_COLORS,
  withAlpha,
} from "@/lib/constants";
import { localizedField } from "@/lib/types";
import type { Aliment, SupportedLocale } from "@/lib/types";
import { EvidenceBadge } from "./EvidenceBadge";
import { InteractionBadge } from "./InteractionBadge";
import { OrnamentDivider } from "./OrnamentDivider";
import { CATEGORY_ICON_MAP } from "./icons";

interface AlimentDetailProps {
  aliment: Aliment;
  onAddToStack?: () => void;
  isInStack?: boolean;
}

function Section({
  title,
  children,
  delay = 0,
}: {
  title: string;
  children: React.ReactNode;
  delay?: number;
}) {
  return (
    <Animated.View
      entering={FadeInDown.delay(delay).duration(400).springify()}
      style={styles.section}
    >
      <View style={styles.sectionHeader}>
        <Text style={styles.sectionTitle}>{title}</Text>
        <View style={styles.sectionRule} />
      </View>
      {children}
    </Animated.View>
  );
}

export function AlimentDetail({
  aliment,
  onAddToStack,
  isInStack = false,
}: AlimentDetailProps) {
  const { i18n, t } = useTranslation();
  const locale = i18n.language as SupportedLocale;

  const name = localizedField(aliment, "name", locale);
  const summary = localizedField(aliment, "summary", locale);
  const categoryColor = CATEGORY_COLORS[aliment.category] ?? colors.primary;
  const contraindications =
    (aliment[`contraindications_${locale}`] as string[]) ??
    aliment.contraindications_en ??
    [];

  return (
    <ScrollView
      style={styles.container}
      contentContainerStyle={styles.contentContainer}
      showsVerticalScrollIndicator={false}
    >
      <Animated.View
        entering={FadeIn.duration(500)}
        style={styles.hero}
      >
        <View
          style={[
            styles.categoryPill,
            { backgroundColor: `${categoryColor}18`, borderColor: `${categoryColor}30` },
          ]}
        >
          {(() => {
            const CatIcon = CATEGORY_ICON_MAP[aliment.category];
            return CatIcon ? <CatIcon size={14} color={categoryColor} /> : null;
          })()}
          <Text style={[styles.categoryText, { color: categoryColor }]}>
            {t(`categories.${aliment.category}`)}
          </Text>
        </View>

        <Text style={styles.heroName}>{name}</Text>

        <OrnamentDivider />

        <Text style={styles.heroSummary}>{summary}</Text>

        {aliment.dosage_min != null && (
          <View style={styles.dosageBox}>
            <Text style={styles.dosageValue}>
              {aliment.dosage_min}
              {aliment.dosage_max &&
              aliment.dosage_max !== aliment.dosage_min
                ? `–${aliment.dosage_max}`
                : ""}
            </Text>
            <Text style={styles.dosageUnit}>{aliment.dosage_unit}</Text>
          </View>
        )}

        <View style={styles.heroMeta}>
          <View style={styles.metaChip}>
            <Text style={styles.metaEmoji}>
              {aliment.with_food ? "🍽" : "🫗"}
            </Text>
            <Text style={styles.metaLabel}>
              {aliment.with_food
                ? t("library.withFood")
                : t("library.emptyStomach")}
            </Text>
          </View>
          {aliment.best_time.length > 0 && (
            <View style={styles.metaChip}>
              <Text style={styles.metaEmoji}>⏰</Text>
              <Text style={styles.metaLabel}>
                {aliment.best_time
                  .map((bt) => t(`timeline.${bt}`))
                  .join(", ")}
              </Text>
            </View>
          )}
        </View>
      </Animated.View>

      {aliment.use_mode === "cure" && (
        <Section title={t("library.cureRationale")} delay={100}>
          <View style={styles.cureCard}>
            <View style={styles.cureHeader}>
              <Text style={styles.cureLabel}>🔄</Text>
              <Text style={styles.cureCycle}>
                {t("library.cure", {
                  on: aliment.cure_on_weeks,
                  off: aliment.cure_off_weeks,
                })}
              </Text>
            </View>
            {aliment.cure_rationale_en && (
              <Text style={styles.cureRationale}>
                {localizedField(aliment, "cure_rationale", locale)}
              </Text>
            )}
          </View>
        </Section>
      )}

      {aliment.benefits && aliment.benefits.length > 0 && (
        <Section title={t("library.benefits")} delay={200}>
          <View style={styles.benefitsList}>
            {aliment.benefits.map((benefit, i) => (
              <View key={benefit.id ?? i} style={styles.benefitRow}>
                <View style={styles.benefitContent}>
                  <Text style={styles.benefitText}>
                    {localizedField(benefit, "benefit", locale)}
                  </Text>
                  {benefit.goal_tags.length > 0 && (
                    <View style={styles.goalTags}>
                      {benefit.goal_tags.map((tag) => (
                        <Text key={tag} style={styles.goalTag}>
                          {t(`goals.${tag}`)}
                        </Text>
                      ))}
                    </View>
                  )}
                </View>
                <EvidenceBadge level={benefit.evidence_level} />
              </View>
            ))}
          </View>
        </Section>
      )}

      {aliment.interactions && aliment.interactions.length > 0 && (
        <Section title={t("library.interactions")} delay={300}>
          <View style={styles.interactionsList}>
            {aliment.interactions.map((interaction, i) => (
              <InteractionBadge
                key={interaction.id ?? i}
                type={interaction.interaction_type}
                severity={interaction.severity}
                description={localizedField(
                  interaction,
                  "description",
                  locale,
                )}
                separationHours={interaction.separation_hours}
              />
            ))}
          </View>
        </Section>
      )}

      {contraindications.length > 0 && (
        <Section title={t("library.contraindications")} delay={400}>
          <View style={styles.contraindicationsList}>
            {contraindications.map((item, i) => (
              <View key={i} style={styles.contraindicationRow}>
                <Text style={styles.contraindicationDot}>⚠️</Text>
                <Text style={styles.contraindicationText}>{item}</Text>
              </View>
            ))}
          </View>
        </Section>
      )}

      {aliment.source_refs.length > 0 && (
        <Section title={t("library.sources")} delay={500}>
          <View style={styles.sourcesList}>
            {aliment.source_refs.map((ref, i) => (
              <Text key={i} style={styles.sourceRef}>
                {ref}
              </Text>
            ))}
          </View>
        </Section>
      )}

      {onAddToStack && (
        <Animated.View
          entering={FadeInDown.delay(600).duration(400).springify()}
          style={styles.ctaContainer}
        >
          <Pressable
            onPress={() => {
              Haptics.notificationAsync(Haptics.NotificationFeedbackType.Success);
              onAddToStack();
            }}
            style={[styles.ctaButton, isInStack && styles.ctaButtonInStack]}
            disabled={isInStack}
          >
            <Text
              style={[styles.ctaText, isInStack && styles.ctaTextInStack]}
            >
              {isInStack
                ? t("library.inStack")
                : t("library.addToStack")}
            </Text>
          </Pressable>
        </Animated.View>
      )}

      <View style={styles.bottomSpacer} />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  contentContainer: {
    paddingBottom: spacing.xxl,
  },
  hero: {
    padding: spacing.lg,
    paddingTop: spacing.md,
    gap: spacing.sm,
    backgroundColor: colors.backgroundAlt,
    borderBottomLeftRadius: radii.xl,
    borderBottomRightRadius: radii.xl,
    borderBottomWidth: 1,
    borderBottomColor: colors.border,
  },
  categoryPill: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    alignSelf: "flex-start",
    paddingHorizontal: spacing.sm + 2,
    paddingVertical: spacing.xs,
    borderRadius: radii.full,
    borderWidth: 1,
  },
  categoryText: {
    ...typography.label,
    textTransform: "uppercase",
  },
  heroName: {
    ...typography.h1,
    color: colors.parchment,
    letterSpacing: -0.5,
  },
  heroSummary: {
    ...typography.body,
    color: colors.textSecondary,
    lineHeight: 24,
  },
  dosageBox: {
    flexDirection: "row",
    alignItems: "baseline",
    gap: 4,
    marginTop: spacing.xs,
  },
  dosageValue: {
    fontSize: 32,
    fontWeight: "800",
    color: colors.accent,
    fontVariant: ["tabular-nums"],
    letterSpacing: -1,
  },
  dosageUnit: {
    ...typography.bodyBold,
    color: colors.textSecondary,
  },
  heroMeta: {
    flexDirection: "row",
    gap: spacing.sm,
    marginTop: spacing.xs,
    flexWrap: "wrap",
  },
  metaChip: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
    backgroundColor: colors.surface,
    paddingHorizontal: spacing.sm + 2,
    paddingVertical: spacing.xs + 2,
    borderRadius: radii.full,
    borderWidth: 1,
    borderColor: colors.border,
  },
  metaEmoji: {
    fontSize: 14,
  },
  metaLabel: {
    ...typography.caption,
    color: colors.textSecondary,
  },
  section: {
    paddingHorizontal: spacing.lg,
    paddingTop: spacing.lg,
    gap: spacing.md,
  },
  sectionHeader: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  sectionTitle: {
    ...typography.h3,
    color: colors.parchment,
    letterSpacing: -0.2,
  },
  sectionRule: {
    flex: 1,
    height: 1,
    backgroundColor: colors.border,
  },
  benefitsList: {
    gap: spacing.sm,
  },
  benefitRow: {
    flexDirection: "row",
    alignItems: "flex-start",
    gap: spacing.md,
    backgroundColor: colors.surface,
    padding: spacing.md,
    borderRadius: radii.md,
    borderWidth: 1,
    borderColor: colors.border,
  },
  benefitContent: {
    flex: 1,
    gap: spacing.xs,
  },
  benefitText: {
    ...typography.body,
    color: colors.textPrimary,
    lineHeight: 22,
  },
  goalTags: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: 4,
  },
  goalTag: {
    ...typography.label,
    color: colors.textTertiary,
    textTransform: "uppercase",
    backgroundColor: colors.backgroundAlt,
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: radii.sm,
    overflow: "hidden",
  },
  interactionsList: {
    gap: spacing.sm,
  },
  cureCard: {
    backgroundColor: withAlpha("#D4A847", 0.08),
    borderRadius: radii.md,
    padding: spacing.md,
    borderWidth: 1,
    borderColor: withAlpha("#D4A847", 0.2),
    gap: spacing.sm,
  },
  cureHeader: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
  },
  cureLabel: {
    fontSize: 16,
  },
  cureCycle: {
    ...typography.bodyBold,
    color: colors.accent,
  },
  cureRationale: {
    ...typography.caption,
    color: colors.textSecondary,
    lineHeight: 20,
  },
  contraindicationsList: {
    gap: spacing.sm,
  },
  contraindicationRow: {
    flexDirection: "row",
    alignItems: "flex-start",
    gap: spacing.sm,
  },
  contraindicationDot: {
    fontSize: 12,
    marginTop: 2,
  },
  contraindicationText: {
    ...typography.caption,
    color: colors.textSecondary,
    flex: 1,
    lineHeight: 20,
  },
  sourcesList: {
    gap: spacing.xs,
  },
  sourceRef: {
    ...typography.caption,
    color: colors.accent,
    fontStyle: "italic",
    fontVariant: ["tabular-nums"],
  },
  ctaContainer: {
    paddingHorizontal: spacing.lg,
    paddingTop: spacing.xl,
  },
  ctaButton: {
    backgroundColor: colors.accent,
    paddingVertical: spacing.md,
    borderRadius: radii.lg,
    alignItems: "center",
    shadowColor: colors.accent,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.25,
    shadowRadius: 8,
    elevation: 4,
  },
  ctaButtonInStack: {
    backgroundColor: colors.surfaceElevated,
    shadowOpacity: 0,
    elevation: 0,
  },
  ctaText: {
    ...typography.bodyBold,
    color: colors.background,
    letterSpacing: 0.3,
  },
  ctaTextInStack: {
    color: colors.textSecondary,
  },
  bottomSpacer: {
    height: spacing.xxl,
  },
});
