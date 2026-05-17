import { View, ActivityIndicator, StyleSheet } from "react-native";
import { Redirect } from "expo-router";
import { useOnboarding } from "@/lib/OnboardingContext";
import { colors } from "@/lib/constants";

export default function Index() {
  const { isOnboarded, isLoading } = useOnboarding();

  if (isLoading) {
    return (
      <View style={styles.loading}>
        <ActivityIndicator color={colors.accent} size="large" />
      </View>
    );
  }

  if (isOnboarded) {
    return <Redirect href="/(tabs)/library" />;
  }

  return <Redirect href="/onboarding/disclaimer" />;
}

const styles = StyleSheet.create({
  loading: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    backgroundColor: colors.background,
  },
});
