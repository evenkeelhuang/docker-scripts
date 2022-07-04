#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME>"
    exit 1
fi

petalinux-package --bsp -p $1 --output ${1}.bsp