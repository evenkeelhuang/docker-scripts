#!/bin/sh

if [ -z $1 ]; then
    echo "$0 <PROJECT_NAME> <APP NAME>"
    exit 1
fi
if [ -z $2 ]; then
    echo "$0 <PROJECT_NAME> <APP NAME>"
    exit 1
fi

petalinux-build --project $1 -c $2 -x clean
