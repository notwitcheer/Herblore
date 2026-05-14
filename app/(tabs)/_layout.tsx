import { Tabs } from "expo-router";
import { useTranslation } from "react-i18next";
import { Text } from "react-native";
import { colors, fonts } from "@/lib/constants";

function TabIcon({ icon, focused }: { icon: string; focused: boolean }) {
  return (
    <Text style={{ fontSize: 22, opacity: focused ? 1 : 0.45 }}>{icon}</Text>
  );
}

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
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="📜" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="stack"
        options={{
          title: t("tabs.stack"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="⚗️" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="timeline"
        options={{
          title: t("tabs.timeline"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="🕯️" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          title: t("tabs.profile"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="🔮" focused={focused} />
          ),
        }}
      />
    </Tabs>
  );
}
