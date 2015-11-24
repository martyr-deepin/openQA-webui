#!/bin/bash -e

host_etc='/data/docker/openqa-webui/etc_openqa'
host_share='/data/docker/openqa-webui/var_lib_openqa_share'
host_testresults='/data/docker/openqa-webui/var_lib_openqa_testresults'

host_port=80
container_port=9526

image='deepin/openqa-base'
container='openqa-webui'

function prepare_container(){

    container_id=$(docker ps -a -f name=$container -q)
    if [ -n "$container_id" ]; then
        echo "E: container ($container) exists, please rm it before installation"
        exit 1
    fi

    docker run --name $container -p $host_port:$container_port \
        -v $host_etc:/etc/openqa \
        -v $host_share:/var/lib/openqa/share \
        -v $host_testresults:/var/lib/openqa/testresults \
        -d -t $image bash

}

function build(){

    prepare_container

}

build
