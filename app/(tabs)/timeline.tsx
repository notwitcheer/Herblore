import { useState, useMemo } from "react";
import { View, Text, StyleSheet, ScrollView } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";
import { useTranslation } from "react-i18next";
import Animated, { FadeIn } from "react-native-reanimated";
import { colors, spacing, typography } from "@/lib/constants";
import { OwlMascot } from "@/components/icons";
import { useStackContext } from "@/lib/StackContext";
import { generateTimeline } from "@/lib/timeline-engine";
import { TimelineBlock } from "@/components/TimelineBlock";
import type { TimeBlock as TimeBlockType } from "@/lib/types";

export default function TimelineScreen() {
  const { t } = useTranslation();
  const { items } = useStackContext();
  const [takenBlocks, setTakenBlocks] = useState<Set<TimeBlockType>>(new Set());

  const timeline = useMemo(() => generateTimeline(items), [items]);

  const toggleBlock = (block: TimeBlockType) => {
    setTakenBlocks((prev) => {
      const next = new Set(prev);
      if (next.has(block)) {
        next.delete(block);
      } else {
        next.add(block);
      }
      return next;
    });
  };

  const totalBlocks = timeline.length;
  const doneBlocks = timeline.filter((b) => takenBlocks.has(b.timeBlock)).length;

  if (timeline.length === 0) {
    return (
      <SafeAreaView style={styles.container} edges={["top"]}>
        <Text style={styles.title}>{t("timeline.title")}</Text>
        <View style={styles.emptyState}>
          <Animated.View entering={FadeIn.duration(600)} style={styles.emptyContent}>
            <OwlMascot pose="sleeping" size={140} />
            <Text style={styles.emptyText}>{t("timeline.empty")}</Text>
          </Animated.View>
        </View>
      </SafeAreaView>
    );
  }

  return (
    <SafeAreaView style={styles.container} edges={["top"]}>
      <View style={styles.header}>
        <Text style={styles.title}>{t("timeline.title")}</Text>
        {totalBlocks > 0 && (
          <Animated.View entering={FadeIn.delay(200).duration(400)} style={styles.progressRow}>
            <View style={styles.progressBar}>
              <Animated.View
                style={[
                  styles.progressFill,
                  { width: `${(doneBlocks / totalBlocks) * 100}%` },
                ]}
              />
            </View>
            <Text style={styles.progressText}>
              {doneBlocks}/{totalBlocks}
            </Text>
          </Animated.View>
        )}
      </View>

      <ScrollView
        contentContainerStyle={styles.list}
        showsVerticalScrollIndicator={false}
      >
        {timeline.map((block, index) => (
          <TimelineBlock
            key={block.timeBlock}
            timeBlock={block.timeBlock}
            items={block.items}
            taken={takenBlocks.has(block.timeBlock)}
            onToggle={() => toggleBlock(block.timeBlock)}
            index={index}
          />
        ))}
      </ScrollView>
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
  },
  title: {
    ...typography.h1,
    color: colors.textPrimary,
    letterSpacing: -0.5,
  },
  progressRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  progressBar: {
    flex: 1,
    height: 6,
    backgroundColor: colors.border,
    borderRadius: 3,
    overflow: "hidden",
  },
  progressFill: {
    height: "100%",
    backgroundColor: colors.accent,
    borderRadius: 3,
  },
  progressText: {
    ...typography.captionBold,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
    minWidth: 30,
    textAlign: "right",
  },
  list: {
    paddingHorizontal: spacing.md,
    paddingBottom: spacing.xxl,
  },
  emptyState: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  emptyContent: {
    alignItems: "center",
    gap: spacing.md,
  },
  emptyText: {
    ...typography.body,
    color: colors.textSecondary,
    textAlign: "center",
    paddingHorizontal: spacing.xl,
  },
});
