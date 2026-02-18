#!/bin/bash
# Скрипт для запроса loadwallet через RPC

set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <wallet_name>" >&2
  exit 1
fi

WALLET_NAME="$1"
RPC_USER="qbx"
RPC_PASS="qbxpass"
RPC_PORT=8332
RPC_HOST=127.0.0.1

curl -sS --user "$RPC_USER:$RPC_PASS" \
  --data-binary "{\"jsonrpc\":\"1.0\",\"id\":1,\"method\":\"loadwallet\",\"params\":[\"$WALLET_NAME\"]}" \
  "http://$RPC_HOST:$RPC_PORT/"
