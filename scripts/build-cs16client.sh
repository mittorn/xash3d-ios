#!/bin/sh
SDK=$1
ARCH=$2

git clone https://github.com/FWGS/cs16-client -b v1.32 --depth 1 mods-build/cs16client
git clone https://github.com/FWGS/regamedll --depth 1 mods-build/regamedll
sh scripts/run-microndk.sh $SDK $ARCH mods-build/cs16client/cl_dll mods-build/output/$ARCH/client_cstrike
sh scripts/run-microndk.sh $SDK $ARCH mods-build/cs16client/mainui mods-build/output/$ARCH/menu_cstrike
sh scripts/run-microndk.sh $SDK $ARCH mods-build/regamedll/regamedll/dlls mods-build/output/$ARCH/server_cstrike
