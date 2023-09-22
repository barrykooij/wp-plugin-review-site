#!/bin/bash

echo "Shut down containers"
(cd docker  ; docker compose down -v )

echo "Removing temp files"
rm -rf docker/tmp
mkdir -p docker/tmp

echo "Download ZIP FILE"
wget -c $1 -O docker/tmp/plugin.zip

echo "Start containers"
(cd docker ; docker compose up -d)

#todo open chrome
