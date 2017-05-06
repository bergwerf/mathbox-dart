@JS("THREE")
library three_effectcomposer;

import "package:js/js.dart";
import "three-core.dart" show WebGLRenderer, WebGLRenderTarget;
import "three-shaderpass.dart" show ShaderPass;

@JS()
class EffectComposer {
  // @Ignore
  EffectComposer.fakeConstructor$();
  external factory EffectComposer(WebGLRenderer renderer,
      [WebGLRenderTarget renderTarget]);
  external WebGLRenderTarget get renderTarget1;
  external set renderTarget1(WebGLRenderTarget v);
  external WebGLRenderTarget get renderTarget2;
  external set renderTarget2(WebGLRenderTarget v);
  external WebGLRenderTarget get writeBuffer;
  external set writeBuffer(WebGLRenderTarget v);
  external WebGLRenderTarget get readBuffer;
  external set readBuffer(WebGLRenderTarget v);
  external List<dynamic> get passes;
  external set passes(List<dynamic> v);
  external ShaderPass get copyPass;
  external set copyPass(ShaderPass v);
  external void swapBuffers();
  external void addPass(dynamic pass);
  external void insertPass(dynamic pass, num index);
  external void render([num delta]);
  external void reset([WebGLRenderTarget renderTarget]);
  external void setSize(num width, num height);
}
