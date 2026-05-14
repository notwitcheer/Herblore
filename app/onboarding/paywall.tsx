import { useState } from "react";
import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";

type Plan = "weekly" | "yearly";

const FEATURE_KEYS = [
  { icon: "📚", key: "feature1" },
  { icon: "⏰", key: "feature2" },
  { icon: "⚡", key: "feature3" },
  { icon: "🎯", key: "feature4" },
];

export default function PaywallScreen() {
  const { t } = useTranslation();
  const router = useRouter();
  const [selectedPlan, setSelectedPlan] = useState<Plan>("yearly");

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
            <View style={styles.progressDotDone} />
            <View style={[styles.progressDot, styles.progressDotActive]} />
          </View>

          <Text style={styles.brandIcon}>🌿</Text>
          <Text style={styles.title}>{t("paywall.title")}</Text>
          <Text style={styles.subtitle}>{t("paywall.subtitle")}</Text>
        </Animated.View>

        {/* Features */}
        <Animated.View
          entering={FadeInDown.delay(200).duration(400).springify()}
          style={styles.features}
        >
          {FEATURE_KEYS.map((feature, i) => (
            <View key={i} style={styles.featureRow}>
              <Text style={styles.featureIcon}>{feature.icon}</Text>
              <Text style={styles.featureText}>
                {t(`paywall.${feature.key}`)}
              </Text>
            </View>
          ))}
        </Animated.View>

        {/* Plans */}
        <Animated.View
          entering={FadeInDown.delay(400).duration(400).springify()}
          style={styles.plans}
        >
          <Pressable
            style={[
              styles.planCard,
              selectedPlan === "yearly" && styles.planCardSelected,
            ]}
            onPress={() => setSelectedPlan("yearly")}
          >
            <View style={styles.savingsBadge}>
              <Text style={styles.savingsText}>
                {t("paywall.yearlySavings")}
              </Text>
            </View>
            <Text style={styles.planName}>{t("paywall.yearly")}</Text>
            <Text style={styles.planPrice}>{t("paywall.yearlyPrice")}</Text>
            <Text style={styles.planBreakdown}>
              {t("paywall.yearlyBreakdown")}
            </Text>
          </Pressable>

          <Pressable
            style={[
              styles.planCard,
              selectedPlan === "weekly" && styles.planCardSelected,
            ]}
            onPress={() => setSelectedPlan("weekly")}
          >
            <Text style={styles.planName}>{t("paywall.weekly")}</Text>
            <Text style={styles.planPrice}>{t("paywall.weeklyPrice")}</Text>
          </Pressable>
        </Animated.View>

        {/* Social proof */}
        <Animated.View
          entering={FadeInDown.delay(500).duration(400)}
          style={styles.socialProof}
        >
          <Text style={styles.socialText}>
            {t("paywall.socialProof")}
          </Text>
        </Animated.View>
      </ScrollView>

      <Animated.View
        entering={FadeInDown.delay(600).duration(400)}
        style={styles.footer}
      >
        <Pressable
          style={styles.ctaButton}
          onPress={() => {
            // TODO: RevenueCat purchase flow
            router.replace("/(tabs)/library");
          }}
        >
          <Text style={styles.ctaText}>{t("paywall.subscribe")}</Text>
        </Pressable>
        <Text style={styles.trialInfo}>
          {t("paywall.trialInfo", {
            price:
              selectedPlan === "yearly"
                ? t("paywall.yearlyPrice")
                : t("paywall.weeklyPrice"),
          })}
        </Text>
        <Pressable onPress={() => router.replace("/(tabs)/library")}>
          <Text style={styles.restoreText}>{t("paywall.restore")}</Text>
        </Pressable>
        <Text style={styles.legal}>{t("paywall.legal")}</Text>
        <Text style={styles.disclaimer}>{t("paywall.disclaimer")}</Text>
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
    alignItems: "center",
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
  brandIcon: {
    fontSize: 56,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    textAlign: "center",
    letterSpacing: -0.5,
  },
  subtitle: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
  },
  features: {
    gap: spacing.md,
    marginBottom: spacing.xl,
  },
  featureRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.md,
  },
  featureIcon: {
    fontSize: 22,
    width: 32,
    textAlign: "center",
  },
  featureText: {
    ...typography.body,
    color: colors.textPrimary,
    flex: 1,
  },
  plans: {
    flexDirection: "row",
    gap: spacing.sm,
    marginBottom: spacing.lg,
  },
  planCard: {
    flex: 1,
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    padding: spacing.md,
    alignItems: "center",
    gap: spacing.xs,
    borderWidth: 2,
    borderColor: colors.border,
  },
  planCardSelected: {
    borderColor: colors.primary,
    backgroundColor: "rgba(45, 106, 79, 0.04)",
  },
  savingsBadge: {
    backgroundColor: colors.accent,
    paddingHorizontal: spacing.sm,
    paddingVertical: 2,
    borderRadius: radii.full,
    position: "absolute",
    top: -10,
  },
  savingsText: {
    ...typography.label,
    color: "#FFFFFF",
    textTransform: "uppercase",
  },
  planName: {
    ...typography.captionBold,
    color: colors.textSecondary,
    textTransform: "uppercase",
    letterSpacing: 0.8,
    marginTop: spacing.xs,
  },
  planPrice: {
    ...typography.h2,
    color: colors.textPrimary,
    letterSpacing: -0.5,
  },
  planBreakdown: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  socialProof: {
    backgroundColor: "rgba(45, 106, 79, 0.04)",
    borderRadius: radii.lg,
    padding: spacing.md,
    alignItems: "center",
  },
  socialText: {
    ...typography.caption,
    color: colors.textSecondary,
    textAlign: "center",
    fontStyle: "italic",
  },
  footer: {
    paddingHorizontal: spacing.lg,
    paddingBottom: spacing.lg,
    paddingTop: spacing.sm,
    alignItems: "center",
    gap: spacing.sm,
  },
  ctaButton: {
    backgroundColor: colors.primary,
    paddingVertical: spacing.md + 4,
    borderRadius: radii.lg,
    alignItems: "center",
    width: "100%",
    shadowColor: colors.primaryDark,
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.25,
    shadowRadius: 12,
    elevation: 6,
  },
  ctaText: {
    ...typography.bodyBold,
    color: "#FFFFFF",
    fontSize: 17,
    letterSpacing: 0.3,
  },
  trialInfo: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  restoreText: {
    ...typography.caption,
    color: colors.primary,
    textDecorationLine: "underline",
  },
  legal: {
    ...typography.caption,
    color: colors.textTertiary,
    fontSize: 11,
  },
  disclaimer: {
    ...typography.caption,
    color: colors.textTertiary,
    fontSize: 10,
    textAlign: "center",
    lineHeight: 14,
  },
});
