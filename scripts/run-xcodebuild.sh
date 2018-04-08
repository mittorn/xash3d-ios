#!/bin/sh
ARCH=$1
SDK=$2
OUTPUT=$3
cp prebuilt/$ARCH/* .
xcodebuild -arch $ARCH -sdk $SDK
rm -r Payload
mkdir Payload
cp -a build/Debug-$SDK/xash3d-ios.app Payload/
# will be resigned with cydia impactor or not signing required
cp prebuild/mods-$ARCH/* Payload/
zip -r $OUTPUT Payload