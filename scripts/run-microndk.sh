#!/bin/sh
export IOSARCH=$2
export SDK=$1
if [ "$IOSARCH" == "arm64" ]; then export _64BIT=1;fi
if [ "$IOSARCH" == "x86_64" ]; then export _64BIT=1;fi
ROOT=$(pwd)
cd $3
make -f $ROOT/microndk/Microndk.mk GENERATE=ios BUILD_GENERATED=$SDK BINARY_OUTPUT=$ROOT/$4 IOSARCH=$IOSARCH 64BIT=$_64BIT PROJECT_OUTPUT=project-$IOSARCH