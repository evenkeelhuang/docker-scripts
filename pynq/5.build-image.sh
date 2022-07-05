#!/bin/sh

help () {
    echo "用法: $0 [BOARD]"
    echo "例子: $0 ZCU102"
    exit 1
}

if [ -z $1 ]; then
    help
fi

make images $@ -C PYNQ/sdbuild BOARDS=$1 PREBUILT=$(pwd)/files/focal.aarch64.2.7.0_2021_11_17.tar.gz
