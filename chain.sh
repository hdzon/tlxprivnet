#!/bin/sh

if [ "$1" = "d" ]; then
    echo stop chain
    docker-compose -p tlx-chain -f docker-compose-chain.yml down
    exit 0
fi

echo start chain
docker-compose -p tlx-chain -f docker-compose-chain.yml up -d

