import { View, Text, StyleSheet } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useTranslation } from "react-i18next";
import { colors, typography, spacing } from "@/lib/constants";

export default function LibraryScreen() {
  const { t } = useTranslation();

  return (
    <SafeAreaView style={styles.container}>
      <Text style={styles.title}>{t("library.title")}</Text>
      <View style={styles.placeholder}>
        <Text style={styles.emoji}>📚</Text>
        <Text style={styles.placeholderText}>{t("library.search")}</Text>
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
    gap: spacing.md,
  },
  emoji: {
    fontSize: 48,
  },
  placeholderText: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
  },
});
