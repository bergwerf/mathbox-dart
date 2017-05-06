init:
	# Create symlink for pre-commit hook.
	ln -sf ../../tool/pre-commit.sh .git/hooks/pre-commit
	# Install facade generator.
	npm install -g dart_js_facade_gen

generate-three-facade:
	cd node_modules/@types/three; \
	dart_js_facade_gen --destination=../../../lib/three --baseDir=. *.d.ts;
	mv lib/three.dart lib/three/three.dart

generate-facade:
	dart_js_facade_gen lib/_mathbox.d.ts |\
		sed 's/three-core.dart/three\/three-core\.dart/' |\
		sed "0,/@JS()/s/@JS()/@JS\('window'\)/" > lib/_mathbox.dart
