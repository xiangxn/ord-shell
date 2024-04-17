#! /bin/bash

./bitcoin-25.0/bin/bitcoin-cli -rpcport=18333 getconnectioncount && \
./bitcoin-25.0/bin/bitcoin-cli -rpcport=18333 getnettotals && \
./bitcoin-25.0/bin/bitcoin-cli -rpcport=18333 getblockchaininfo