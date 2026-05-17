import { useState } from "react";
import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import { colors, spacing, radii, typography, shadows, withAlpha } from "@/lib/constants";
import { ProgressDots } from "@/components/ProgressDots";
import { OrnamentDivider } from "@/components/OrnamentDivider";
import { OwlMascot } from "@/components/icons";

type Plan = "weekly" | "yearly";

const FEATURE_KEYS = [
  { icon: "📜", key: "feature1" },
  { icon: "🕯️", key: "feature2" },
  { icon: "⚗️", key: "feature3" },
  { icon: "🔮", key: "feature4" },
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
          <ProgressDots step={3} total={4} />

          <OwlMascot pose="default" size={130} />
          <Text style={styles.title}>{t("paywall.title")}</Text>
          <OrnamentDivider width="60%" />
          <Text style={styles.subtitle}>{t("paywall.subtitle")}</Text>
        </Animated.View>

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
  title: {
    ...typography.h1,
    color: colors.parchment,
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
    borderColor: colors.accent,
    backgroundColor: withAlpha("#D4A847", 0.06),
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
    color: colors.background,
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
    color: colors.parchment,
    letterSpacing: -0.5,
  },
  planBreakdown: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  socialProof: {
    backgroundColor: withAlpha("#D4A847", 0.06),
    borderRadius: radii.lg,
    padding: spacing.md,
    alignItems: "center",
    borderWidth: 1,
    borderColor: withAlpha("#D4A847", 0.12),
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
    backgroundColor: colors.accent,
    paddingVertical: spacing.md + 4,
    borderRadius: radii.lg,
    alignItems: "center",
    width: "100%",
    shadowColor: colors.accent,
    shadowOffset: { width: 0, height: 6 },
    shadowOpacity: 0.3,
    shadowRadius: 12,
    elevation: 6,
  },
  ctaText: {
    ...typography.bodyBold,
    color: colors.background,
    fontSize: 17,
    letterSpacing: 0.3,
  },
  trialInfo: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  restoreText: {
    ...typography.caption,
    color: colors.accent,
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
