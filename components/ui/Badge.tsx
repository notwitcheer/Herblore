import { View, Text, StyleSheet } from "react-native";
import { colors, spacing, radii, typography } from "@/lib/constants";

interface BadgeProps {
  label: string;
  color?: string;
  backgroundColor?: string;
  size?: "sm" | "md";
}

export function Badge({
  label,
  color = colors.textSecondary,
  backgroundColor = colors.surfaceElevated,
  size = "sm",
}: BadgeProps) {
  const isSmall = size === "sm";
  return (
    <View
      style={[
        styles.badge,
        {
          backgroundColor,
          paddingHorizontal: isSmall ? spacing.xs + 2 : spacing.sm + 2,
          paddingVertical: isSmall ? 2 : spacing.xs,
        },
      ]}
    >
      <Text
        style={[
          isSmall ? styles.labelSm : styles.labelMd,
          { color },
        ]}
      >
        {label}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  badge: {
    borderRadius: radii.full,
    alignSelf: "flex-start",
  },
  labelSm: {
    fontSize: 10,
    fontWeight: "700",
    textTransform: "uppercase",
    letterSpacing: 0.5,
  },
  labelMd: {
    ...typography.label,
    textTransform: "uppercase",
  },
});
