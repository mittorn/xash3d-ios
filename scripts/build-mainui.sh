#!/bin/sh
ROOT=$(pwd)
ARCH=$2
SDK=$1
git -C xash3d submodule init
git -C xash3d submodule update mainui
mkdir -p mods-build/output/$ARCH
sh $ROOT/scripts/run-microndk.sh $SDK $ARCH xash3d/mainui mods-build/output/$ARCH/menu

