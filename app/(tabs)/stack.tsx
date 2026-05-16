import { View, Text, StyleSheet, FlatList, Pressable } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useTranslation } from "react-i18next";
import Animated, { FadeInDown, FadeIn } from "react-native-reanimated";
import {
  colors,
  spacing,
  radii,
  typography,
  shadows,
  withAlpha,
} from "@/lib/constants";
import { localizedField, type SupportedLocale } from "@/lib/types";
import { useStackContext } from "@/lib/StackContext";
import {
  checkStackInteractions,
  getSynergies,
  getConflicts,
} from "@/lib/interaction-checker";
import { InteractionBadge } from "@/components/InteractionBadge";

const ItemSeparator = () => <View style={{ height: spacing.sm }} />;

export default function StackScreen() {
  const { t, i18n } = useTranslation();
  const locale = i18n.language as SupportedLocale;
  const router = useRouter();
  const { items, removeFromStack, toggleActive } = useStackContext();

  const interactions = checkStackInteractions(items);
  const synergies = getSynergies(interactions);
  const conflicts = getConflicts(interactions);

  if (items.length === 0) {
    return (
      <SafeAreaView style={styles.container} edges={["top"]}>
        <Text style={styles.title}>{t("stack.title")}</Text>
        <View style={styles.emptyState}>
          <Animated.View
            entering={FadeIn.duration(600)}
            style={styles.emptyContent}
          >
            <Text style={styles.emptyEmoji}>💊</Text>
            <Text style={styles.emptyTitle}>{t("stack.empty")}</Text>
            <Text style={styles.emptySubtitle}>
              {t("stack.emptySubtitle")}
            </Text>
            <Pressable
              style={styles.browseButton}
              onPress={() => router.push("/(tabs)/library")}
            >
              <Text style={styles.browseButtonText}>
                {t("stack.browseLibrary")}
              </Text>
            </Pressable>
          </Animated.View>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <Text style={styles.title}>{t("stack.title")}</Text>

      <FlatList
        data={items}
        keyExtractor={(item) => item.id}
        showsVerticalScrollIndicator={false}
        contentContainerStyle={styles.list}
        ListHeaderComponent={
          (synergies.length > 0 || conflicts.length > 0) ? (
            <Animated.View
              entering={FadeInDown.duration(400)}
              style={styles.interactionsSection}
            >
              {conflicts.length > 0 && (
                <View style={styles.interactionGroup}>
                  <Text style={styles.interactionTitle}>
                    ⚠️ {t("stack.conflicts")} ({conflicts.length})
                  </Text>
                  {conflicts.map((c, i) => (
                    <InteractionBadge
                      key={i}
                      type={c.interaction.interaction_type}
                      severity={c.interaction.severity}
                      description={localizedField(
                        c.interaction,
                        "description",
                        locale,
                      )}
                      separationHours={c.interaction.separation_hours}
                    />
                  ))}
                </View>
              )}
              {synergies.length > 0 && (
                <View style={styles.interactionGroup}>
                  <Text style={styles.interactionTitle}>
                    ↗ {t("stack.synergies")} ({synergies.length})
                  </Text>
                  {synergies.map((s, i) => (
                    <InteractionBadge
                      key={i}
                      type={s.interaction.interaction_type}
                      severity={s.interaction.severity}
                      description={localizedField(
                        s.interaction,
                        "description",
                        locale,
                      )}
                    />
                  ))}
                </View>
              )}
            </Animated.View>
          ) : null
        }
        renderItem={({ item, index }) => {
          const aliment = item.aliment;
          if (!aliment) return null;
          const name = localizedField(aliment, "name", locale);

          return (
            <Animated.View
              entering={FadeInDown.delay(index * 60).duration(400).springify()}
              style={[styles.stackCard, !item.is_active && styles.stackCardPaused]}
            >
              <View style={styles.cardHeader}>
                <View style={styles.cardInfo}>
                  <Text style={styles.cardName}>{name}</Text>
                  <Text style={styles.cardDosage}>
                    {item.dosage} {item.dosage_unit}
                  </Text>
                </View>
                <View
                  style={[
                    styles.statusDot,
                    {
                      backgroundColor: item.is_active
                        ? colors.synergy
                        : colors.textTertiary,
                    },
                  ]}
                />
              </View>

              <View style={styles.cardActions}>
                <Pressable
                  style={styles.actionButton}
                  onPress={() => toggleActive(item.aliment_id)}
                >
                  <Text style={styles.actionText}>
                    {item.is_active ? t("stack.pause") : t("stack.resume")}
                  </Text>
                </Pressable>
                <Pressable
                  style={[styles.actionButton, styles.removeButton]}
                  onPress={() => removeFromStack(item.aliment_id)}
                >
                  <Text style={styles.removeText}>{t("stack.remove")}</Text>
                </Pressable>
              </View>
            </Animated.View>
          );
        }}
        ItemSeparatorComponent={ItemSeparator}
      />
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
    marginBottom: spacing.md,
    letterSpacing: -0.5,
  },
  list: {
    paddingBottom: spacing.xxl,
  },
  emptyState: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  emptyContent: {
    alignItems: "center",
    gap: spacing.sm,
  },
  emptyEmoji: { fontSize: 56 },
  emptyTitle: {
    ...typography.h2,
    color: colors.textPrimary,
  },
  emptySubtitle: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
    paddingHorizontal: spacing.xl,
    marginBottom: spacing.md,
  },
  browseButton: {
    backgroundColor: colors.accent,
    paddingHorizontal: spacing.lg,
    paddingVertical: spacing.md,
    borderRadius: radii.lg,
  },
  browseButtonText: {
    ...typography.bodyBold,
    color: colors.background,
  },
  interactionsSection: {
    gap: spacing.md,
    marginBottom: spacing.lg,
  },
  interactionGroup: {
    gap: spacing.sm,
  },
  interactionTitle: {
    ...typography.captionBold,
    color: colors.textSecondary,
    textTransform: "uppercase",
    letterSpacing: 0.5,
  },
  stackCard: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    padding: spacing.md,
    gap: spacing.md,
    borderWidth: 1,
    borderColor: colors.border,
    ...shadows.card,
  },
  stackCardPaused: {
    opacity: 0.55,
  },
  cardHeader: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
  },
  cardInfo: {
    gap: 2,
    flex: 1,
  },
  cardName: {
    ...typography.bodyBold,
    color: colors.textPrimary,
  },
  cardDosage: {
    ...typography.caption,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
  },
  statusDot: {
    width: 10,
    height: 10,
    borderRadius: 5,
  },
  cardActions: {
    flexDirection: "row",
    gap: spacing.sm,
  },
  actionButton: {
    flex: 1,
    paddingVertical: spacing.sm,
    borderRadius: radii.md,
    backgroundColor: colors.surfaceElevated,
    alignItems: "center",
  },
  actionText: {
    ...typography.captionBold,
    color: colors.textSecondary,
  },
  removeButton: {
    backgroundColor: withAlpha("#C45C4A", 0.1),
  },
  removeText: {
    ...typography.captionBold,
    color: colors.danger,
  },
});
