#!/bin/bash
cd /opt/kernel/linux-${KERNEL_LINUX_VERS}.x
make clean
git init
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
git add --all
echo "APPLY PATCHES"
git apply ../../patch/*.patch
make -k ARCH="${MAKE_ARCH}" CROSS_COMPILE="/opt/gcc/${MAKE_ARCH}-pc-linux-gnu/bin/${MAKE_ARCH}-pc-linux-gnu-" modules