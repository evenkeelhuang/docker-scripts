#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT NAME> [APP NAME]"
    exit 1
fi

if [ -z $2 ]; then
    petalinux-build --project $1 && mkdir -p $1/pre-built/linux/images && cp $1/images/linux/* $1/pre-built/linux/images/
else
    petalinux-build --project $1 --component $2
fi
