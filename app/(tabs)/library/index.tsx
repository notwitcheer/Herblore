import { useState, useMemo, useCallback } from "react";
import {
  View,
  Text,
  FlatList,
  StyleSheet,
  ScrollView,
  Pressable,
} from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import * as Haptics from "expo-haptics";
import { colors, spacing, radii, typography } from "@/lib/constants";
import { localizedField, type SupportedLocale, type EvidenceLevel, type GoalSlug } from "@/lib/types";
import { MOCK_ALIMENTS } from "@/lib/mock-data";
import { AlimentCard } from "@/components/AlimentCard";
import { SearchBar } from "@/components/ui/SearchBar";
import { useSubscription, FREE_LIBRARY_LIMIT } from "@/lib/SubscriptionContext";
import { useOnboarding } from "@/lib/OnboardingContext";
import Animated, { FadeIn } from "react-native-reanimated";

const CATEGORY_KEYS = [
  "all",
  "vitamin",
  "mineral",
  "adaptogen",
  "mushroom",
  "superfood",
  "herb",
  "amino_acid",
  "fatty_acid",
  "probiotic",
  "spice",
  "specialty_compound",
  "functional_food",
  "fermented_food",
] as const;

const EVIDENCE_KEYS: ("all" | EvidenceLevel)[] = [
  "all",
  "clinical_trial",
  "observational",
  "traditional",
];

const GOAL_KEYS: GoalSlug[] = [
  "energy",
  "sleep",
  "immunity",
  "focus",
  "stress",
  "digestion",
  "skin",
  "longevity",
  "recovery",
  "joint_health",
];

export default function LibraryScreen() {
  const { t, i18n } = useTranslation();
  const router = useRouter();
  const locale = i18n.language as SupportedLocale;
  const { isSubscribed } = useSubscription();
  const { goals: userGoals } = useOnboarding();

  const [search, setSearch] = useState("");
  const [categoryFilter, setCategoryFilter] = useState("all");
  const [evidenceFilter, setEvidenceFilter] = useState<"all" | EvidenceLevel>("all");
  const [goalFilter, setGoalFilter] = useState<"all" | GoalSlug>("all");

  const categoryFilters = useMemo(
    () =>
      CATEGORY_KEYS.map((key) => ({
        key,
        label: key === "all" ? t("library.all") : t(`categories.${key}`),
      })),
    [t],
  );

  const filtered = useMemo(() => {
    let results = [...MOCK_ALIMENTS];

    if (userGoals.length > 0) {
      results.sort((a, b) => {
        const aMatch = a.benefits.some((ben) =>
          ben.goal_tags.some((tag) => userGoals.includes(tag as any)),
        );
        const bMatch = b.benefits.some((ben) =>
          ben.goal_tags.some((tag) => userGoals.includes(tag as any)),
        );
        if (aMatch && !bMatch) return -1;
        if (!aMatch && bMatch) return 1;
        return 0;
      });
    }

    if (categoryFilter !== "all") {
      results = results.filter((a) => a.category === categoryFilter);
    }

    if (evidenceFilter !== "all") {
      results = results.filter((a) =>
        a.benefits.some((b) => b.evidence_level === evidenceFilter),
      );
    }

    if (goalFilter !== "all") {
      results = results.filter((a) =>
        a.benefits.some((b) => b.goal_tags.includes(goalFilter)),
      );
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
  }, [search, categoryFilter, evidenceFilter, goalFilter, locale, userGoals]);

  const handleCardPress = useCallback(
    (slug: string, index: number) => {
      if (!isSubscribed && index >= FREE_LIBRARY_LIMIT) {
        Haptics.notificationAsync(Haptics.NotificationFeedbackType.Warning);
        router.push("/onboarding/paywall");
        return;
      }
      router.push(`/(tabs)/library/${slug}`);
    },
    [isSubscribed, router],
  );

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
          filters={categoryFilters}
          activeFilter={categoryFilter}
          onFilterChange={setCategoryFilter}
        />

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.filterRow}
        >
          <Text style={styles.filterLabel}>{t("library.evidence")}:</Text>
          {EVIDENCE_KEYS.map((key) => {
            const isActive = evidenceFilter === key;
            return (
              <Pressable
                key={key}
                onPress={() => {
                  Haptics.selectionAsync();
                  setEvidenceFilter(key);
                }}
                style={[styles.miniChip, isActive && styles.miniChipActive]}
              >
                <Text
                  style={[
                    styles.miniChipLabel,
                    isActive && styles.miniChipLabelActive,
                  ]}
                >
                  {key === "all" ? t("library.all") : t(`evidence.${key}`)}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.filterRow}
        >
          <Text style={styles.filterLabel}>{t("library.goal")}:</Text>
          <Pressable
            onPress={() => {
              Haptics.selectionAsync();
              setGoalFilter("all");
            }}
            style={[styles.miniChip, goalFilter === "all" && styles.miniChipActive]}
          >
            <Text
              style={[
                styles.miniChipLabel,
                goalFilter === "all" && styles.miniChipLabelActive,
              ]}
            >
              {t("library.all")}
            </Text>
          </Pressable>
          {GOAL_KEYS.map((key) => {
            const isActive = goalFilter === key;
            return (
              <Pressable
                key={key}
                onPress={() => {
                  Haptics.selectionAsync();
                  setGoalFilter(key);
                }}
                style={[styles.miniChip, isActive && styles.miniChipActive]}
              >
                <Text
                  style={[
                    styles.miniChipLabel,
                    isActive && styles.miniChipLabelActive,
                  ]}
                >
                  {t(`goals.${key}`)}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      </Animated.View>

      <FlatList
        data={filtered}
        keyExtractor={(item) => item.slug}
        renderItem={({ item, index }) => (
          <AlimentCard
            aliment={item}
            index={index}
            locked={!isSubscribed && index >= FREE_LIBRARY_LIMIT}
            onPress={() => handleCardPress(item.slug, index)}
          />
        )}
        contentContainerStyle={styles.list}
        ItemSeparatorComponent={() => <View style={styles.separator} />}
        showsVerticalScrollIndicator={false}
        ListEmptyComponent={
          <View style={styles.emptyState}>
            <Text style={styles.emptyText}>{t("library.noResults")}</Text>
          </View>
        }
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
    gap: spacing.sm,
    backgroundColor: colors.background,
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    letterSpacing: -0.5,
  },
  filterRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.xs,
    paddingHorizontal: 2,
  },
  filterLabel: {
    ...typography.label,
    color: colors.textTertiary,
    marginRight: 2,
  },
  miniChip: {
    paddingHorizontal: spacing.sm + 2,
    paddingVertical: spacing.xs,
    borderRadius: radii.full,
    backgroundColor: colors.surface,
    borderWidth: 1,
    borderColor: colors.border,
  },
  miniChipActive: {
    backgroundColor: colors.accent,
    borderColor: colors.accent,
  },
  miniChipLabel: {
    ...typography.label,
    color: colors.textSecondary,
  },
  miniChipLabelActive: {
    color: colors.background,
  },
  list: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.xxl,
  },
  separator: {
    height: spacing.sm,
  },
  emptyState: {
    paddingVertical: spacing.xxl,
    alignItems: "center",
  },
  emptyText: {
    ...typography.body,
    color: colors.textTertiary,
  },
});
