import AsyncStorage from "@react-native-async-storage/async-storage";

const KEYS = {
  ONBOARDED: "herblore:onboarded",
  GOALS: "herblore:goals",
  STACK: "herblore:stack",
  INTAKE: "herblore:intake",
  INTAKE_DATE: "herblore:intake_date",
  LANGUAGE: "herblore:language",
  DISCLAIMER_ACCEPTED: "herblore:disclaimer_accepted",
  SUBSCRIPTION: "herblore:subscription",
} as const;

export const storage = {
  async getOnboarded(): Promise<boolean> {
    return (await AsyncStorage.getItem(KEYS.ONBOARDED)) === "true";
  },
  async setOnboarded(value: boolean): Promise<void> {
    await AsyncStorage.setItem(KEYS.ONBOARDED, String(value));
  },

  async getGoals(): Promise<string[]> {
    const raw = await AsyncStorage.getItem(KEYS.GOALS);
    return raw ? JSON.parse(raw) : [];
  },
  async setGoals(goals: string[]): Promise<void> {
    await AsyncStorage.setItem(KEYS.GOALS, JSON.stringify(goals));
  },

  async getStack(): Promise<any[]> {
    const raw = await AsyncStorage.getItem(KEYS.STACK);
    return raw ? JSON.parse(raw) : [];
  },
  async setStack(items: any[]): Promise<void> {
    await AsyncStorage.setItem(KEYS.STACK, JSON.stringify(items));
  },

  async getIntake(): Promise<{ date: string; blocks: string[] }> {
    const date = await AsyncStorage.getItem(KEYS.INTAKE_DATE);
    const today = new Date().toISOString().slice(0, 10);
    if (date !== today) {
      await AsyncStorage.setItem(KEYS.INTAKE_DATE, today);
      await AsyncStorage.setItem(KEYS.INTAKE, "[]");
      return { date: today, blocks: [] };
    }
    const raw = await AsyncStorage.getItem(KEYS.INTAKE);
    return { date: today, blocks: raw ? JSON.parse(raw) : [] };
  },
  async setIntakeBlocks(blocks: string[]): Promise<void> {
    const today = new Date().toISOString().slice(0, 10);
    await AsyncStorage.setItem(KEYS.INTAKE_DATE, today);
    await AsyncStorage.setItem(KEYS.INTAKE, JSON.stringify(blocks));
  },

  async getLanguage(): Promise<string | null> {
    return AsyncStorage.getItem(KEYS.LANGUAGE);
  },
  async setLanguage(lang: string): Promise<void> {
    await AsyncStorage.setItem(KEYS.LANGUAGE, lang);
  },

  async getDisclaimerAccepted(): Promise<boolean> {
    return (await AsyncStorage.getItem(KEYS.DISCLAIMER_ACCEPTED)) === "true";
  },
  async setDisclaimerAccepted(value: boolean): Promise<void> {
    await AsyncStorage.setItem(KEYS.DISCLAIMER_ACCEPTED, String(value));
  },

  async getSubscribed(): Promise<boolean> {
    return (await AsyncStorage.getItem(KEYS.SUBSCRIPTION)) === "true";
  },
  async setSubscribed(value: boolean): Promise<void> {
    await AsyncStorage.setItem(KEYS.SUBSCRIPTION, String(value));
  },
};
