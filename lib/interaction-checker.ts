import type { UserStackItem, Interaction } from "./types";

export interface StackInteraction {
  itemA: UserStackItem;
  itemB: UserStackItem;
  interaction: Interaction;
}

export function checkStackInteractions(
  items: UserStackItem[],
): StackInteraction[] {
  const results: StackInteraction[] = [];
  const active = items.filter((i) => i.is_active && i.aliment);

  for (let i = 0; i < active.length; i++) {
    for (let j = i + 1; j < active.length; j++) {
      const a = active[i];
      const b = active[j];
      const alimentA = a.aliment!;
      const alimentB = b.aliment!;

      for (const ix of alimentA.interactions) {
        if (
          ix.aliment_b_id === alimentB.id ||
          ix.aliment_b_id === alimentB.slug
        ) {
          results.push({ itemA: a, itemB: b, interaction: ix });
        }
      }

      for (const ix of alimentB.interactions) {
        if (
          ix.aliment_b_id === alimentA.id ||
          ix.aliment_b_id === alimentA.slug ||
          ix.aliment_a_id === alimentA.id ||
          ix.aliment_a_id === alimentA.slug
        ) {
          const already = results.some(
            (r) =>
              (r.itemA === a && r.itemB === b) ||
              (r.itemA === b && r.itemB === a),
          );
          if (!already) {
            results.push({ itemA: b, itemB: a, interaction: ix });
          }
        }
      }
    }
  }

  return results;
}

export function getSynergies(interactions: StackInteraction[]) {
  return interactions.filter((i) => i.interaction.interaction_type === "synergy");
}

export function getConflicts(interactions: StackInteraction[]) {
  return interactions.filter(
    (i) =>
      i.interaction.interaction_type === "conflict" ||
      i.interaction.interaction_type === "timing_separation",
  );
}
