// Copyright (c) 2017, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

library mathbox;

import 'dart:html';

import '_mathbox.dart';

import '_miscbindings.dart';
export '_miscbindings.dart' show threeOrbitControls;

class MathBox {
  final MathBoxAPI _api;

  factory MathBox(
      {Element element,
      List<String> plugins,
      Object controlsKlass,
      num cameraFov}) {
    return new MathBox._(mathBox(new MathBoxOptions(
        element: element,
        plugins: plugins,
        controls: new MathBoxOptionsControls(klass: controlsKlass),
        camera: new MathBoxOptionsCamera(fov: cameraFov))));
  }

  MathBox._(this._api);

  ThreeBootstrap get three => _api.three;

  MathBox cartesian({List<List<num>> range, List<num> scale}) {
    return new MathBox._(
        _api.cartesian(new CartesianArgs(range: range, scale: scale)));
  }

  MathBox axis({int axis, String color, num width, bool start, bool end}) {
    return new MathBox._(_api.axis(new AxisArgs(
        axis: axis, color: color, width: width, start: start, end: end)));
  }

  MathBox interval({int width, String expr, int items, int channels}) {
    return new MathBox._(_api.interval(new IntervalArgs(
        width: width,
        expr: eval('___tmp = function (emit, x, i, time) { $expr }'),
        items: items,
        channels: channels)));
  }

  MathBox line({String color, num width, num size, bool start, bool end}) {
    return new MathBox._(_api.line(new LineArgs(
        color: color, width: width, size: size, start: start, end: end)));
  }
}
