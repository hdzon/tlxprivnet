#!/bin/sh

if [ "$1" = "d" ]; then
    echo stop explorer
    docker-compose -p tlx-explorer -f docker-compose-explorer.yml down
    exit 0
fi

echo start explorer
docker-compose -p tlx-explorer -f docker-compose-explorer.yml up -d

