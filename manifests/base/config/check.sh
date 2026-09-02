#!/bin/sh

USAGE=$(du -sm /kspeeder-data | cut -f1)
MAX_SIZE=4096  # 4GB = 4096MB

if [ "$USAGE" -gt "$MAX_SIZE" ]; then
    echo "Data directory usage ${USAGE}MB exceeds ${MAX_SIZE}MB"
    exit 1
fi

exit 0
