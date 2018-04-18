#!/bin/bash
set -xe
source env.env

docker build -t "$CONTAINER_NAME":"${VERSION}" .
docker tag "$CONTAINER_NAME":"${VERSION}" "$CONTAINER_NAME":latest
