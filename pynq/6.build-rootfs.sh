#!/bin/sh

help () {
    echo "用法: $0 [PYNQ DIR] [BOARD] [PREBUILT]"
    echo "例子: $0 PYNQ ZCU102" "files/focal.aarch64.2.7.0_2021_11_17.tar.gz"
    exit 1
}

if [ -z $1 ]; then
    # PYNQ DIR
    help
fi

if [ -z $2 ]; then
    # BOARD (ZCU102)
    help
fi

if [ -z $3 ]; then
    # Rootfs tarball
    help
fi

make images -C $(pwd)/$1/sdbuild BOARDDIR=$(pwd)/$1/boards BOARDS=$2 PREBUILT=$(pwd)/$3
