#!/bin/sh
ROOT=$(pwd)
MODREPO=$3
MODBRANCH=$4
ARCH=$2
SDK=$1
MODSUFFIX=$5
MODPATH=mods-build/hlsdk$MODSUFFIX
git clone $MODREPO -b $MODBRANCH --depth 1 $MODPATH
mkdir -p mods-build/output/$ARCH
sh $ROOT/scripts/run-microndk.sh $SDK $ARCH $MODPATH/dlls mods-build/output/$ARCH/server$MODSUFFIX
sh $ROOT/scripts/run-microndk.sh $SDK $ARCH $MODPATH/cl_dll mods-build/output/$ARCH/client$MODSUFFIX
