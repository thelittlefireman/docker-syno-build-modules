#!/bin/bash

docker exec -it \
-e MAKE_ARCH=$MAKE_ARCH syno_build /opt/build.sh