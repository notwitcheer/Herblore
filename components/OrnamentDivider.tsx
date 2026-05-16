import { View, Text, StyleSheet, type DimensionValue } from "react-native";
import { colors, spacing } from "@/lib/constants";

interface OrnamentDividerProps {
  width?: DimensionValue;
}

export function OrnamentDivider({ width }: OrnamentDividerProps) {
  return (
    <View style={[styles.container, width != null ? { width } : undefined]}>
      <View style={styles.line} />
      <Text style={styles.dot}>✦</Text>
      <View style={styles.line} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    alignItems: "center",
    gap: spacing.sm,
  },
  line: {
    flex: 1,
    height: 1,
    backgroundColor: colors.border,
  },
  dot: {
    fontSize: 10,
    color: colors.accent,
  },
});
