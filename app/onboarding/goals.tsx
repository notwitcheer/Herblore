import { useState } from "react";
import { View, Text, StyleSheet, Pressable } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography, GOALS } from "@/lib/constants";
import { GoalChip } from "@/components/GoalChip";
import type { GoalSlug } from "@/lib/types";

export default function GoalsScreen() {
  const { t } = useTranslation();
  const router = useRouter();
  const [selected, setSelected] = useState<GoalSlug[]>([]);

  const toggleGoal = (slug: GoalSlug) => {
    setSelected((prev) => {
      if (prev.includes(slug)) return prev.filter((s) => s !== slug);
      if (prev.length >= 5) return prev;
      return [...prev, slug];
    });
  };

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.content}>
        <Animated.View entering={FadeIn.duration(600)} style={styles.header}>
          <View style={styles.progress}>
            <View style={[styles.progressDot, styles.progressDotActive]} />
            <View style={styles.progressDot} />
            <View style={styles.progressDot} />
            <View style={styles.progressDot} />
          </View>

          <Text style={styles.title}>{t("onboarding.goalsTitle")}</Text>
          <Text style={styles.subtitle}>
            {t("onboarding.goalsSubtitle")}
          </Text>
        </Animated.View>

        <Animated.View
          entering={FadeInDown.delay(200).duration(500).springify()}
          style={styles.chips}
        >
          {GOALS.map((goal) => (
            <GoalChip
              key={goal.slug}
              slug={goal.slug as GoalSlug}
              icon={goal.icon}
              color={goal.color}
              selected={selected.includes(goal.slug as GoalSlug)}
              onPress={() => toggleGoal(goal.slug as GoalSlug)}
            />
          ))}
        </Animated.View>
      </View>

      <Animated.View
        entering={FadeInDown.delay(400).duration(400)}
        style={styles.footer}
      >
        <Pressable
          style={[
            styles.nextButton,
            selected.length === 0 && styles.nextButtonDisabled,
          ]}
          onPress={() => router.push("/onboarding/current-stack")}
          disabled={selected.length === 0}
        >
          <Text style={[styles.nextButtonText, selected.length === 0 && styles.nextButtonTextDisabled]}>
            {t("onboarding.next")}
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
    flex: 1,
    paddingHorizontal: spacing.lg,
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
  chips: {
    flexDirection: "row",
    flexWrap: "wrap",
    gap: spacing.sm,
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
  nextButtonDisabled: {
    backgroundColor: colors.surface,
    borderWidth: 1,
    borderColor: colors.border,
    shadowOpacity: 0,
    elevation: 0,
  },
  nextButtonText: {
    ...typography.bodyBold,
    color: colors.background,
    letterSpacing: 0.3,
  },
  nextButtonTextDisabled: {
    color: colors.textTertiary,
  },
});
