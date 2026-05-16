import Svg, { Path, G, Circle, Rect } from "react-native-svg";

interface IconProps {
  size?: number;
  color?: string;
}

export function VitaminIcon({ size = 18, color = "#6B9E78" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        <Rect x={5} y={4} width={8} height={10} rx={4} />
        <Path d="M5 9 L13 9" />
        <Circle cx={9} cy={6.5} r={0.5} fill={color} stroke="none" />
      </G>
    </Svg>
  );
}

export function MineralIcon({ size = 18, color = "#7B8FA8" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        <Path d="M9 2 L13 7 L11 15 L7 15 L5 7 Z" />
        <Path d="M5 7 L9 9 L13 7" />
        <Path d="M9 9 L9 15" />
        <Path d="M7 5 L11 5" strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function AminoAcidIcon({ size = 18, color = "#9E7CB5" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round">
        <Circle cx={6} cy={9} r={2.5} />
        <Circle cx={12} cy={9} r={2.5} />
        <Path d="M8.5 9 L9.5 9" strokeWidth={1.8} />
        <Path d="M6 6.5 L6 4" strokeWidth={1} />
        <Path d="M12 6.5 L12 4" strokeWidth={1} />
      </G>
    </Svg>
  );
}

export function AdaptogenIcon({ size = 18, color = "#5BA66B" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Root */}
        <Path d="M9 8 L9 15" />
        <Path d="M9 12 L7 14" />
        <Path d="M9 13 L11 15" />
        <Path d="M9 11 L6.5 12.5" strokeWidth={1} />
        {/* Leaves */}
        <Path d="M9 8 C7 6, 5 6.5, 5 4.5 C5 3, 7 2.5, 9 4" />
        <Path d="M9 8 C11 6, 13 6.5, 13 4.5 C13 3, 11 2.5, 9 4" />
        <Path d="M9 4 L9 8" strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function MushroomIcon({ size = 18, color = "#C4813D" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Cap */}
        <Path d="M3 10 C3 6, 6 3, 9 3 C12 3, 15 6, 15 10 L3 10Z" />
        {/* Stem */}
        <Path d="M7 10 L7 14 C7 15, 8 15.5, 9 15.5 C10 15.5, 11 15, 11 14 L11 10" />
        {/* Cap dots */}
        <Circle cx={7} cy={6.5} r={0.7} strokeWidth={0.8} />
        <Circle cx={11} cy={7} r={0.6} strokeWidth={0.8} />
        <Circle cx={9} cy={5} r={0.5} strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function SuperfoodIcon({ size = 18, color = "#6B9E78" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Sprout */}
        <Path d="M9 15 L9 8" />
        <Path d="M9 10 C7 9, 5 9.5, 4.5 7.5 C4 5.5, 6 5, 9 7" />
        <Path d="M9 8 C11 7, 13 7.5, 13.5 5.5 C14 3.5, 12 3, 9 5" />
        {/* Ground */}
        <Path d="M5 15 L13 15" />
        {/* Sparkle */}
        <Path d="M14 10 L14.5 9.5 L15 10 L14.5 10.5Z" strokeWidth={0.8} fill={color} />
      </G>
    </Svg>
  );
}

export function HerbIcon({ size = 18, color = "#4A7C59" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Stem */}
        <Path d="M9 15 C9 12, 8 10, 9 7 C10 4, 9 3, 9 3" />
        {/* Leaves */}
        <Path d="M9 12 C7 11, 5.5 11.5, 5.5 10 C5.5 8.5, 7 8.5, 9 10" />
        <Path d="M9 9 C11 8, 12.5 8.5, 12.5 7 C12.5 5.5, 11 5.5, 9 7" />
        <Path d="M9 6 C7.5 5, 6 5.5, 6 4.5 C6 3.5, 7.5 3, 9 4.5" />
      </G>
    </Svg>
  );
}

export function SpiceIcon({ size = 18, color = "#C45C4A" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Mortar */}
        <Path d="M4 9 C4 12.5, 6 14, 9 14 C12 14, 14 12.5, 14 9 L4 9Z" />
        {/* Mortar rim */}
        <Path d="M3.5 9 L14.5 9" strokeWidth={1.5} />
        {/* Pestle */}
        <Path d="M12 7 L15 3" strokeWidth={1.8} />
        <Circle cx={15.3} cy={2.7} r={1} strokeWidth={1.2} />
        {/* Dots (spice grains) */}
        <Circle cx={7} cy={11} r={0.4} fill={color} stroke="none" />
        <Circle cx={9.5} cy={12} r={0.4} fill={color} stroke="none" />
        <Circle cx={11} cy={10.5} r={0.4} fill={color} stroke="none" />
      </G>
    </Svg>
  );
}

export function FermentedIcon({ size = 18, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Jar */}
        <Rect x={5} y={5} width={8} height={10} rx={1} />
        {/* Lid */}
        <Path d="M4.5 5 L13.5 5" strokeWidth={1.8} />
        <Path d="M6 5 L6 3.5 L12 3.5 L12 5" />
        {/* Bubbles */}
        <Circle cx={8} cy={9} r={1} strokeWidth={1} />
        <Circle cx={11} cy={11} r={0.7} strokeWidth={0.8} />
        <Circle cx={7.5} cy={12.5} r={0.6} strokeWidth={0.8} />
        <Circle cx={10} cy={8} r={0.5} strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function FunctionalFoodIcon({ size = 18, color = "#7BA8A0" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Bowl */}
        <Path d="M3 9 C3 12.5, 5.5 15, 9 15 C12.5 15, 15 12.5, 15 9 L3 9Z" />
        {/* Contents */}
        <Path d="M5 9 C6 8.5, 7.5 9, 9 8.5 C10.5 8, 12 8.5, 13 9" strokeWidth={1} />
        {/* Steam */}
        <Path d="M7 6.5 C7 5.5, 7.5 5, 7.5 4" strokeWidth={1} />
        <Path d="M11 6.5 C11 5.5, 11.5 5, 11.5 4" strokeWidth={1} />
        {/* Plus sign (functional) */}
        <Path d="M15 4 L15 6" strokeWidth={1} />
        <Path d="M14 5 L16 5" strokeWidth={1} />
      </G>
    </Svg>
  );
}

export function FattyAcidIcon({ size = 18, color = "#7B8FA8" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Oil drop */}
        <Path d="M9 3 C9 3, 5 8, 5 11 C5 13.5, 7 15.5, 9 15.5 C11 15.5, 13 13.5, 13 11 C13 8, 9 3, 9 3Z" />
        {/* Omega wave */}
        <Path d="M7 11 C7.5 10, 8.5 10, 9 11 C9.5 12, 10.5 12, 11 11" strokeWidth={1} />
        {/* Highlight */}
        <Path d="M7.5 8 C8 7.5, 8.5 7.5, 8.5 8" strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function ProbioticIcon({ size = 18, color = "#9E7CB5" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round">
        {/* Main cell */}
        <Circle cx={9} cy={9} r={4} />
        {/* Inner detail */}
        <Circle cx={9} cy={9} r={1.5} strokeWidth={0.8} />
        {/* Flagella */}
        <Path d="M5 9 C4 8.5, 3 9, 2.5 8.5" strokeWidth={1} />
        <Path d="M13 9 C14 8.5, 15 9, 15.5 8.5" strokeWidth={1} />
        {/* Small cells */}
        <Circle cx={4} cy={4} r={1.2} strokeWidth={1} />
        <Circle cx={14.5} cy={14} r={1} strokeWidth={0.8} />
        <Circle cx={14} cy={4.5} r={0.8} strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function SpecialtyIcon({ size = 18, color = "#7B8FA8" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 18 18" fill="none">
      <G stroke={color} strokeWidth={1.3} strokeLinecap="round" strokeLinejoin="round">
        {/* Vial */}
        <Path d="M7 3 L11 3" />
        <Path d="M8 3 L8 7 L6 12 C5.5 13.5, 6.5 15, 8 15 L10 15 C11.5 15, 12.5 13.5, 12 12 L10 7 L10 3" />
        {/* Liquid */}
        <Path d="M6.5 11 L11.5 11" strokeWidth={0.8} />
        {/* Atom/molecular hint */}
        <Circle cx={9} cy={13} r={0.5} fill={color} stroke="none" />
        <Path d="M14 5 L16 5" strokeWidth={0.8} />
        <Path d="M15 4 L15 6" strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export const CATEGORY_ICON_MAP: Record<string, React.ComponentType<IconProps>> = {
  vitamin: VitaminIcon,
  mineral: MineralIcon,
  amino_acid: AminoAcidIcon,
  adaptogen: AdaptogenIcon,
  mushroom: MushroomIcon,
  superfood: SuperfoodIcon,
  herb: HerbIcon,
  spice: SpiceIcon,
  fermented_food: FermentedIcon,
  functional_food: FunctionalFoodIcon,
  fatty_acid: FattyAcidIcon,
  probiotic: ProbioticIcon,
  specialty_compound: SpecialtyIcon,
};
