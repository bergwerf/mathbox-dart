/// <reference types="three" />

interface MathBoxOptionsControls {
  klass: any
}

interface MathBoxOptionsCamera {
  fov: number
}

interface MathBoxOptions {
  element: Element;
  plugins: Array<String>;
  controls: MathBoxOptionsControls;
  camera: MathBoxOptionsCamera;
}

interface CartesianArgs {
  range: Array<Array<number>>;
  scale: Array<number>;
}

interface AxisArgs {
  axis: number;
  color: string;
  width: number;
  start: boolean;
  end: boolean;
}

interface IntervalArgs {
  width: number;
  expr: Function;
  items: number;
  channels: number;
}

interface LineArgs {
  color: string;
  width: number;
  size: number;
  start: boolean;
  end: boolean;
}

declare function mathBox(options: MathBoxOptions): MathBoxAPI;

declare class MathBoxAPI {
  three: ThreeBootstrap;

  cartesian(args: CartesianArgs): MathBoxAPI;
  axis(args: AxisArgs): MathBoxAPI;
  interval(args: IntervalArgs): MathBoxAPI;
  line(args: LineArgs): MathBoxAPI;
}

declare class ThreeBootstrap {
  camera: THREE.Camera;
  renderer: THREE.WebGLRenderer;
}
