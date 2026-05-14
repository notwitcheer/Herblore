import { Redirect } from "expo-router";

export default function Index() {
  // TODO: Check auth state + onboarded flag
  // If not onboarded → redirect to onboarding
  // If onboarded → redirect to tabs
  return <Redirect href="/(tabs)/library" />;
}
