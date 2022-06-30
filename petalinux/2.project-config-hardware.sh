#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME> [<XSA_FILE_OR_FOLDER>]"
    exit 1
fi

if [ -z $2 ]; then
    petalinux-config --project $1
else
    petalinux-config --project $1 --get-hw-description $2
fi
