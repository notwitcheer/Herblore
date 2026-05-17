import { Tabs } from "expo-router";
import { useTranslation } from "react-i18next";
import { colors, fonts } from "@/lib/constants";
import {
  GrimoireIcon,
  FlaskIcon,
  CandleIcon,
  ScrollIcon,
  CrystalBallIcon,
} from "@/components/icons";

export default function TabLayout() {
  const { t } = useTranslation();

  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: colors.accent,
        tabBarInactiveTintColor: colors.textTertiary,
        tabBarStyle: {
          backgroundColor: colors.background,
          borderTopColor: colors.border,
          borderTopWidth: 1,
        },
        tabBarLabelStyle: {
          fontSize: 11,
          fontFamily: fonts.serifMedium,
          letterSpacing: 0.3,
        },
      }}
    >
      <Tabs.Screen
        name="library"
        options={{
          title: t("tabs.library"),
          tabBarIcon: ({ color }) => <GrimoireIcon color={color} />,
        }}
      />
      <Tabs.Screen
        name="stack"
        options={{
          title: t("tabs.stack"),
          tabBarIcon: ({ color }) => <FlaskIcon color={color} />,
        }}
      />
      <Tabs.Screen
        name="timeline"
        options={{
          title: t("tabs.timeline"),
          tabBarIcon: ({ color }) => <CandleIcon color={color} />,
        }}
      />
      <Tabs.Screen
        name="coach"
        options={{
          title: t("tabs.coach"),
          tabBarIcon: ({ color }) => <ScrollIcon color={color} />,
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          title: t("tabs.profile"),
          tabBarIcon: ({ color }) => <CrystalBallIcon color={color} />,
        }}
      />
    </Tabs>
  );
}
