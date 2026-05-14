import { Pressable, Text, StyleSheet, type ViewStyle } from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";

const AnimatedPressable = Animated.createAnimatedComponent(Pressable);

interface ButtonProps {
  title: string;
  onPress: () => void;
  variant?: "primary" | "secondary" | "ghost" | "danger";
  size?: "sm" | "md" | "lg";
  disabled?: boolean;
  style?: ViewStyle;
}

const VARIANTS = {
  primary: {
    bg: colors.primary,
    text: "#FFFFFF",
    shadow: colors.primaryDark,
  },
  secondary: {
    bg: colors.surfaceElevated,
    text: colors.textPrimary,
    shadow: "transparent",
  },
  ghost: {
    bg: "transparent",
    text: colors.primary,
    shadow: "transparent",
  },
  danger: {
    bg: "rgba(220, 38, 38, 0.08)",
    text: colors.danger,
    shadow: "transparent",
  },
} as const;

const SIZES = {
  sm: { paddingVertical: spacing.xs + 2, paddingHorizontal: spacing.md, fontSize: 13 },
  md: { paddingVertical: spacing.sm + 4, paddingHorizontal: spacing.lg, fontSize: 15 },
  lg: { paddingVertical: spacing.md + 2, paddingHorizontal: spacing.xl, fontSize: 16 },
} as const;

export function Button({
  title,
  onPress,
  variant = "primary",
  size = "md",
  disabled = false,
  style,
}: ButtonProps) {
  const scale = useSharedValue(1);
  const v = VARIANTS[variant];
  const s = SIZES[size];

  const animatedStyle = useAnimatedStyle(() => ({
    transform: [{ scale: scale.value }],
  }));

  return (
    <AnimatedPressable
      onPress={onPress}
      onPressIn={() => {
        scale.value = withSpring(0.96, { damping: 15, stiffness: 400 });
      }}
      onPressOut={() => {
        scale.value = withSpring(1, { damping: 12, stiffness: 300 });
      }}
      disabled={disabled}
      style={[
        styles.button,
        {
          backgroundColor: v.bg,
          paddingVertical: s.paddingVertical,
          paddingHorizontal: s.paddingHorizontal,
          shadowColor: v.shadow,
          opacity: disabled ? 0.5 : 1,
        },
        animatedStyle,
        style,
      ]}
    >
      <Text
        style={[
          styles.text,
          { color: v.text, fontSize: s.fontSize },
        ]}
      >
        {title}
      </Text>
    </AnimatedPressable>
  );
}

const styles = StyleSheet.create({
  button: {
    borderRadius: radii.lg,
    alignItems: "center",
    justifyContent: "center",
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.2,
    shadowRadius: 8,
    elevation: 4,
  },
  text: {
    fontWeight: "600",
    letterSpacing: 0.2,
  },
});
