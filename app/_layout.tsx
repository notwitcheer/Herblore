import { useEffect } from "react";
import { LogBox } from "react-native";
import { Stack } from "expo-router";
import { StatusBar } from "expo-status-bar";
import * as SplashScreen from "expo-splash-screen";
import { useFonts } from "expo-font";
import { StackProvider } from "@/lib/StackContext";
import "@/lib/i18n";

LogBox.ignoreLogs(["Require cycle"]);
SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  const [fontsLoaded] = useFonts({
    "CrimsonPro-Regular": require("@/assets/fonts/CrimsonPro-Regular.ttf"),
    "CrimsonPro-Medium": require("@/assets/fonts/CrimsonPro-Medium.ttf"),
    "CrimsonPro-SemiBold": require("@/assets/fonts/CrimsonPro-SemiBold.ttf"),
    "CrimsonPro-Bold": require("@/assets/fonts/CrimsonPro-Bold.ttf"),
  });

  useEffect(() => {
    if (fontsLoaded) {
      SplashScreen.hideAsync();
    }
  }, [fontsLoaded]);

  if (!fontsLoaded) return null;

  return (
    <StackProvider>
      <StatusBar style="light" />
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
