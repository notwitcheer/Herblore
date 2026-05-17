import { Image, type ImageStyle, type StyleProp } from "react-native";

const OWL_POSES = {
  default: require("@/assets/owl/default.png"),
  reading: require("@/assets/owl/reading.png"),
  sleeping: require("@/assets/owl/sleeping.png"),
  mixing: require("@/assets/owl/mixing.png"),
  magnifying: require("@/assets/owl/magnifying.png"),
  waving: require("@/assets/owl/waving.png"),
  warning: require("@/assets/owl/warning.png"),
} as const;

export type OwlPose = keyof typeof OWL_POSES;

interface OwlMascotProps {
  pose?: OwlPose;
  size?: number;
  style?: StyleProp<ImageStyle>;
}

const ASPECT_RATIO = 784 / 1168;

export function OwlMascot({ pose = "default", size = 120, style }: OwlMascotProps) {
  return (
    <Image
      source={OWL_POSES[pose]}
      style={[
        {
          width: size * ASPECT_RATIO,
          height: size,
          resizeMode: "contain",
        },
        style,
      ]}
    />
  );
}
