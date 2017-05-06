@JS("THREE")
library three_transformcontrols;

import "package:js/js.dart";
import "three-core.dart" show Object3D, Camera;
import "dart:html" show HtmlElement;

@JS()
class TransformControls extends Object3D {
  // @Ignore
  TransformControls.fakeConstructor$() : super.fakeConstructor$();
  external factory TransformControls(Camera object, [HtmlElement domElement]);
  external Object3D get object;
  external set object(Object3D v);
  external void update();
  external void detach();
  external void attach(Object3D object);
  external String getMode();
  external void setMode(String mode);
  external void setSnap(dynamic snap);
  external void setSize(num size);
  external void setSpace(String space);
}
