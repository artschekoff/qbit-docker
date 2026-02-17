#!/bin/bash
set -euo pipefail

cd /opt/qbitx
./qbitx -addnode=83.217.213.118:8334 -daemon

# Keep container alive while qbitx daemon runs
exec tail -f /dev/null
