import { createContext, useContext, useState, useEffect, useCallback, type ReactNode } from "react";
import { storage } from "@/lib/storage";

interface SubscriptionContextType {
  isSubscribed: boolean;
  isLoading: boolean;
  subscribe: () => void;
  restore: () => void;
}

const SubscriptionContext = createContext<SubscriptionContextType | null>(null);

const FREE_LIBRARY_LIMIT = 20;

export { FREE_LIBRARY_LIMIT };

export function SubscriptionProvider({ children }: { children: ReactNode }) {
  const [isSubscribed, setIsSubscribed] = useState(false);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    storage.getSubscribed().then((sub) => {
      setIsSubscribed(sub);
      setIsLoading(false);
    });
  }, []);

  const subscribe = useCallback(() => {
    setIsSubscribed(true);
    storage.setSubscribed(true);
  }, []);

  const restore = useCallback(() => {
    setIsSubscribed(true);
    storage.setSubscribed(true);
  }, []);

  return (
    <SubscriptionContext.Provider
      value={{ isSubscribed, isLoading, subscribe, restore }}
    >
      {children}
    </SubscriptionContext.Provider>
  );
}

export function useSubscription() {
  const ctx = useContext(SubscriptionContext);
  if (!ctx) throw new Error("useSubscription must be used within SubscriptionProvider");
  return ctx;
}
