#!/bin/bash -e

host_etc='/data/docker/openqa-webui/etc_openqa'
host_share='/data/docker/openqa-webui/var_lib_openqa_share'

host_port=80
container_port=9526

image='deepin/openqa-base'
container='openqa-webui'

function prepare_container(){

    container_id=$(docker ps -a -f name=$container -q)
    if [ -n "$container_id" ]; then
        echo "container ($container) exist, delete it.... "
        docker rm -f $container_id
    fi

    docker run --name $container -p $host_port:$container_port \
        -v $host_etc:/etc/openqa \
        -v $host_share:/var/lib/openqa/share \
        -d -t $image bash

}

function build(){

    prepare_container

}

build
