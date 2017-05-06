// Copyright (c) 2017, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

library mathbox;

import 'dart:html';

import '_mathbox.dart';

export '_miscbindings.dart';

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

  void cartesian({List<List<num>> range, List<num> scale}) {
    _api.cartesian(new CartesianOptions(range: range, scale: scale));
  }

  void axis({int axis, String color}) {
    _api.axis(new AxisOptions(axis: axis, color: color));
  }
}
