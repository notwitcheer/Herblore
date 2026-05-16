import Svg, { Path, Circle, G } from "react-native-svg";
import { colors } from "@/lib/constants";

interface EmblemProps {
  size?: number;
  color?: string;
  opacity?: number;
}

export function Emblem({
  size = 120,
  color = colors.accent,
  opacity = 1,
}: EmblemProps) {
  return (
    <Svg width={size} height={size} viewBox="0 0 100 100" opacity={opacity}>
      <G fill="none" stroke={color} strokeLinecap="round" strokeLinejoin="round">
        {/* Mortar — clean U-shape */}
        <Path
          d="M30 50 C30 68, 40 76, 50 76 C60 76, 70 68, 70 50"
          strokeWidth={2.8}
        />
        {/* Mortar rim */}
        <Path d="M26 50 L74 50" strokeWidth={3} />

        {/* Pestle — diagonal with round tip */}
        <Path d="M56 48 L68 28" strokeWidth={3.5} />
        <Circle cx={70} cy={25} r={4} strokeWidth={2.5} fill={`${color}15`} />

        {/* Left leaf */}
        <Path
          d="M24 72 C16 62, 16 50, 22 42"
          strokeWidth={2}
        />
        <Path
          d="M22 66 C17 63, 15 57, 17 52"
          strokeWidth={1.5}
        />
        <Path
          d="M24 58 C19 56, 18 50, 20 45"
          strokeWidth={1.5}
        />

        {/* Right leaf */}
        <Path
          d="M76 72 C84 62, 84 50, 78 42"
          strokeWidth={2}
        />
        <Path
          d="M78 66 C83 63, 85 57, 83 52"
          strokeWidth={1.5}
        />
        <Path
          d="M76 58 C81 56, 82 50, 80 45"
          strokeWidth={1.5}
        />

        {/* Star at top */}
        <Path d="M50 12 L50 18" strokeWidth={2} />
        <Path d="M47 15 L53 15" strokeWidth={2} />
      </G>
    </Svg>
  );
}
