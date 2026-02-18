#!/bin/bash
# Скрипт для запроса getblockchaininfo через RPC

RPC_USER="qbx"
RPC_PASS="qbxpass"
RPC_PORT=8332
RPC_HOST=127.0.0.1

curl -sS --user "$RPC_USER:$RPC_PASS" \
  --data-binary '{"jsonrpc":"1.0","id":1,"method":"getblockchaininfo","params":[]}' \
  http://$RPC_HOST:$RPC_PORT/
