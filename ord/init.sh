#! /bin/bash
initDIR(){
    if [ ! -d "./data" ]; then
        mkdir data
    fi
}

outFile(){
    FILE="config"
    DIR=$(dirname "$PWD")
    touch $FILE
    cat>"${FILE}"<<EOF
chain:mainnet
bitcoin-data-dir:$DIR/btc/data
bitcoin-rpc-url:http://127.0.0.1:18333
bitcoin-rpc-username:btc
bitcoin-rpc-password:btc2024
data-dir:$DIR/ord/data
index_cache_size:33709230080
index-runes:true
no-index-inscriptions:true
EOF
}

initDIR && \
wget https://github.com/ordinals/ord/releases/download/0.18.2/ord-0.18.2-x86_64-unknown-linux-gnu.tar.gz && \
tar -zxf ord-0.18.2-x86_64-unknown-linux-gnu.tar.gz && \
outFile
