#!/bin/bash
THISDIR="$(pwd)"
docker run -h builder --name builder \
-v $THISDIR/cache:/shared/cache:Z \
-v $THISDIR/result:/shared/result:Z \
builder
