#!/bin/bash
#
# V :1.0.0
#

# CHANGE VARS IF NEEDED:

#KERNEL "https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/${KERNEL_BRANCH_NUM}branch/${KERNEL_ARCH}-source/linux-${KERNEL_LINUX_VERS}.x.txz/download"
# GCC "https://sourceforge.net/projects/dsgpl/files/DSM%20${CC_DSM_VERS}%20Tool%20Chains/Intel%20x86%20Linux%20${CC_LINUX_VERS}%20(${CC_LINUX_ARCH})/${CC_LINUX_ARCH_LOWER}-gcc493_glibc220_linaro_x86_64-GPL.txz/download"

export CC_LINUX_VERS=4.4.59
export CC_LINUX_ARCH=Apollolake
export CC_LINUX_ARCH_LOWER=apollolake
export CC_DSM_VERS=6.2
export KERNEL_LINUX_VERS=4.4
export KERNEL_ARCH=apollolake
export KERNEL_BRANCH_NUM=22259
export MAKE_ARCH=x86_64

./ci-prepare.sh
./ci-modify.sh
./ci-build.sh