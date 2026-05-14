import { useState, useMemo } from "react";
import { View, FlatList, StyleSheet } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import { colors, spacing, typography } from "@/lib/constants";
import { localizedField, type SupportedLocale, type AlimentCategory } from "@/lib/types";
import { MOCK_ALIMENTS } from "@/lib/mock-data";
import { AlimentCard } from "@/components/AlimentCard";
import { SearchBar } from "@/components/ui/SearchBar";
import Animated, { FadeIn } from "react-native-reanimated";

const CATEGORY_FILTERS: { key: string; label: string }[] = [
  { key: "all", label: "All" },
  { key: "vitamin", label: "Vitamins" },
  { key: "mineral", label: "Minerals" },
  { key: "adaptogen", label: "Adaptogens" },
  { key: "mushroom", label: "Mushrooms" },
  { key: "superfood", label: "Superfoods" },
  { key: "herb", label: "Herbs" },
  { key: "amino_acid", label: "Amino Acids" },
  { key: "fatty_acid", label: "Fatty Acids" },
  { key: "probiotic", label: "Probiotics" },
  { key: "spice", label: "Spices" },
];

export default function LibraryScreen() {
  const { t, i18n } = useTranslation();
  const router = useRouter();
  const locale = i18n.language as SupportedLocale;

  const [search, setSearch] = useState("");
  const [categoryFilter, setCategoryFilter] = useState("all");

  const filtered = useMemo(() => {
    let results = MOCK_ALIMENTS;

    if (categoryFilter !== "all") {
      results = results.filter((a) => a.category === categoryFilter);
    }

    if (search.trim()) {
      const q = search.toLowerCase().trim();
      results = results.filter((a) => {
        const name = localizedField(a, "name", locale).toLowerCase();
        const summary = localizedField(a, "summary", locale).toLowerCase();
        const goalMatch = a.benefits.some((b) =>
          b.goal_tags.some((tag) => tag.includes(q)),
        );
        return name.includes(q) || summary.includes(q) || goalMatch;
      });
    }

    return results;
  }, [search, categoryFilter, locale]);

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <Animated.View entering={FadeIn.duration(400)} style={styles.header}>
        <Animated.Text style={styles.title}>
          {t("library.title")}
        </Animated.Text>
        <SearchBar
          placeholder={t("library.search")}
          value={search}
          onChangeText={setSearch}
          filters={CATEGORY_FILTERS}
          activeFilter={categoryFilter}
          onFilterChange={setCategoryFilter}
        />
      </Animated.View>

      <FlatList
        data={filtered}
        keyExtractor={(item) => item.slug}
        renderItem={({ item, index }) => (
          <AlimentCard
            aliment={item}
            index={index}
            onPress={() =>
              router.push(`/(tabs)/library/${item.slug}`)
            }
          />
        )}
        contentContainerStyle={styles.list}
        ItemSeparatorComponent={() => <View style={styles.separator} />}
        showsVerticalScrollIndicator={false}
      />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: colors.background,
  },
  header: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.md,
    gap: spacing.md,
    backgroundColor: colors.background,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    letterSpacing: -0.5,
  },
  list: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.xxl,
  },
  separator: {
    height: spacing.sm,
  },
});
