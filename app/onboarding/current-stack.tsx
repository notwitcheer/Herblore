import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { localizedField, type SupportedLocale } from "@/lib/types";
import { MOCK_ALIMENTS } from "@/lib/mock-data";
import { useStackContext } from "@/lib/StackContext";

const popularAliments = MOCK_ALIMENTS.filter((a) => a.is_popular);

export default function CurrentStackScreen() {
  const { t, i18n } = useTranslation();
  const locale = i18n.language as SupportedLocale;
  const router = useRouter();
  const { addToStack, removeFromStack, isInStack } = useStackContext();

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        style={styles.scroll}
        contentContainerStyle={styles.content}
        showsVerticalScrollIndicator={false}
      >
        <Animated.View entering={FadeIn.duration(600)} style={styles.header}>
          <View style={styles.progress}>
            <View style={styles.progressDotDone} />
            <View style={[styles.progressDot, styles.progressDotActive]} />
            <View style={styles.progressDot} />
            <View style={styles.progressDot} />
          </View>

          <Text style={styles.title}>{t("onboarding.stackTitle")}</Text>
          <Text style={styles.subtitle}>
            {t("onboarding.stackSubtitle")}
          </Text>
        </Animated.View>

        <View style={styles.grid}>
          {popularAliments.map((aliment, index) => {
            const inStack = isInStack(aliment.id);
            const name = localizedField(aliment, "name", locale);
            return (
              <Animated.View
                key={aliment.slug}
                entering={FadeInDown.delay(index * 50)
                  .duration(400)
                  .springify()}
              >
                <Pressable
                  style={[styles.quickCard, inStack && styles.quickCardActive]}
                  onPress={() =>
                    inStack
                      ? removeFromStack(aliment.id)
                      : addToStack(aliment)
                  }
                >
                  <Text style={[styles.quickCardCheck, inStack && styles.quickCardCheckActive]}>
                    {inStack ? "✓" : "+"}
                  </Text>
                  <Text
                    style={[
                      styles.quickCardName,
                      inStack && styles.quickCardNameActive,
                    ]}
                    numberOfLines={2}
                  >
                    {name}
                  </Text>
                  {aliment.dosage_unit && (
                    <Text style={styles.quickCardDosage}>
                      {aliment.dosage_min}–{aliment.dosage_max}{" "}
                      {aliment.dosage_unit}
                    </Text>
                  )}
                </Pressable>
              </Animated.View>
            );
          })}
        </View>
      </ScrollView>

      <Animated.View
        entering={FadeInDown.delay(400).duration(400)}
        style={styles.footer}
      >
        <Pressable
          style={styles.skipButton}
          onPress={() => router.push("/onboarding/preview")}
        >
          <Text style={styles.skipText}>{t("onboarding.skip")}</Text>
        </Pressable>
        <Pressable
          style={styles.nextButton}
          onPress={() => router.push("/onboarding/preview")}
        >
          <Text style={styles.nextButtonText}>{t("onboarding.next")}</Text>
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
  scroll: {
    flex: 1,
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
  grid: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: spacing.sm,
  },
  quickCard: {
    backgroundColor: colors.surface,
    borderRadius: radii.md,
    padding: spacing.md,
    width: 155,
    gap: spacing.xs,
    borderWidth: 1,
    borderColor: colors.border,
  },
  quickCardActive: {
    borderColor: colors.accent,
    backgroundColor: "rgba(212, 168, 71, 0.08)",
  },
  quickCardCheck: {
    ...typography.bodyBold,
    color: colors.textTertiary,
    fontSize: 18,
  },
  quickCardCheckActive: {
    color: colors.accent,
  },
  quickCardName: {
    ...typography.captionBold,
    color: colors.textPrimary,
  },
  quickCardNameActive: {
    color: colors.accent,
  },
  quickCardDosage: {
    ...typography.caption,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
  },
  footer: {
    flexDirection: "row",
    paddingHorizontal: spacing.lg,
    paddingBottom: spacing.xl,
    paddingTop: spacing.md,
    gap: spacing.sm,
  },
  skipButton: {
    flex: 1,
    paddingVertical: spacing.md + 2,
    borderRadius: radii.lg,
    alignItems: "center",
    backgroundColor: colors.surface,
    borderWidth: 1,
    borderColor: colors.border,
  },
  skipText: {
    ...typography.bodyBold,
    color: colors.textSecondary,
  },
  nextButton: {
    flex: 2,
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
