import { useEffect } from "react";
import { LogBox } from "react-native";
import { Stack } from "expo-router";
import { StatusBar } from "expo-status-bar";
import * as SplashScreen from "expo-splash-screen";
import { StackProvider } from "@/lib/StackContext";
import "@/lib/i18n";

LogBox.ignoreLogs(["Require cycle"]);
SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  useEffect(() => {
    SplashScreen.hideAsync();
  }, []);

  return (
    <StackProvider>
      <StatusBar style="dark" />
      <Stack screenOptions={{ headerShown: false }}>
        <Stack.Screen name="(tabs)" />
        <Stack.Screen
          name="onboarding"
          options={{ gestureEnabled: false }}
        />
      </Stack>
    </StackProvider>
  );
}
