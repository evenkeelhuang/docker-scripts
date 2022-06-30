#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME>"
    exit 1
fi

petalinux-config -c rootfs --project $1
