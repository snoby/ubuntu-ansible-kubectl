#!/bin/bash
set -x
source env.env

docker build -t iotapi322/ubuntu-ansible-kubectl:"${VERSION}" .
docker tag iotapi322/ubuntu-ansible-kubectl:"${VERSION}" iotapi322/ubuntu-ansible-kubectl:latest
