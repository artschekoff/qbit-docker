#!/bin/bash
# Скрипт для запроса getblockcount через RPC

RPC_USER="qbx"
RPC_PASS="qbxpass"
RPC_PORT=8332
RPC_HOST=127.0.0.1

curl -s --user "$RPC_USER:$RPC_PASS" \
  --data-binary '{"jsonrpc":"1.0","id":1,"method":"getblockcount","params":[]}' \
  http://$RPC_HOST:$RPC_PORT/
