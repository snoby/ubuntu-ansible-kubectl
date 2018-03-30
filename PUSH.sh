#!/bin/bash
set -x
source env.env

# You must login first
docker push ubuntu-ansible-kubectl:${VERSION}
docker push ubuntu-ansible-kubectl:latest
