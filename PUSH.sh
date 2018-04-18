#!/bin/bash
set -x
source env.env

# You must have logged into containers.cisco.com first
docker push "$CONTAINER_NAME":"${VERSION}"
docker push "$CONTAINER_NAME":latest
