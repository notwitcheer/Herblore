import { View, StyleSheet } from "react-native";
import { colors, spacing } from "@/lib/constants";

interface ProgressDotsProps {
  step: number;
  total: number;
}

export function ProgressDots({ step, total }: ProgressDotsProps) {
  return (
    <View style={styles.container}>
      {Array.from({ length: total }, (_, i) => {
        const isActive = i === step;
        const isDone = i < step;
        return (
          <View
            key={i}
            style={[
              styles.dot,
              isActive && styles.dotActive,
              isDone && styles.dotDone,
            ]}
          />
        );
      })}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: "row",
    gap: spacing.xs,
    marginBottom: spacing.md,
  },
  dot: {
    width: 8,
    height: 8,
    borderRadius: 4,
    backgroundColor: colors.border,
  },
  dotActive: {
    backgroundColor: colors.accent,
    width: 24,
    borderRadius: 4,
  },
  dotDone: {
    backgroundColor: colors.accentWarm,
  },
});
