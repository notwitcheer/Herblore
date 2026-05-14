import i18n from "i18next";
import { initReactI18next } from "react-i18next";
import * as Localization from "expo-localization";

import en from "@/locales/en.json";
import fr from "@/locales/fr.json";
import it from "@/locales/it.json";

const deviceLocale = Localization.getLocales()[0]?.languageCode ?? "en";
const supportedLngs = ["en", "fr", "it"];
const fallbackLng = "en";

i18n.use(initReactI18next).init({
  resources: { en: { translation: en }, fr: { translation: fr }, it: { translation: it } },
  lng: supportedLngs.includes(deviceLocale) ? deviceLocale : fallbackLng,
  fallbackLng,
  interpolation: { escapeValue: false },
});

export default i18n;
