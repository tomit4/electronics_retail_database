#!/usr/bin/env bash

CONTAINER_NAME=mariadb
DEST_PATH=/tmp

for file in *.sql; do
    filename=$(basename "$file")
    docker cp "$file" "$CONTAINER_NAME":"$DEST_PATH/$filename"
done
