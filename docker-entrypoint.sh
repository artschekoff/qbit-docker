#!/bin/bash
set -euo pipefail

cd /opt/qbitx
./qbitx -daemon

# Keep container alive while qbitx daemon runs
exec tail -f /dev/null