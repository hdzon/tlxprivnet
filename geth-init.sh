#!/bin/sh

DATA_DIR=/root/.ethereum

if [ ! -d $DATA_DIR/keystore ]; then
    echo "$DATA_DIR/keystore not found, running 'geth init'..."
    geth init /root/genesis.json
    echo "...done!"
fi

geth "$@"

