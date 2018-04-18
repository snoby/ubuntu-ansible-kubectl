# ubuntu-ansible-kubectl
Docker container that contains kubectl, ansible, molecule, and docker
Build Staus


## Why
I created this image to run ansible playbooks for me that also needed the Kubernetes kubectl utility version 1.9.4.  As the future comes I'm sure I will upgrade this to a later version, however for now that is the version that is used.  See the Dockerfile for relavant changes.

This container also runs as a standard user (username drone).

## How to update
If you want to update the version of the container edit the "env.env" file.  Change the exported value of `VERSION`
