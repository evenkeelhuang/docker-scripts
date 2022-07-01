#!/bin/sh

DOCKER_IMAGE=pynq:2.7
WORKING_DIR=/home/xlnx/host

if [ ! -f /.dockerenv ]; then
    # HOST
    docker run -w ${WORKING_DIR} --rm -it -v $(pwd):${WORKING_DIR} ${DOCKER_IMAGE} bash -c $0
else
    # DOCKER
    bash
fi
