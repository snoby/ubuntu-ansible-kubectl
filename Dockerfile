FROM ubuntu:17.10

ENV KUBECTL_VERSION v1.6.1

RUN apt-get update && apt-get install -y bash curl git python python-pip build-essential
RUN pip install --upgrade pip setuptools ansible
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl


