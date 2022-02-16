#!/bin/sh

DATA_DIR=/root/.ethereum
NEW_FLG=0


if [ ! -d $DATA_DIR/keystore ]; then
    NEW_FLG=1
    echo "$DATA_DIR/keystore not found, running 'geth init'..."
    geth init /root/genesis.json
    echo "...done!"

    # create miner account
    PWDDIR=/root/pass
    PWDFILE=$PWDDIR/.accountpassword
    PRIVKEYFILE=$PWDDIR/.privatekey
    mkdir -p $PWDDIR
    echo $ACCOUNT_PASSWORD > $PWDFILE
    echo $ACCOUNT_PRIVATEKEY > $PRIVKEYFILE
    geth account import --password $PWDFILE $PRIVKEYFILE
fi

sleep 5

geth "$@" 
