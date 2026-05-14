import { useState, useRef } from "react";
import {
  View,
  TextInput,
  StyleSheet,
  Pressable,
  Text,
  ScrollView,
} from "react-native";
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withTiming,
} from "react-native-reanimated";
import { colors, spacing, radii, typography } from "@/lib/constants";

interface FilterOption {
  key: string;
  label: string;
}

interface SearchBarProps {
  placeholder: string;
  value: string;
  onChangeText: (text: string) => void;
  filters?: FilterOption[];
  activeFilter?: string;
  onFilterChange?: (key: string) => void;
}

export function SearchBar({
  placeholder,
  value,
  onChangeText,
  filters,
  activeFilter,
  onFilterChange,
}: SearchBarProps) {
  const [focused, setFocused] = useState(false);
  const inputRef = useRef<TextInput>(null);
  const borderOpacity = useSharedValue(0);

  const animatedBorder = useAnimatedStyle(() => ({
    borderColor: `rgba(212, 168, 71, ${borderOpacity.value * 0.6})`,
  }));

  const handleFocus = () => {
    setFocused(true);
    borderOpacity.value = withTiming(1, { duration: 200 });
  };

  const handleBlur = () => {
    setFocused(false);
    borderOpacity.value = withTiming(0, { duration: 200 });
  };

  return (
    <View style={styles.wrapper}>
      <Animated.View style={[styles.container, animatedBorder]}>
        <Text style={styles.icon}>🔍</Text>
        <TextInput
          ref={inputRef}
          style={styles.input}
          placeholder={placeholder}
          placeholderTextColor={colors.textTertiary}
          value={value}
          onChangeText={onChangeText}
          onFocus={handleFocus}
          onBlur={handleBlur}
          returnKeyType="search"
          clearButtonMode="while-editing"
          keyboardAppearance="dark"
        />
      </Animated.View>

      {filters && filters.length > 0 && (
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.filters}
        >
          {filters.map((filter) => {
            const isActive = activeFilter === filter.key;
            return (
              <Pressable
                key={filter.key}
                onPress={() => onFilterChange?.(filter.key)}
                style={[styles.filterChip, isActive && styles.filterChipActive]}
              >
                <Text
                  style={[
                    styles.filterLabel,
                    isActive && styles.filterLabelActive,
                  ]}
                >
                  {filter.label}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  wrapper: {
    gap: spacing.sm,
  },
  container: {
    flexDirection: "row",
    alignItems: "center",
    backgroundColor: colors.surface,
    borderRadius: radii.lg,
    paddingHorizontal: spacing.md,
    height: 48,
    borderWidth: 1,
    borderColor: colors.border,
  },
  icon: {
    fontSize: 16,
    marginRight: spacing.sm,
    opacity: 0.7,
  },
  input: {
    flex: 1,
    ...typography.body,
    color: colors.textPrimary,
    height: "100%",
  },
  filters: {
    gap: spacing.xs,
    paddingHorizontal: 2,
  },
  filterChip: {
    paddingHorizontal: spacing.md,
    paddingVertical: spacing.xs + 2,
    borderRadius: radii.full,
    backgroundColor: colors.surface,
    borderWidth: 1,
    borderColor: colors.border,
  },
  filterChipActive: {
    backgroundColor: colors.accent,
    borderColor: colors.accent,
  },
  filterLabel: {
    ...typography.captionBold,
    color: colors.textSecondary,
  },
  filterLabelActive: {
    color: colors.background,
  },
});
