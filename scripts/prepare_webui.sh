#!/bin/bash -e

container='openqa-webui'

function prepare_source(){

    tar zcf openQA.tar.gz -C source/openQA .

    docker exec $container mkdir -p /data/openQA
    cat openQA.tar.gz | docker cp - $container:/data/openQA
    rm -f openQA.tar.gz

}

function install(){

    docker exec $container make -C /data/openQA install

}

function install_tools(){

    tar zcf openQA-tools.tar.gz -C openQA-tools .
    cat openQA-tools.tar.gz | docker cp - $container:/usr/bin
    rm -f openQA-tools.tar.gz

}

function replace(){

    tar zcf replace.tar.gz -C replace .
    cat replace.tar.gz | docker cp - $container:/
    rm -f replace.tar.gz

}

function init_webui_db(){

    docker exec $container /usr/bin/openqa-initdb

}

function build(){

    prepare_source
    install
    install_tools
    replace
    init_webui_db

}

build
