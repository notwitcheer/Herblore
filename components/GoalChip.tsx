import { Pressable, Text, StyleSheet } from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from "react-native-reanimated";
import { useTranslation } from "react-i18next";
import { colors, spacing, radii, typography } from "@/lib/constants";
import type { GoalSlug } from "@/lib/types";

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

interface GoalChipProps {
  slug: GoalSlug;
  icon: string;
  selected: boolean;
  onPress: () => void;
  color?: string;
}

export function GoalChip({
  slug,
  icon,
  selected,
  onPress,
  color = colors.accent,
}: GoalChipProps) {
  const { t } = useTranslation();
  const scale = useSharedValue(1);

  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  const handlePressIn = () => {
    scale.value = withSpring(0.93, { damping: 15, stiffness: 400 });
  };

  const handlePressOut = () => {
    scale.value = withSpring(1, { damping: 12, stiffness: 300 });
  };

  return (
    <AnimatedPressable
      onPress={onPress}
      onPressIn={handlePressIn}
      onPressOut={handlePressOut}
      style={[
        styles.chip,
        selected && {
          backgroundColor: `${color}20`,
          borderColor: color,
        },
        animatedStyle,
      ]}
    >
      <Text style={styles.icon}>{icon}</Text>
      <Text
        style={[
          styles.label,
          selected && { color: colors.parchment },
        ]}
      >
        {t(`goals.${slug}`)}
      </Text>
    </AnimatedPressable>
  );
}

const styles = StyleSheet.create({
  chip: {
    flexDirection: "row",
    alignItems: "center",
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.sm + 2,
    borderRadius: radii.full,
    backgroundColor: colors.surface,
    borderWidth: 1.5,
    borderColor: colors.border,
    gap: spacing.xs,
  },
  icon: {
    fontSize: 16,
  },
  label: {
    ...typography.captionBold,
    color: colors.textSecondary,
  },
});
