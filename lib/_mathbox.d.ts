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

interface CartesianOptions {
  range: Array<Array<number>>;
  scale: Array<number>;
}

interface AxisOptions {
  axis: number;
  color: string;
}

declare function mathBox(options: MathBoxOptions): MathBoxAPI;

declare class MathBoxAPI {
  three: ThreeBootstrap;

  cartesian(options: CartesianOptions): MathBoxAPI;
  axis(options: AxisOptions): MathBoxAPI;
}

declare class ThreeBootstrap {
  camera: THREE.Camera;
  renderer: THREE.WebGLRenderer;
}
