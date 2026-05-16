import { Pressable, View, Text, StyleSheet } from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  FadeInDown,
} from "react-native-reanimated";
import { useTranslation } from "react-i18next";
import {
  colors,
  spacing,
  radii,
  typography,
  TIME_BLOCKS,
  springs,
  withAlpha,
} from "@/lib/constants";
import { localizedField, type SupportedLocale } from "@/lib/types";
import type { TimeBlock as TimeBlockType, TimelineItem } from "@/lib/types";
import {
  SunriseIcon,
  BreakfastIcon,
  NoonSunIcon,
  AfternoonIcon,
  DinnerIcon,
  BedtimeIcon,
} from "./icons";

const BLOCK_ICON_COMPONENTS: Record<TimeBlockType, React.ComponentType<{ size?: number; color?: string }>> = {
  wake: SunriseIcon,
  breakfast: BreakfastIcon,
  lunch: NoonSunIcon,
  afternoon: AfternoonIcon,
  dinner: DinnerIcon,
  bedtime: BedtimeIcon,
};

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

const BLOCK_TIMES: Record<TimeBlockType, string> = {
  wake: "6:30",
  breakfast: "7:30",
  lunch: "12:30",
  afternoon: "15:00",
  dinner: "19:00",
  bedtime: "22:00",
};

interface TimelineBlockProps {
  timeBlock: TimeBlockType;
  items: TimelineItem[];
  taken: boolean;
  onToggle: () => void;
  index?: number;
}

export function TimelineBlock({
  timeBlock,
  items,
  taken,
  onToggle,
  index = 0,
}: TimelineBlockProps) {
  const { t, i18n } = useTranslation();
  const locale = i18n.language as SupportedLocale;
  const scale = useSharedValue(1);

  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  if (items.length === 0) return null;

  return (
    <Animated.View
      entering={FadeInDown.delay(index * 80).duration(400).springify()}
    >
      <AnimatedPressable
        onPress={onToggle}
        onPressIn={() => {
          scale.value = withSpring(springs.scaleInSubtle, springs.pressIn);
        }}
        onPressOut={() => {
          scale.value = withSpring(1, springs.pressOut);
        }}
        style={[
          styles.card,
          taken && styles.cardTaken,
          animatedStyle,
        ]}
      >
        <View style={styles.header}>
          <View style={styles.timeRow}>
            {(() => {
              const IconComp = BLOCK_ICON_COMPONENTS[timeBlock];
              return <IconComp size={26} color={taken ? colors.synergy : colors.accent} />;
            })()}
            <View>
              <Text style={[styles.blockLabel, taken && styles.textTaken]}>
                {t(`timeline.${timeBlock}`)}
              </Text>
              <Text style={[styles.timeText, taken && styles.timeTextTaken]}>
                {BLOCK_TIMES[timeBlock]}
              </Text>
            </View>
          </View>

          <View style={[styles.checkCircle, taken && styles.checkCircleDone]}>
            {taken && <Text style={styles.checkMark}>✓</Text>}
          </View>
        </View>

        <View style={styles.items}>
          {items.map((item, i) => (
            <View key={i} style={styles.itemRow}>
              <View style={[styles.itemDot, taken && styles.itemDotTaken]} />
              <Text
                style={[styles.itemName, taken && styles.textTaken]}
                numberOfLines={1}
              >
                {localizedField(item.aliment, "name", locale)}
              </Text>
              {item.dosage != null && (
                <Text style={[styles.itemDosage, taken && styles.itemDosageTaken]}>
                  {item.dosage} {item.dosageUnit}
                </Text>
              )}
            </View>
          ))}
        </View>
      </AnimatedPressable>

      {index < TIME_BLOCKS.length - 1 && (
        <View style={styles.connector}>
          <View style={[styles.connectorLine, taken && styles.connectorDone]} />
        </View>
      )}
    </Animated.View>
  );
}

const styles = StyleSheet.create({
  card: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    padding: spacing.md,
    gap: spacing.md,
    borderWidth: 1,
    borderColor: colors.border,
    shadowColor: colors.accentWarm,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.06,
    shadowRadius: 12,
    elevation: 3,
  },
  cardTaken: {
    backgroundColor: withAlpha("#5BA66B", 0.06),
    borderColor: withAlpha("#5BA66B", 0.25),
    shadowColor: colors.synergy,
    shadowOpacity: 0.1,
  },
  header: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  timeRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  blockLabel: {
    ...typography.h3,
    color: colors.textPrimary,
  },
  timeText: {
    ...typography.caption,
    color: colors.accent,
    fontVariant: ["tabular-nums"],
  },
  timeTextTaken: {
    color: colors.synergy,
  },
  checkCircle: {
    width: 32,
    height: 32,
    borderRadius: 16,
    borderWidth: 2,
    borderColor: colors.border,
    justifyContent: "center",
    alignItems: "center",
  },
  checkCircleDone: {
    backgroundColor: colors.accent,
    borderColor: colors.accent,
  },
  checkMark: {
    color: colors.background,
    fontSize: 16,
    fontWeight: "700",
  },
  items: {
    gap: spacing.sm,
    paddingLeft: spacing.xs,
  },
  itemRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  itemDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
    backgroundColor: colors.accent,
  },
  itemDotTaken: {
    backgroundColor: colors.synergy,
  },
  itemName: {
    ...typography.body,
    color: colors.textPrimary,
    flex: 1,
  },
  itemDosage: {
    ...typography.caption,
    color: colors.textTertiary,
    fontVariant: ["tabular-nums"],
  },
  itemDosageTaken: {
    color: colors.synergy,
  },
  textTaken: {
    opacity: 0.5,
  },
  connector: {
    alignItems: "center",
    height: 20,
  },
  connectorLine: {
    width: 2,
    height: 20,
    backgroundColor: colors.border,
    borderRadius: 1,
  },
  connectorDone: {
    backgroundColor: withAlpha("#5BA66B", 0.4),
  },
});
