import { TIME_BLOCKS } from "./constants";
import type {
  Aliment,
  UserStackItem,
  TimeBlock,
  TimelineBlock,
  TimelineItem,
} from "./types";

const TIME_MAP: Record<string, TimeBlock> = {
  wake: "wake",
  morning: "breakfast",
  afternoon: "afternoon",
  evening: "dinner",
  bedtime: "bedtime",
};

export function generateTimeline(
  stackItems: UserStackItem[],
): TimelineBlock[] {
  const blocks = new Map<TimeBlock, TimelineItem[]>();
  for (const tb of TIME_BLOCKS) {
    blocks.set(tb, []);
  }

  const active = stackItems.filter((si) => si.is_active && si.aliment);

  for (const si of active) {
    const aliment = si.aliment!;

    if (!aliment.with_food && aliment.best_time.includes("morning")) {
      blocks.get("wake")!.push({
        aliment,
        dosage: si.dosage,
        dosageUnit: si.dosage_unit,
        reason: "Empty stomach for best absorption",
      });
      continue;
    }

    if (aliment.best_time.length > 0) {
      const primaryTime = aliment.best_time[0];
      const block = TIME_MAP[primaryTime] ?? "breakfast";
      blocks.get(block)!.push({
        aliment,
        dosage: si.dosage,
        dosageUnit: si.dosage_unit,
        reason: getReason(aliment, block),
      });
    } else {
      blocks.get("breakfast")!.push({
        aliment,
        dosage: si.dosage,
        dosageUnit: si.dosage_unit,
        reason: "General supplementation",
      });
    }
  }

  return TIME_BLOCKS.map((tb) => ({
    timeBlock: tb,
    items: blocks.get(tb) ?? [],
    taken: false,
  })).filter((b) => b.items.length > 0);
}

function getReason(aliment: Aliment, block: TimeBlock): string {
  if (!aliment.with_food && block === "wake") {
    return "Empty stomach for best absorption";
  }
  if (aliment.with_food) {
    return "With food for optimal absorption";
  }
  if (block === "bedtime") {
    return "Evening timing supports sleep quality";
  }
  if (block === "breakfast" || block === "lunch") {
    return "With meal for sustained effect";
  }
  return "Optimal timing for this supplement";
}
