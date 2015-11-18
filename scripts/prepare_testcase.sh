#!/bin/bash -e

container='openqa-webui'
git_dir='/var/lib/openqa/share/tests/deepin'
git_remote='https://cr.deepin.io/deepin-testcases'

function prepare_git(){

    docker exec $container rm -rf $git_dir

    docker exec $container mkdir -p $git_dir

    docker exec $container bash -c "cd $git_dir && git init && git remote add origin $git_remote"

}

function deploy(){

    prepare_git

}

deploy

