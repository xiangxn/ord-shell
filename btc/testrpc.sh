#! /bin/bash
curl -s -X POST --user btc:btc2024  \
  -H 'content-type: text/plain;' http://127.0.0.1:18333/ \
  --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getmininginfo", "params": [] }'