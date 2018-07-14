# Xash3D-iOS project

[![Build Status](https://travis-ci.org/mittorn/xash3d-ios.svg)](https://travis-ci.org/mittorn/xash3d-ios)

You need osx with xcode installed to build it

Use `scripts/fetch-projects.sh` to fetch engine with dependencies

Run `scripts/fill-project.sh` once before build

Remove all except dummy.c from empty before committing changes to xcode project (you need it to fill project again after engine update

Use `scripts/run-xcodebuild.sh iphoneos armv7 output.ipa` to build engine with prebuilt game libraries

### Default game libraries should be named:

* server
* client
* menu

### Default extras asset:

* extras.pak

### For mods:

* menu_<gamedir>
* server_<gamedir>
* client_<gamedir>
* extras_<gamedir>.pak

By default, gamedir used, but may be overrided with Library Suffix option
