#!/bin/sh

DOCKER_IMAGE=pynq:2.7
WORKING_DIR=/home/xlnx/host

if [ ! -f /.dockerenv ]; then
    # HOST
    echo "注意！因為編譯需要，容器將啟用 --privileged"
    docker run $@ --privileged -w ${WORKING_DIR} --rm -it -v /media:/media -v $(pwd):${WORKING_DIR} ${DOCKER_IMAGE} bash -c $0
else
    SCRIPTS_FOLDER=/home/xlnx/docker-scripts

    # DOCKER
    git clone https://github.com/evenkeelhuang/docker-scripts.git ${SCRIPTS_FOLDER} && \
    chmod +x ${SCRIPTS_FOLDER}/pynq/* && \
    sudo cp ${SCRIPTS_FOLDER}/pynq/* /usr/local/bin && \
    rm -rf ${SCRIPTS_FOLDER} && \
    # 要加 -l 重新登入系統環境才會比較正常
    bash -l
fi
