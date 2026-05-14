import { View, Text, StyleSheet, Pressable } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import { colors, spacing, typography } from "@/lib/constants";
import { MOCK_ALIMENTS } from "@/lib/mock-data";
import { useStackContext } from "@/lib/StackContext";
import { AlimentDetail } from "@/components/AlimentDetail";

export default function AlimentDetailScreen() {
  const { slug } = useLocalSearchParams<{ slug: string }>();
  const router = useRouter();
  const { t } = useTranslation();
  const { addToStack, isInStack } = useStackContext();

  const aliment = MOCK_ALIMENTS.find((a) => a.slug === slug);

  if (!aliment) {
    return (
      <SafeAreaView style={styles.notFound}>
        <Text style={styles.notFoundText}>{t("library.noResults")}</Text>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <View style={styles.navBar}>
        <Pressable onPress={() => router.back()} style={styles.backButton}>
          <Text style={styles.backArrow}>←</Text>
          <Text style={styles.backLabel}>{t("library.title")}</Text>
        </Pressable>
      </View>

      <AlimentDetail
        aliment={aliment}
        isInStack={isInStack(aliment.id)}
        onAddToStack={() => addToStack(aliment)}
      />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  navBar: {
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.sm,
  },
  backButton: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
  },
  backArrow: {
    fontSize: 22,
    color: colors.primary,
    fontWeight: "600",
  },
  backLabel: {
    ...typography.body,
    color: colors.primary,
  },
  notFound: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: colors.background,
  },
  notFoundText: {
    ...typography.body,
    color: colors.textSecondary,
  },
});
