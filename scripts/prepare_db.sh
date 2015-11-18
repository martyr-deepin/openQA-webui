#!/bin/bash -e

# default key and secret
key='1234567890ABCDEG'
secret='1234567890ABCDEG'

container='openqa-webui'

function prepare_key(){

    docker exec $container sqlite3 \
        -echo /var/lib/openqa/db/db.sqlite \
        "insert into api_keys (key, secret, user_id, t_created, t_updated) \
        values ('$key', '$secret', 1, datetime('now'), datetime('now'));"

}

function deploy(){

    prepare_key

}

deploy
