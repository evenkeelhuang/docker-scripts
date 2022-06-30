#!/bin/sh

DOCKER_IMAGE=xilinx:2020.2
WORKING_DIR=/home/xlnx/host

if [ ! -f /.dockerenv ]; then
    # HOST
    docker run -w ${WORKING_DIR} --rm -it -v $(pwd):${WORKING_DIR} ${DOCKER_IMAGE} bash -c $0
else
    SCRIPTS_FOLDER=/home/xlnx/docker-scripts

    # DOCKER
    git clone https://github.com/evenkeelhuang/docker-scripts.git ${SCRIPTS_FOLDER} && \
    chmod +x ${SCRIPTS_FOLDER}/petalinux/* && \
    sudo cp ${SCRIPTS_FOLDER}/petalinux/* /usr/local/bin && \
    rm -rf ${SCRIPTS_FOLDER} && \
    bash
fi
