#!/bin/bash -e

container='openqa-webui'

function prepare_key(){

    docker exec $container sqlite3 \
        -echo /var/lib/openqa/db/db.sqlite \
        "insert into api_keys (key, secret, user_id, t_created, t_updated) \
        values ('1234567890ABCDEG', '1234567890ABCDEG', 1, datetime('now'), datetime('now'));"

}

function deploy(){

    prepare_key

}

deploy

