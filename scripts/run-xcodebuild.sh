#!/bin/sh
ARCH=$2
SDK=$1
OUTPUT=$3
cp prebuilt/$ARCH/* .
cp prebuilt/extras/* .
xcodebuild -arch $ARCH -sdk $SDK CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO
rm -r Payload
rm $OUTPUT
mkdir Payload
cp -a build/Debug-$SDK/xash3d-ios.app Payload/
# will be resigned with cydia impactor or not signing required
cp prebuilt/mods-$ARCH/* Payload/xash3d-ios.app/
zip -r $OUTPUT Payload