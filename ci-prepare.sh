#!/bin/bash

rm -rf ${PWD}/kernel/*

docker build -t syno_build .

docker stop syno_build || true

docker rm syno_build || true

docker run -d -t --name=syno_build \
-v ${PWD}/kernel:/opt/kernel \
-v ${PWD}/patch:/opt/patch \
-e CC_LINUX_VERS=$CC_LINUX_VERS \
-e CC_LINUX_ARCH=$CC_LINUX_ARCH \
-e CC_LINUX_ARCH_LOWER=$CC_LINUX_ARCH_LOWER \
-e CC_DSM_VERS=$CC_DSM_VERS \
-e KERNEL_LINUX_VERS=$KERNEL_LINUX_VERS \
-e KERNEL_ARCH=$KERNEL_ARCH \
-e KERNEL_BRANCH_NUM=$KERNEL_BRANCH_NUM syno_build

docker exec -it syno_build /opt/prepare.sh