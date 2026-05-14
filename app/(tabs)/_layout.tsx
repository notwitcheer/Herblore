import { Tabs } from "expo-router";
import { useTranslation } from "react-i18next";
import { Text } from "react-native";
import { colors } from "@/lib/constants";

function TabIcon({ icon, focused }: { icon: string; focused: boolean }) {
  return (
    <Text style={{ fontSize: 22, opacity: focused ? 1 : 0.5 }}>{icon}</Text>
  );
}

export default function TabLayout() {
  const { t } = useTranslation();

  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        tabBarActiveTintColor: colors.primary,
        tabBarInactiveTintColor: colors.textTertiary,
        tabBarStyle: {
          backgroundColor: colors.surface,
          borderTopColor: colors.border,
        },
        tabBarLabelStyle: {
          fontSize: 11,
          fontWeight: "600",
        },
      }}
    >
      <Tabs.Screen
        name="library"
        options={{
          title: t("tabs.library"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="📚" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="stack"
        options={{
          title: t("tabs.stack"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="💊" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="timeline"
        options={{
          title: t("tabs.timeline"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="🕐" focused={focused} />
          ),
        }}
      />
      <Tabs.Screen
        name="profile"
        options={{
          title: t("tabs.profile"),
          tabBarIcon: ({ focused }) => (
            <TabIcon icon="👤" focused={focused} />
          ),
        }}
      />
    </Tabs>
  );
}
