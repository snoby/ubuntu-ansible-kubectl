#!/bin/bash
set -x
source env.env

docker build -t ubuntu-ansible-kubectl:"${VERSION}" .
docker tag ubuntu-ansible-kubectl:"${VERSION}" ubuntu-ansible-kubectl:latest
