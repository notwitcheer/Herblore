import Svg, { Path, G, Circle, Rect, Line } from "react-native-svg";

interface IconProps {
  size?: number;
  color?: string;
  strokeWidth?: number;
}

export function GrimoireIcon({
  size = 24,
  color = "#D4A847",
  strokeWidth = 1.6,
}: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none">
      <G stroke={color} strokeWidth={strokeWidth} strokeLinecap="round" strokeLinejoin="round">
        {/* Book cover */}
        <Path d="M4 19.5A2.5 2.5 0 016.5 17H20V4H6.5A2.5 2.5 0 004 6.5v13z" />
        {/* Book spine detail */}
        <Path d="M4 19.5A2.5 2.5 0 016.5 17H20" />
        {/* Leaf on cover */}
        <Path d="M10 8 C10 8, 12 7, 14 9 C14 9, 12 11, 10 10" strokeWidth={1.2} />
        <Path d="M10 8 C11 9, 12 9.5, 14 9" strokeWidth={0.8} />
        {/* Page lines */}
        <Path d="M9 13 L15 13" strokeWidth={0.8} opacity={0.5} />
        <Path d="M9 15 L13 15" strokeWidth={0.8} opacity={0.5} />
      </G>
    </Svg>
  );
}

export function FlaskIcon({
  size = 24,
  color = "#D4A847",
  strokeWidth = 1.6,
}: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none">
      <G stroke={color} strokeWidth={strokeWidth} strokeLinecap="round" strokeLinejoin="round">
        {/* Flask neck */}
        <Path d="M9 3 L9 8 L5 16 C4 18, 5 20, 7 20 L17 20 C19 20, 20 18, 19 16 L15 8 L15 3" />
        {/* Flask top rim */}
        <Path d="M8 3 L16 3" />
        {/* Liquid level */}
        <Path d="M6.5 14 C8 13, 10 15, 12 14 C14 13, 16 14, 17.5 14" strokeWidth={1.2} />
        {/* Herb sprig inside */}
        <Path d="M11 10 L11 7" strokeWidth={1} />
        <Path d="M11 8 C10 7.5, 9.5 8, 10 9" strokeWidth={0.8} />
        <Path d="M11 8 C12 7.5, 12.5 8, 12 9" strokeWidth={0.8} />
        {/* Bubbles */}
        <Circle cx={10} cy={16} r={0.7} strokeWidth={0.8} />
        <Circle cx={13} cy={17} r={0.5} strokeWidth={0.8} />
      </G>
    </Svg>
  );
}

export function CandleIcon({
  size = 24,
  color = "#D4A847",
  strokeWidth = 1.6,
}: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none">
      <G stroke={color} strokeWidth={strokeWidth} strokeLinecap="round" strokeLinejoin="round">
        {/* Candle body */}
        <Rect x={9} y={10} width={6} height={10} rx={1} />
        {/* Candle drip */}
        <Path d="M9 12 C8.5 12, 8 12.5, 8 13 C8 13.5, 8.5 14, 9 14" strokeWidth={1.2} />
        {/* Wick */}
        <Path d="M12 10 L12 7" />
        {/* Flame outer */}
        <Path d="M12 3 C10.5 4.5, 10 6, 11 7 C11.5 7.5, 12 7.5, 12 7.5 C12 7.5, 12.5 7.5, 13 7 C14 6, 13.5 4.5, 12 3Z" fill={`${color}15`} />
        {/* Flame inner */}
        <Path d="M12 4.5 C11.5 5.2, 11.3 5.8, 11.8 6.3 C12 6.5, 12.2 6.3, 12.2 6.3 C12.5 5.8, 12.5 5.2, 12 4.5Z" strokeWidth={0.8} />
        {/* Base plate */}
        <Path d="M7 20 L17 20" />
        <Path d="M8 20 C8 21, 9 21.5, 12 21.5 C15 21.5, 16 21, 16 20" />
      </G>
    </Svg>
  );
}

export function ScrollIcon({
  size = 24,
  color = "#D4A847",
  strokeWidth = 1.6,
}: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none">
      <G stroke={color} strokeWidth={strokeWidth} strokeLinecap="round" strokeLinejoin="round">
        {/* Scroll body */}
        <Path d="M8 4 C6 4, 5 5, 5 6 C5 7, 6 8, 8 8 L19 8 L19 18 C19 19, 18 20, 17 20 L6 20 C5 20, 4 19, 4 18 L4 6" />
        {/* Top curl */}
        <Path d="M8 4 L19 4 C20 4, 21 5, 21 6 C21 7, 20 8, 19 8" />
        {/* Text lines */}
        <Line x1={8} y1={12} x2={16} y2={12} strokeWidth={1} opacity={0.5} />
        <Line x1={8} y1={15} x2={14} y2={15} strokeWidth={1} opacity={0.5} />
        {/* Quill */}
        <Path d="M13 18 L15 16 C15.5 15.5, 16.5 15.5, 17 16 L15 18 Z" strokeWidth={1} />
      </G>
    </Svg>
  );
}

export function CrystalBallIcon({
  size = 24,
  color = "#D4A847",
  strokeWidth = 1.6,
}: IconProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 24 24" fill="none">
      <G stroke={color} strokeWidth={strokeWidth} strokeLinecap="round" strokeLinejoin="round">
        {/* Ball */}
        <Circle cx={12} cy={11} r={7.5} fill={`${color}05`} />
        {/* Light reflection */}
        <Path d="M9 8 C9.5 7, 10.5 6.5, 11 6.5" strokeWidth={1.2} />
        {/* Inner vision - small leaf */}
        <Path d="M11 11 C11 10, 12 9.5, 13 10.5 C13 10.5, 12.5 12, 11 11.5" strokeWidth={0.8} />
        <Path d="M11 11 C11.5 10.5, 12 10.5, 13 10.5" strokeWidth={0.6} />
        {/* Stand */}
        <Path d="M8 18 C8 17, 10 16, 12 16 C14 16, 16 17, 16 18" />
        <Path d="M7 18 L17 18" strokeWidth={1.8} />
        {/* Stand base */}
        <Path d="M9 18 L8 20 L16 20 L15 18" strokeWidth={1.4} />
        {/* Mystical dots */}
        <Circle cx={10} cy={13} r={0.4} fill={color} stroke="none" />
        <Circle cx={14} cy={12} r={0.3} fill={color} stroke="none" />
        <Circle cx={12} cy={14} r={0.3} fill={color} stroke="none" />
      </G>
    </Svg>
  );
}
