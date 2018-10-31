#!/bin/bash
cd /opt/kernel/linux-${KERNEL_LINUX_VERS}.x
make clean
git init
git add --all
echo "APPLY PATCHES"
git am ../../patch/*.patch
make -k ARCH="${MAKE_ARCH}" CROSS_COMPILE="/opt/gcc/${MAKE_ARCH}-pc-linux-gnu/bin/${MAKE_ARCH}-pc-linux-gnu-"