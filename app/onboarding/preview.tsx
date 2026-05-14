import { useMemo } from "react";
import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";
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
  const { t } = useTranslation();
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
                    {block.items.length} item{block.items.length > 1 ? "s" : ""}
                  </Text>
                </View>

                {block.items.map((item, i) => (
                  <View key={i} style={styles.previewItem}>
                    <View style={styles.previewItemDot} />
                    <Text style={styles.previewItemName} numberOfLines={1}>
                      {item.aliment.name_en}
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
              Add supplements in the previous step to see your preview.
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
    backgroundColor: colors.primary,
    width: 24,
    borderRadius: 4,
  },
  progressDotDone: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: colors.primaryLight,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
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
    shadowColor: "#1B4332",
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
    ...typography.bodyBold,
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
    backgroundColor: colors.primary,
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
    backgroundColor: "rgba(45, 106, 79, 0.06)",
    borderRadius: radii.lg,
    borderWidth: 1,
    borderColor: "rgba(45, 106, 79, 0.12)",
    borderStyle: "dashed",
  },
  unlockIcon: {
    fontSize: 18,
  },
  unlockText: {
    ...typography.bodyBold,
    color: colors.primary,
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
    backgroundColor: colors.primary,
    paddingVertical: spacing.md + 2,
    borderRadius: radii.lg,
    alignItems: "center",
    shadowColor: colors.primaryDark,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.2,
    shadowRadius: 8,
    elevation: 4,
  },
  nextButtonText: {
    ...typography.bodyBold,
    color: "#FFFFFF",
    letterSpacing: 0.3,
  },
});
