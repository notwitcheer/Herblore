import Svg, { Path, G, Circle } from "react-native-svg";

interface IconProps {
  size?: number;
  color?: string;
}

export function SunriseIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round">
        {/* Horizon */}
        <Path d="M3 15 L19 15" />
        {/* Half sun */}
        <Path d="M7 15 C7 12, 9 10, 11 10 C13 10, 15 12, 15 15" />
        {/* Rays */}
        <Path d="M11 7 L11 5" />
        <Path d="M7 9 L5.5 7.5" />
        <Path d="M15 9 L16.5 7.5" />
        <Path d="M5 12 L3.5 11.5" />
        <Path d="M17 12 L18.5 11.5" />
        {/* Arrow up */}
        <Path d="M11 19 L11 16" strokeWidth={1.2} />
        <Path d="M9.5 17.5 L11 16 L12.5 17.5" strokeWidth={1.2} />
      </G>
    </Svg>
  );
}

export function BreakfastIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round" strokeLinejoin="round">
        {/* Bowl */}
        <Path d="M4 11 C4 15, 7 17, 11 17 C15 17, 18 15, 18 11 L4 11Z" />
        {/* Bowl base */}
        <Path d="M8 17 C8 18.5, 9.5 19, 11 19 C12.5 19, 14 18.5, 14 17" />
        {/* Steam */}
        <Path d="M8 8 C8 7, 9 6.5, 9 5.5 C9 4.5, 8 4, 8 3" strokeWidth={1} />
        <Path d="M11 9 C11 8, 12 7.5, 12 6.5 C12 5.5, 11 5, 11 4" strokeWidth={1} />
        <Path d="M14 8 C14 7, 15 6.5, 15 5.5 C15 4.5, 14 4, 14 3" strokeWidth={1} />
      </G>
    </Svg>
  );
}

export function NoonSunIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round">
        <Circle cx={11} cy={11} r={4} />
        {/* Rays */}
        <Path d="M11 3 L11 5" />
        <Path d="M11 17 L11 19" />
        <Path d="M3 11 L5 11" />
        <Path d="M17 11 L19 11" />
        <Path d="M5.5 5.5 L7 7" />
        <Path d="M15 15 L16.5 16.5" />
        <Path d="M16.5 5.5 L15 7" />
        <Path d="M7 15 L5.5 16.5" />
      </G>
    </Svg>
  );
}

export function AfternoonIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round">
        {/* Setting sun */}
        <Circle cx={11} cy={12} r={3.5} />
        {/* Short rays */}
        <Path d="M11 6 L11 7.5" />
        <Path d="M6 9 L7.2 9.8" />
        <Path d="M16 9 L14.8 9.8" />
        <Path d="M5 12 L6.5 12" />
        <Path d="M15.5 12 L17 12" />
        {/* Horizon */}
        <Path d="M3 17 L19 17" />
        {/* Clouds hint */}
        <Path d="M14 16 C15 15.5, 16 15.5, 17 16" strokeWidth={1} />
      </G>
    </Svg>
  );
}

export function DinnerIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round" strokeLinejoin="round">
        {/* Crescent moon */}
        <Path d="M14 4 C10 4, 7 7, 7 11 C7 15, 10 18, 14 18 C11 17, 9.5 14, 9.5 11 C9.5 8, 11 5, 14 4Z" />
        {/* Stars */}
        <Circle cx={16} cy={7} r={0.6} fill={color} stroke="none" />
        <Circle cx={18} cy={10} r={0.4} fill={color} stroke="none" />
        <Circle cx={17} cy={14} r={0.5} fill={color} stroke="none" />
      </G>
    </Svg>
  );
}

export function BedtimeIcon({ size = 22, color = "#D4A847" }: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 22 22" fill="none">
      <G stroke={color} strokeWidth={1.4} strokeLinecap="round">
        {/* Moon */}
        <Path d="M13 3 C9.5 3.5, 7 6.5, 7 10 C7 14, 10 17, 14 17 C11.5 16, 10 13, 10 10 C10 7.5, 11 5, 13 3Z" />
        {/* Stars */}
        <Path d="M16 5 L16 7" strokeWidth={1} />
        <Path d="M15 6 L17 6" strokeWidth={1} />
        <Path d="M18 9 L18 10.5" strokeWidth={0.8} />
        <Path d="M17.3 9.75 L18.7 9.75" strokeWidth={0.8} />
        {/* Zzz */}
        <Path d="M15 13 L17 13 L15 15 L17 15" strokeWidth={1} />
      </G>
    </Svg>
  );
}
