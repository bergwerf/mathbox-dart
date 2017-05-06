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
    ..setX(2.3)
    ..setY(1)
    ..setZ(2);

  final view = mathbox.cartesian(range: [
    [-6, 6],
    [-1, 1],
    [-1, 1]
  ], scale: new List.from([6, 1, 1]));

  view
    ..axis(width: 5, start: true, end: true)
    ..interval(
        width: 128,
        expr: [
          'var theta = x + time',
          'var a = Math.cos(theta)',
          'var b = Math.sin(theta)',
          'emit(x, a, b)',
          'emit(x, -a, -b)'
        ].join(';'),
        items: 2,
        channels: 3)
    ..line(
      color: 'red',
      width: 10,
      size: 2.5,
      start: true,
      end: true,
    );
}
