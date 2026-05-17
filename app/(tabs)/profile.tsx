import { View, Text, StyleSheet, Pressable, ScrollView, Alert } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown } from "react-native-reanimated";
import * as Haptics from "expo-haptics";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { storage } from "@/lib/storage";
import { useSubscription } from "@/lib/SubscriptionContext";
import type { SupportedLocale } from "@/lib/types";

const LANGUAGES: { code: SupportedLocale; label: string; flag: string }[] = [
  { code: "en", label: "English", flag: "🇬🇧" },
  { code: "fr", label: "Français", flag: "🇫🇷" },
  { code: "it", label: "Italiano", flag: "🇮🇹" },
];

function SettingsRow({
  label,
  value,
  onPress,
  icon,
  delay = 0,
}: {
  label: string;
  value?: string;
  onPress?: () => void;
  icon: string;
  delay?: number;
}) {
  return (
    <Animated.View entering={FadeInDown.delay(delay).duration(300).springify()}>
      <Pressable style={styles.settingsRow} onPress={onPress}>
        <Text style={styles.rowIcon}>{icon}</Text>
        <Text style={styles.rowLabel}>{label}</Text>
        <View style={styles.rowRight}>
          {value && <Text style={styles.rowValue}>{value}</Text>}
          {onPress && <Text style={styles.rowChevron}>›</Text>}
        </View>
      </Pressable>
    </Animated.View>
  );
}

export default function ProfileScreen() {
  const { t, i18n } = useTranslation();
  const router = useRouter();
  const currentLang = LANGUAGES.find((l) => l.code === i18n.language);
  const { isSubscribed } = useSubscription();

  const cycleLanguage = () => {
    Haptics.selectionAsync();
    const idx = LANGUAGES.findIndex((l) => l.code === i18n.language);
    const next = LANGUAGES[(idx + 1) % LANGUAGES.length];
    i18n.changeLanguage(next.code);
    storage.setLanguage(next.code);
  };

  const showDisclaimer = () => {
    Alert.alert(
      t("disclaimer.title"),
      `${t("disclaimer.body1")}\n\n${t("disclaimer.body2")}\n\n${t("disclaimer.body3")}`,
      [{ text: "OK" }],
    );
  };

  const showPrivacy = () => {
    Alert.alert(
      t("profile.privacy"),
      "Privacy Policy content will be available at launch. Your data is stored locally on your device and is never shared with third parties without your consent.",
      [{ text: "OK" }],
    );
  };

  const showTerms = () => {
    Alert.alert(
      t("profile.terms"),
      "Terms of Service content will be available at launch. By using Herblore, you agree to use the app for educational purposes only.",
      [{ text: "OK" }],
    );
  };

  const handleManageSubscription = () => {
    if (!isSubscribed) {
      router.push("/onboarding/paywall");
    } else {
      Alert.alert(
        t("profile.manage"),
        "Subscription management will be available through the App Store.",
        [{ text: "OK" }],
      );
    }
  };

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <ScrollView
        contentContainerStyle={styles.content}
        showsVerticalScrollIndicator={false}
      >
        <Text style={styles.title}>{t("profile.title")}</Text>

        <View style={styles.section}>
          <Text style={styles.sectionLabel}>{t("profile.preferences")}</Text>
          <View style={styles.card}>
            <SettingsRow
              icon="🌐"
              label={t("profile.language")}
              value={`${currentLang?.flag} ${currentLang?.label}`}
              onPress={cycleLanguage}
              delay={100}
            />
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionLabel}>{t("profile.subscription")}</Text>
          <View style={styles.card}>
            <SettingsRow
              icon="💎"
              label={t("profile.manage")}
              value={isSubscribed ? "Active" : "Free"}
              onPress={handleManageSubscription}
              delay={200}
            />
            <View style={styles.rowDivider} />
            <SettingsRow
              icon="🔄"
              label={t("profile.restore")}
              onPress={handleManageSubscription}
              delay={250}
            />
          </View>
        </View>

        <View style={styles.section}>
          <Text style={styles.sectionLabel}>{t("profile.legal")}</Text>
          <View style={styles.card}>
            <SettingsRow
              icon="⚕️"
              label={t("profile.disclaimer")}
              onPress={showDisclaimer}
              delay={300}
            />
            <View style={styles.rowDivider} />
            <SettingsRow
              icon="🔒"
              label={t("profile.privacy")}
              onPress={showPrivacy}
              delay={350}
            />
            <View style={styles.rowDivider} />
            <SettingsRow
              icon="📄"
              label={t("profile.terms")}
              onPress={showTerms}
              delay={400}
            />
          </View>
        </View>

        <Text style={styles.version}>
          {t("profile.version")} 1.0.0
        </Text>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  content: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.xxl,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    marginTop: spacing.md,
    marginBottom: spacing.lg,
    letterSpacing: -0.5,
  },
  section: {
    gap: spacing.sm,
    marginBottom: spacing.lg,
  },
  sectionLabel: {
    ...typography.label,
    color: colors.accent,
    textTransform: "uppercase",
    letterSpacing: 1,
    paddingHorizontal: spacing.xs,
  },
  card: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    overflow: "hidden",
    borderWidth: 1,
    borderColor: colors.border,
  },
  settingsRow: {
    flexDirection: "row",
    alignItems: "center",
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.md,
    gap: spacing.sm,
  },
  rowIcon: {
    fontSize: 18,
    width: 28,
    textAlign: "center",
  },
  rowLabel: {
    ...typography.body,
    color: colors.textPrimary,
    flex: 1,
  },
  rowRight: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
  },
  rowValue: {
    ...typography.caption,
    color: colors.textTertiary,
  },
  rowChevron: {
    fontSize: 20,
    color: colors.textTertiary,
    fontWeight: "300",
  },
  rowDivider: {
    height: StyleSheet.hairlineWidth,
    backgroundColor: colors.divider,
    marginLeft: 56,
  },
  version: {
    ...typography.caption,
    color: colors.textTertiary,
    textAlign: "center",
    marginTop: spacing.lg,
    fontStyle: "italic",
  },
});
