import { Redirect } from "expo-router";

export default function Index() {
  // TODO: Check auth state + onboarded flag
  // For now, show onboarding flow on first launch
  return <Redirect href="/onboarding/goals" />;
}
