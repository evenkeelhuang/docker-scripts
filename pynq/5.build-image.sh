#!/bin/sh

help () {
    echo "用法: $0 [PYNQ DIR] [BOARD]"
    echo "例子: $0 PYNQ ZCU102"
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

make boot_files -C $(pwd)/$1/sdbuild BOARDDIR=$(pwd)/$1/boards BOARDS=$2
