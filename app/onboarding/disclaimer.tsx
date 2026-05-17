import { View, Text, StyleSheet, Pressable, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import * as Haptics from "expo-haptics";
import { colors, spacing, radii, typography, shadows } from "@/lib/constants";
import { OwlMascot } from "@/components/icons";
import { useOnboarding } from "@/lib/OnboardingContext";

export default function DisclaimerScreen() {
  const { t } = useTranslation();
  const router = useRouter();
  const { acceptDisclaimer } = useOnboarding();

  const handleAccept = () => {
    Haptics.impactAsync(Haptics.ImpactFeedbackStyle.Medium);
    acceptDisclaimer();
    router.push("/onboarding/goals");
  };

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView
        contentContainerStyle={styles.content}
        showsVerticalScrollIndicator={false}
      >
        <Animated.View entering={FadeIn.duration(600)} style={styles.header}>
          <OwlMascot pose="warning" size={120} />
          <Text style={styles.title}>{t("disclaimer.title")}</Text>
        </Animated.View>

        <Animated.View
          entering={FadeInDown.delay(200).duration(400).springify()}
          style={styles.card}
        >
          <Text style={styles.body}>{t("disclaimer.body1")}</Text>
          <Text style={styles.body}>{t("disclaimer.body2")}</Text>
          <Text style={styles.body}>{t("disclaimer.body3")}</Text>
        </Animated.View>

        <Animated.View
          entering={FadeInDown.delay(400).duration(400).springify()}
          style={styles.bullets}
        >
          <Text style={styles.bulletItem}>{t("disclaimer.bullet1")}</Text>
          <Text style={styles.bulletItem}>{t("disclaimer.bullet2")}</Text>
          <Text style={styles.bulletItem}>{t("disclaimer.bullet3")}</Text>
          <Text style={styles.bulletItem}>{t("disclaimer.bullet4")}</Text>
        </Animated.View>
      </ScrollView>

      <Animated.View
        entering={FadeInDown.delay(600).duration(400)}
        style={styles.footer}
      >
        <Pressable style={styles.acceptButton} onPress={handleAccept}>
          <Text style={styles.acceptText}>{t("disclaimer.accept")}</Text>
        </Pressable>
        <Text style={styles.footerNote}>{t("disclaimer.footerNote")}</Text>
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
    gap: spacing.md,
    marginBottom: spacing.lg,
  },
  title: {
    ...typography.h1,
    color: colors.parchment,
    textAlign: "center",
    letterSpacing: -0.5,
  },
  card: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    padding: spacing.lg,
    gap: spacing.md,
    borderWidth: 1,
    borderColor: colors.border,
    marginBottom: spacing.lg,
  },
  body: {
    ...typography.body,
    color: colors.textSecondary,
    lineHeight: 24,
  },
  bullets: {
    gap: spacing.sm,
    paddingHorizontal: spacing.sm,
  },
  bulletItem: {
    ...typography.caption,
    color: colors.textTertiary,
    lineHeight: 20,
    paddingLeft: spacing.sm,
  },
  footer: {
    paddingHorizontal: spacing.lg,
    paddingBottom: spacing.xl,
    paddingTop: spacing.md,
    alignItems: "center",
    gap: spacing.sm,
  },
  acceptButton: {
    backgroundColor: colors.accent,
    paddingVertical: spacing.md + 2,
    borderRadius: radii.lg,
    alignItems: "center",
    width: "100%",
    ...shadows.glow,
  },
  acceptText: {
    ...typography.bodyBold,
    color: colors.background,
    letterSpacing: 0.3,
  },
  footerNote: {
    ...typography.caption,
    color: colors.textTertiary,
    fontSize: 11,
    textAlign: "center",
  },
});
