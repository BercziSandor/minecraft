#!/bin/bash
SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


SPIGET_RESOURCES=9089,34315
cd "$SCRIPTDIR"

docker run -d \
    -v data:/data \
    -e TYPE=PAPER \
    -e SPIGET_RESOURCES=$SPIGET_RESOURCES \
    -p 25565:25565 \
    -e EULA=TRUE \
    --name mc itzg/minecraft-server
