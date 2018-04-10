#!/bin/sh
sh scripts/fetch-projects.sh
sh scripts/fill-project.sh
sh scripts/build-mainui.sh iphoneos armv7
sh scripts/build-hlsdk.sh iphoneos armv7 https://github.com/FWGS/hlsdk-xash3d master
mv mods-build/output/armv7/* prebuilt/armv7/
sh scripts/run-xcodebuild.sh iphoneos armv7 output-armv7.ipa
sh scripts/build-mainui.sh iphoneos arm64
sh scripts/build-hlsdk.sh iphoneos arm64 https://github.com/FWGS/hlsdk-xash3d master
mv mods-build/output/arm64/* prebuilt/arm64/
sh scripts/run-xcodebuild.sh iphoneos arm64 output-arm64.ipa
