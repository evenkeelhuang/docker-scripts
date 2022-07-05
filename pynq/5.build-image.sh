#!/bin/sh

help () {
    echo "$0 [BOARD]"
    exit 1
}

if [ -z $1 ]; then
    help
fi

make -C PYNQ/sdbuild BOARDS=$1 PREBUILT=$(pwd)/files/focal.aarch64.2.7.0_2021_11_17.tar.gz
