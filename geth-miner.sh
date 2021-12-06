#!/bin/sh

DATA_DIR=/root/.ethereum
NEW_FLG=0

if [ ! -d $DATA_DIR/keystore ]; then
    NEW_FLG=1
    echo "$DATA_DIR/keystore not found, running 'geth init'..."
    geth init /root/genesis.json
    echo "...done!"
    rm -f $DATA_DIR/geth/nodekey
    echo $ACCOUNT_PASSWORD > /tmp/password
    geth account new --password /tmp/password > /root/new_account.txt
    MINER_ACCOUNT=$(cat /root/new_account.txt | grep address | grep : | awk -F ':' '{print $2}' | xargs)
    echo $MINER_ACCOUNT > $DATA_DIR/etherbase.txt
    rm -f /tmp/password
fi

sleep 5

geth "$@" 
