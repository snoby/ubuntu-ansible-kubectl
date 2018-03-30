FROM ubuntu:17.10

ENV KUBECTL_VERSION v1.6.1
ENV DOCKER_VERSION 17.12.1-ce

RUN apt-get update && apt-get install -y bash curl git python python-pip build-essential apt-transport-https ca-certificates software-properties-common vim

RUN pip install --upgrade pip setuptools ansible molecule
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl


# Download and place the docker binary file.
RUN curl -LO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz &&    \
    tar zxf docker-${DOCKER_VERSION}.tgz    &&    \
    chmod +x docker/docker     &&                 \
    mv docker/docker /usr/local/bin/

# set up subuid/subgid so that "--userns-remap=default" works out-of-the-box
RUN set -x \
	&& addgroup --system dockremap \
	&& adduser --system --ingroup dockremap dockremap \
	&& echo 'dockremap:165536:65536' >> /etc/subuid \
	&& echo 'dockremap:165536:65536' >> /etc/subgid

