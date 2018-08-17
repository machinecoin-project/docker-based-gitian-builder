#!/bin/bash
THISDIR="$(pwd)"
docker run -it -h builder --name builder \
-v $THISDIR/cache:/shared/cache:Z \
-v $THISDIR/result:/shared/result:Z \
--entrypoint=/bin/bash \
builder -s
