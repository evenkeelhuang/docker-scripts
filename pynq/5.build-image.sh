#!/bin/sh

help () {
    echo "$0 [PYNQ DIR] [BOARD] [PREBUILT]"
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

make -j6 -C $1/sdbuild BOARDS=$2 PREBUILT=$(pwd)/$3
