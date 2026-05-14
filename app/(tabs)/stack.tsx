import { View, Text, StyleSheet } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useTranslation } from "react-i18next";
import { colors, typography, spacing } from "@/lib/constants";

export default function StackScreen() {
  const { t } = useTranslation();

  return (
    <SafeAreaView style={styles.container}>
      <Text style={styles.title}>{t("stack.title")}</Text>
      <View style={styles.placeholder}>
        <Text style={styles.emoji}>💊</Text>
        <Text style={styles.text}>{t("stack.empty")}</Text>
        <Text style={styles.subtext}>{t("stack.emptySubtitle")}</Text>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
    paddingHorizontal: spacing.md,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    marginTop: spacing.md,
    marginBottom: spacing.lg,
  },
  placeholder: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    gap: spacing.sm,
  },
  emoji: { fontSize: 48 },
  text: {
    ...typography.h3,
    color: colors.textPrimary,
  },
  subtext: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
    paddingHorizontal: spacing.xl,
  },
});
