#!/bin/bash
docker run -it --rm \
    -v "$(pwd)"/data:/data \
    -e SYNAPSE_SERVER_NAME=chat.outernet \
    -e SYNAPSE_REPORT_STATS=yes \
    matrixdotorg/synapse:latest generate
cat ./template.yaml >> ./data/homeserver.yaml
echo "The config was placed in $(pwd)/config. Feel free to change it, then run docker-compose up -d :)"