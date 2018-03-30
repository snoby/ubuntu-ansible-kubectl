#!/bin/bash
set -x
source env.env

# You must login first
docker push iotapi322/ubuntu-ansible-kubectl:${VERSION}
docker push iotapi322/ubuntu-ansible-kubectl:latest
