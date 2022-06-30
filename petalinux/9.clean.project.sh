#!/bin/sh

if [ -z $1 ]; then
    echo "$0 <PROJECT_NAME>"
    exit 1
fi
petalinux-build --project $1 -x mrproper
