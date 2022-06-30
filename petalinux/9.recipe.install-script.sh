#!/bin/sh

if [ $# -eq 0 ]; then
    echo "$0 <PROJECT_NAME> <RECIPE_NAME>"
    exit 1
fi

if [ -z $2 ]; then
    echo "$0 <PROJECT_NAME> <RECIPE_NAME>"
    exit 1
fi

petalinux-create -t apps --project $1 --template install --name $2 --enable
