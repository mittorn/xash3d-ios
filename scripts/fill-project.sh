#!/bin/sh
chmod +x ./microndk/gen/ios/XcodeProjAdder
./microndk/gen/ios/XcodeProjAdder -XCP xash3d-engine.xcodeproj  -SCSV $(for src in xash3d/engine/common/*.c xash3d/engine/client/*.c xash3d/engine/platform/sdl/*.c xash3d/engine/server/*.c xash3d/engine/common/soundlib/*.c xash3d/engine/common/soundlib/libmpg/*.c xash3d/engine/common/imagelib/*.c nanogl/*.cpp xash3d/engine/client/vgui/*.c ; do /bin/echo -n $src,;done)
