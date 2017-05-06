@JS('window')
library lib._mathbox;

import "package:js/js.dart";
import "dart:html" show Element;
import "three/three-core.dart" show Camera, WebGLRenderer;

/// <reference types="three" />
@anonymous
@JS()
abstract class MathBoxOptionsControls {
  external dynamic get klass;
  external set klass(dynamic v);
  external factory MathBoxOptionsControls({dynamic klass});
}

@anonymous
@JS()
abstract class MathBoxOptionsCamera {
  external num get fov;
  external set fov(num v);
  external factory MathBoxOptionsCamera({num fov});
}

@anonymous
@JS()
abstract class MathBoxOptions {
  external Element get element;
  external set element(Element v);
  external List<String> get plugins;
  external set plugins(List<String> v);
  external MathBoxOptionsControls get controls;
  external set controls(MathBoxOptionsControls v);
  external MathBoxOptionsCamera get camera;
  external set camera(MathBoxOptionsCamera v);
  external factory MathBoxOptions(
      {Element element,
      List<String> plugins,
      MathBoxOptionsControls controls,
      MathBoxOptionsCamera camera});
}

@anonymous
@JS()
abstract class CartesianOptions {
  external List<List<num>> get range;
  external set range(List<List<num>> v);
  external List<num> get scale;
  external set scale(List<num> v);
  external factory CartesianOptions({List<List<num>> range, List<num> scale});
}

@anonymous
@JS()
abstract class AxisOptions {
  external num get axis;
  external set axis(num v);
  external String get color;
  external set color(String v);
  external factory AxisOptions({num axis, String color});
}

@JS()
external MathBoxAPI mathBox(MathBoxOptions options);

@JS()
class MathBoxAPI {
  // @Ignore
  MathBoxAPI.fakeConstructor$();
  external ThreeBootstrap get three;
  external set three(ThreeBootstrap v);
  external MathBoxAPI cartesian(CartesianOptions options);
  external MathBoxAPI axis(AxisOptions options);
}

@JS()
class ThreeBootstrap {
  // @Ignore
  ThreeBootstrap.fakeConstructor$();
  external Camera get camera;
  external set camera(Camera v);
  external WebGLRenderer get renderer;
  external set renderer(WebGLRenderer v);
}

