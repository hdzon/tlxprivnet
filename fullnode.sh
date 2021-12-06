#!/bin/sh

if [ "$1" = "d" ]; then
    echo stop fullnode
    docker-compose  down
    exit 0
fi

echo start fullnode
docker-compose up -d

