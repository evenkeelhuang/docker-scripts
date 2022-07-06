#!/bin/sh

help () {
    echo "用法: $0 [PYNQ DIR] [BOARD] [PREBUILT]"
    echo "例子: $0 PYNQ ZCU102" "files/focal.aarch64.2.7.0_2021_11_17.tar.gz"
    exit 1
}

if [ -z $1 ]; then
    help
fi

if [ -z $2 ]; then
    help
fi

if [ -z $3 ]; then
    help
fi

make $4 -C $(pwd)/$1/sdbuild BOARDS=$2 PREBUILT=$(pwd)/$3
