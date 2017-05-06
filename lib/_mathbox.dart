// Copyright (c) 2017, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

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
abstract class CartesianArgs {
  external List<List<num>> get range;
  external set range(List<List<num>> v);
  external List<num> get scale;
  external set scale(List<num> v);
  external factory CartesianArgs({List<List<num>> range, List<num> scale});
}

@anonymous
@JS()
abstract class AxisArgs {
  external num get axis;
  external set axis(num v);
  external String get color;
  external set color(String v);
  external num get width;
  external set width(num v);
  external bool get start;
  external set start(bool v);
  external bool get end;
  external set end(bool v);
  external factory AxisArgs(
      {num axis, String color, num width, bool start, bool end});
}

@anonymous
@JS()
abstract class IntervalArgs {
  external num get width;
  external set width(num v);
  external Function get expr;
  external set expr(Function v);
  external num get items;
  external set items(num v);
  external num get channels;
  external set channels(num v);
  external factory IntervalArgs(
      {num width, Function expr, num items, num channels});
}

@anonymous
@JS()
abstract class LineArgs {
  external String get color;
  external set color(String v);
  external num get width;
  external set width(num v);
  external num get size;
  external set size(num v);
  external bool get start;
  external set start(bool v);
  external bool get end;
  external set end(bool v);
  external factory LineArgs(
      {String color, num width, num size, bool start, bool end});
}

@JS()
external MathBoxAPI mathBox(MathBoxOptions options);

@JS()
class MathBoxAPI {
  // @Ignore
  MathBoxAPI.fakeConstructor$();
  external ThreeBootstrap get three;
  external set three(ThreeBootstrap v);
  external MathBoxAPI cartesian(CartesianArgs args);
  external MathBoxAPI axis(AxisArgs args);
  external MathBoxAPI interval(IntervalArgs args);
  external MathBoxAPI line(LineArgs args);
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
