import { Pressable, Text, StyleSheet } from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
  withTiming,
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
  color = colors.primary,
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
        selected && { backgroundColor: color, borderColor: color },
        animatedStyle,
      ]}
    >
      <Text style={styles.icon}>{icon}</Text>
      <Text style={[styles.label, selected && styles.labelSelected]}>
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
    shadowColor: "#1B4332",
    shadowOffset: { width: 0, height: 1 },
    shadowOpacity: 0.04,
    shadowRadius: 4,
    elevation: 1,
  },
  icon: {
    fontSize: 16,
  },
  label: {
    ...typography.captionBold,
    color: colors.textPrimary,
  },
  labelSelected: {
    color: "#FFFFFF",
  },
});
