#!/bin/bash
set -e

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
docker version >/dev/null|| {
    echo "Run docker(desktop) first."
    exit 1
}

cd "$SCRIPTDIR"
docker-compose -f docker-compose-paper.yml up