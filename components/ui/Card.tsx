import { View, StyleSheet, type ViewStyle, type ViewProps } from "react-native";
import { colors, spacing, radii } from "@/lib/constants";

interface CardProps extends ViewProps {
  variant?: "default" | "elevated" | "outline";
  padding?: keyof typeof spacing;
  style?: ViewStyle;
}

export function Card({
  children,
  variant = "default",
  padding = "md",
  style,
  ...props
}: CardProps) {
  return (
    <View
      style={[
        styles.base,
        { padding: spacing[padding] },
        variant === "elevated" && styles.elevated,
        variant === "outline" && styles.outline,
        style,
      ]}
      {...props}
    >
      {children}
    </View>
  );
}

const styles = StyleSheet.create({
  base: {
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    borderWidth: 1,
    borderColor: colors.border,
    shadowColor: colors.accentWarm,
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.06,
    shadowRadius: 12,
    elevation: 3,
  },
  elevated: {
    shadowOpacity: 0.1,
    shadowRadius: 16,
    elevation: 5,
  },
  outline: {
    shadowOpacity: 0,
    elevation: 0,
  },
});
