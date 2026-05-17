import { createContext, useContext, useState, useEffect, useCallback, type ReactNode } from "react";
import type { GoalSlug } from "@/lib/types";
import { storage } from "@/lib/storage";

interface OnboardingContextType {
  isOnboarded: boolean;
  isLoading: boolean;
  goals: GoalSlug[];
  disclaimerAccepted: boolean;
  setGoals: (goals: GoalSlug[]) => void;
  acceptDisclaimer: () => void;
  completeOnboarding: () => void;
}

const OnboardingContext = createContext<OnboardingContextType | null>(null);

export function OnboardingProvider({ children }: { children: ReactNode }) {
  const [isOnboarded, setIsOnboarded] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [goals, setGoalsState] = useState<GoalSlug[]>([]);
  const [disclaimerAccepted, setDisclaimerAccepted] = useState(false);

  useEffect(() => {
    Promise.all([
      storage.getOnboarded(),
      storage.getGoals(),
      storage.getDisclaimerAccepted(),
    ]).then(([onboarded, savedGoals, disclaimer]) => {
      setIsOnboarded(onboarded);
      setGoalsState(savedGoals as GoalSlug[]);
      setDisclaimerAccepted(disclaimer);
      setIsLoading(false);
    });
  }, []);

  const setGoals = useCallback((newGoals: GoalSlug[]) => {
    setGoalsState(newGoals);
    storage.setGoals(newGoals);
  }, []);

  const acceptDisclaimer = useCallback(() => {
    setDisclaimerAccepted(true);
    storage.setDisclaimerAccepted(true);
  }, []);

  const completeOnboarding = useCallback(() => {
    setIsOnboarded(true);
    storage.setOnboarded(true);
  }, []);

  return (
    <OnboardingContext.Provider
      value={{
        isOnboarded,
        isLoading,
        goals,
        disclaimerAccepted,
        setGoals,
        acceptDisclaimer,
        completeOnboarding,
      }}
    >
      {children}
    </OnboardingContext.Provider>
  );
}

export function useOnboarding() {
  const ctx = useContext(OnboardingContext);
  if (!ctx) throw new Error("useOnboarding must be used within OnboardingProvider");
  return ctx;
}
