#!/bin/sh

if [ "$1" = "d" ]; then
    echo stop fullnode
    docker-compose -p tlx-fullnode -f docker-compose-fullnode.yml down
    exit 0
fi

echo start fullnode
docker-compose -p tlx-fullnode -f docker-compose-fullnode.yml up -d

