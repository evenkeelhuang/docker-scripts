#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME> <BSP NAME>"
    exit 1
fi

if [ -z $2 ]; then
    echo "$0 <PROJECT_NAME> <BSP NAME>"
    exit 1
fi

petalinux-create -t project -s $2 -n $1
