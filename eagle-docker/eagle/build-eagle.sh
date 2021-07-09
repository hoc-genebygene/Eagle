#!/usr/bin/env bash
set -e

SRC_MOUNT_DIR=`pwd`/../../
DEST_MOUNT_DIR=$1

SRC_MOUNT_OPT="--mount type=bind,source=$SRC_MOUNT_DIR,target=/tmp/eagle/src"
DEST_MOUNT_OPT="--mount type=bind,source=$DEST_MOUNT_DIR,target=/tmp/eagle/bin"

docker run -i $SRC_MOUNT_OPT $DEST_MOUNT_OPT --user $(id -u):$(id -g) --entrypoint 'bash' gxg-pipeline/eagle -c \
'source scl_source enable devtoolset-9 &&\
cmake3 -DBOOST_ROOT=/opt/boost/1.74.0 -DHTSLIB_SEARCH_DIRS=/opt/htslib/1.12 ../src &&\
 make -j$(nproc)'
