import { useMemo } from "react";
import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { localizedField, type SupportedLocale } from "@/lib/types";
import { useStackContext } from "@/lib/StackContext";
import { generateTimeline } from "@/lib/timeline-engine";

const BLOCK_ICONS: Record<string, string> = {
  wake: "🌅",
  breakfast: "🍳",
  lunch: "🥗",
  afternoon: "☀️",
  dinner: "🍽",
  bedtime: "🌙",
};

export default function PreviewScreen() {
  const { t, i18n } = useTranslation();
  const locale = i18n.language as SupportedLocale;
  const router = useRouter();
  const { items } = useStackContext();
  const timeline = useMemo(() => generateTimeline(items), [items]);

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        contentContainerStyle={styles.content}
        showsVerticalScrollIndicator={false}
      >
        <Animated.View entering={FadeIn.duration(600)} style={styles.header}>
          <View style={styles.progress}>
            <View style={styles.progressDotDone} />
            <View style={styles.progressDotDone} />
            <View style={[styles.progressDot, styles.progressDotActive]} />
            <View style={styles.progressDot} />
          </View>

          <Text style={styles.title}>{t("onboarding.previewTitle")}</Text>
          <Text style={styles.subtitle}>
            {t("onboarding.previewSubtitle")}
          </Text>
        </Animated.View>

        {timeline.length > 0 ? (
          <View style={styles.previewTimeline}>
            {timeline.map((block, index) => (
              <Animated.View
                key={block.timeBlock}
                entering={FadeInDown.delay(index * 100 + 200)
                  .duration(400)
                  .springify()}
                style={styles.previewBlock}
              >
                <View style={styles.previewBlockHeader}>
                  <Text style={styles.previewIcon}>
                    {BLOCK_ICONS[block.timeBlock]}
                  </Text>
                  <Text style={styles.previewLabel}>
                    {t(`timeline.${block.timeBlock}`)}
                  </Text>
                  <Text style={styles.previewCount}>
                    {block.items.length}
                  </Text>
                </View>

                {block.items.map((item, i) => (
                  <View key={i} style={styles.previewItem}>
                    <View style={styles.previewItemDot} />
                    <Text style={styles.previewItemName} numberOfLines={1}>
                      {localizedField(item.aliment, "name", locale)}
                    </Text>
                    <View style={styles.blurOverlay}>
                      <Text style={styles.blurText}>
                        {item.dosage} {item.dosageUnit}
                      </Text>
                    </View>
                  </View>
                ))}
              </Animated.View>
            ))}

            <Animated.View
              entering={FadeInDown.delay(600).duration(400)}
              style={styles.unlockBanner}
            >
              <Text style={styles.unlockIcon}>🔓</Text>
              <Text style={styles.unlockText}>
                {t("onboarding.unlock")}
              </Text>
            </Animated.View>
          </View>
        ) : (
          <Animated.View
            entering={FadeIn.delay(300).duration(400)}
            style={styles.emptyPreview}
          >
            <Text style={styles.emptyEmoji}>📋</Text>
            <Text style={styles.emptyText}>
              {t("onboarding.previewEmpty", "Add supplements in the previous step to see your preview.")}
            </Text>
          </Animated.View>
        )}
      </ScrollView>

      <Animated.View
        entering={FadeInDown.delay(500).duration(400)}
        style={styles.footer}
      >
        <Pressable
          style={styles.nextButton}
          onPress={() => router.push("/onboarding/paywall")}
        >
          <Text style={styles.nextButtonText}>
            {t("onboarding.getStarted")}
          </Text>
        </Pressable>
      </Animated.View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  content: {
    paddingHorizontal: spacing.lg,
    paddingBottom: spacing.md,
  },
  header: {
    paddingTop: spacing.xl,
    gap: spacing.sm,
    marginBottom: spacing.xl,
  },
  progress: {
    flexDirection: "row",
    gap: spacing.xs,
    marginBottom: spacing.md,
  },
  progressDot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: colors.border,
  },
  progressDotActive: {
    backgroundColor: colors.accent,
    width: 24,
    borderRadius: 4,
  },
  progressDotDone: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: colors.accentWarm,
  },
  title: {
    ...typography.h1,
    color: colors.parchment,
    letterSpacing: -0.5,
  },
  subtitle: {
    ...typography.body,
    color: colors.textSecondary,
    lineHeight: 24,
  },
  previewTimeline: {
    gap: spacing.md,
  },
  previewBlock: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    padding: spacing.md,
    gap: spacing.sm,
    borderWidth: 1,
    borderColor: colors.border,
    shadowColor: colors.accentWarm,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.06,
    shadowRadius: 12,
    elevation: 3,
  },
  previewBlockHeader: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  previewIcon: {
    fontSize: 20,
  },
  previewLabel: {
    ...typography.h3,
    color: colors.textPrimary,
    flex: 1,
  },
  previewCount: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  previewItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
    paddingLeft: spacing.xs,
  },
  previewItemDot: {
    width: 5,
    height: 5,
    borderRadius: 2.5,
    backgroundColor: colors.accent,
  },
  previewItemName: {
    ...typography.body,
    color: colors.textPrimary,
    flex: 1,
  },
  blurOverlay: {
    backgroundColor: colors.surfaceElevated,
    paddingHorizontal: spacing.sm,
    paddingVertical: 2,
    borderRadius: radii.sm,
  },
  blurText: {
    ...typography.caption,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
  },
  unlockBanner: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: spacing.sm,
    paddingVertical: spacing.md,
    backgroundColor: "rgba(212, 168, 71, 0.06)",
    borderRadius: radii.lg,
    borderWidth: 1,
    borderColor: "rgba(212, 168, 71, 0.2)",
    borderStyle: "dashed",
  },
  unlockIcon: {
    fontSize: 18,
  },
  unlockText: {
    ...typography.bodyBold,
    color: colors.accent,
  },
  emptyPreview: {
    alignItems: "center",
    gap: spacing.md,
    paddingVertical: spacing.xxl,
  },
  emptyEmoji: { fontSize: 48 },
  emptyText: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
  },
  footer: {
    paddingHorizontal: spacing.lg,
    paddingBottom: spacing.xl,
    paddingTop: spacing.md,
  },
  nextButton: {
    backgroundColor: colors.accent,
    paddingVertical: spacing.md + 2,
    borderRadius: radii.lg,
    alignItems: "center",
    shadowColor: colors.accent,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.25,
    shadowRadius: 8,
    elevation: 4,
  },
  nextButtonText: {
    ...typography.bodyBold,
    color: colors.background,
    letterSpacing: 0.3,
  },
});
