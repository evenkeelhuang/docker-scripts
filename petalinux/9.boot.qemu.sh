#!/bin/sh

if [ -z $1 ]; then
    echo "$0 <PROJECT_NAME>"
    exit 1
fi

# 如果開機改為 EXT4 可能會無法模擬
# 跳出 qemu 用 Ctrl + A, X

cd $1 &&
    petalinux-boot --qemu --kernel &&
    cd -
