#!/bin/bash

KERNEL_URL="https://sourceforge.net/projects/dsgpl/files/Synology%20NAS%20GPL%20Source/${KERNEL_BRANCH_NUM}branch/${KERNEL_ARCH}-source/linux-${KERNEL_LINUX_VERS}.x.txz/download"
CC_GCC_URL="https://sourceforge.net/projects/dsgpl/files/DSM%20${CC_DSM_VERS}%20Tool%20Chains/Intel%20x86%20Linux%20${CC_LINUX_VERS}%20(${CC_LINUX_ARCH})/${CC_LINUX_ARCH_LOWER}-gcc493_glibc220_linaro_x86_64-GPL.txz/download"

# ---SHOW ENV---
echo "Kernel_url: $KERNEL_URL" && echo "CC_GCC_url: $CC_GCC_URL"

# --- PREPARE ENV ---
mkdir -p /opt/kernel/
wget ${KERNEL_URL} -O /root/kernel.txz
tar Jxvf /root/kernel.txz -C /opt/kernel/
chmod -R +w /opt/kernel

mkdir -p /opt/gcc/
wget ${CC_GCC_URL} -O /root/gcc.txz
tar Jxvf /root/gcc.txz -C /opt/gcc/