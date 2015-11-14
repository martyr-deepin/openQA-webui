#!/bin/bash -e

image='deepin/openqa-base'
container='openqa-webui'

function prepare_container(){

    container_id=$(docker ps -a -f name=$container -q)
    if [ -n "$container_id" ]; then
        echo "container ($container) exist, delete it.... "
        docker rm -f $container_id
    fi

    docker run --name $container -p 80:9526 \
        -v /data/docker/openqa-webui/etc_openqa:/etc/openqa \
        -v /data/docker/openqa-webui/var_lib_openqa_share:/var/lib/openqa/share \
        -d -t $image bash

}

function build(){

    prepare_container

}

build
