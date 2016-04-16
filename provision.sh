#!/usr/bin/env bash

# $(curl -sS https://storage.googleapis.com/kubernetes-release/release/stable.txt)
cp kubernetes.env $HOME/.kubernetes.env
source $HOME/.kubernetes.env

apt-get update && apt-get install -y \
    unzip \
    curl \
    zsh

mkdir $HOME/bin
wget -O $HOME/bin http://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/linux/amd64/kubectl
chmod 755 bin/kubectl

echo 'DOCKER_OPTS="${DOCKER_OPTS} -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock"' >> /etc/default/docker
service docker restart

