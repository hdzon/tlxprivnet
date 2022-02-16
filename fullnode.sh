#!/bin/sh

if [ "$1" = "d" ]; then
    echo stop chain
    docker-compose -p tlx-fullnode -f docker-compose-fullnode.yml down
    exit 0
fi

echo start chain
docker-compose -p tlx-fullnode -f docker-compose-fullnode.yml up -d

