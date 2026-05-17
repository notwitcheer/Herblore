import { useState, useCallback, useEffect, useRef } from "react";
import type { Aliment, UserStackItem } from "@/lib/types";
import { storage } from "@/lib/storage";

export function useStack() {
  const [items, setItems] = useState<UserStackItem[]>([]);
  const [loaded, setLoaded] = useState(false);
  const skipPersist = useRef(true);

  useEffect(() => {
    storage.getStack().then((saved) => {
      if (saved.length > 0) setItems(saved);
      setLoaded(true);
      skipPersist.current = false;
    });
  }, []);

  useEffect(() => {
    if (skipPersist.current) return;
    storage.setStack(items);
  }, [items]);

  const addToStack = useCallback((aliment: Aliment, dosage?: number) => {
    setItems((prev) => {
      if (prev.some((i) => i.aliment_id === aliment.id)) return prev;
      const item: UserStackItem = {
        id: `stack-${Date.now()}`,
        user_id: "local",
        aliment_id: aliment.id,
        dosage: dosage ?? aliment.dosage_min,
        dosage_unit: aliment.dosage_unit,
        is_active: true,
        cure_start_date: null,
        notes: null,
        added_at: new Date().toISOString(),
        aliment,
      };
      return [...prev, item];
    });
  }, []);

  const removeFromStack = useCallback((alimentId: string) => {
    setItems((prev) => prev.filter((i) => i.aliment_id !== alimentId));
  }, []);

  const toggleActive = useCallback((alimentId: string) => {
    setItems((prev) =>
      prev.map((i) =>
        i.aliment_id === alimentId ? { ...i, is_active: !i.is_active } : i,
      ),
    );
  }, []);

  const updateDosage = useCallback((alimentId: string, dosage: number) => {
    setItems((prev) =>
      prev.map((i) =>
        i.aliment_id === alimentId ? { ...i, dosage } : i,
      ),
    );
  }, []);

  const isInStack = useCallback(
    (alimentId: string) => items.some((i) => i.aliment_id === alimentId),
    [items],
  );

  const activeItems = items.filter((i) => i.is_active);

  return {
    items,
    activeItems,
    addToStack,
    removeFromStack,
    toggleActive,
    updateDosage,
    isInStack,
    loaded,
  };
}
