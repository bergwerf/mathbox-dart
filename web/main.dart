// Copyright (c) 2017, Herman Bergwerf. All rights reserved.
// Use of this source code is governed by a MIT-style license
// that can be found in the LICENSE file.

import 'dart:html';

import 'package:mathbox/mathbox.dart';

void main() {
  final element = querySelector('#container');
  final mathbox = new MathBox(
      element: element,
      plugins: ['core', 'controls', 'cursor'],
      controlsKlass: threeOrbitControls,
      cameraFov: 45);
  mathbox.three.renderer.setClearColor('white');
  mathbox.three.camera.position
    ..setX(-.15)
    ..setY(.15)
    ..setZ(3.6);

  mathbox
    ..cartesian(
      range: [
        [-2, 2],
        [-1, 1],
        [-1, 1]
      ],
      scale: [2, 1, 1],
    )
    ..axis(axis: 1, color: 'red')
    ..axis(axis: 2, color: 'green');
}
