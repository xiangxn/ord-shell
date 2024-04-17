#! /bin/bash
initDIR(){
    if [ ! -d "./data" ]; then
        mkdir data
    fi
}

outConfig(){
    DIR="$HOME/.bitcoin"
    FILE="$DIR/bitcoin.conf"
    if [ ! -f "$FILE" ]; then
        mkdir -p $DIR
        touch $FILE
    fi
    cat>"${FILE}"<<EOF
dbcache=10240
txindex=1
rpcuser=btc
rpcpassword=btc2024
daemon=1
server=1
rest=1
rpcbind=0.0.0.0:18333
rpcallowip=0.0.0.0/0
deprecatedrpc=accounts
datadir=$PWD/data
EOF
}

initDIR && \
wget https://bitcoin.org/bin/bitcoin-core-25.0/bitcoin-25.0-x86_64-linux-gnu.tar.gz && \
tar -zxf bitcoin-25.0-x86_64-linux-gnu.tar.gz && \
outConfig
