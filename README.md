# Vagrant Zookeeper Ensemble

Creates a vagrant setup with a zookeeper ensemble (cluster). Each zookeeper
node runs in its own docker container.

# Install (Host)

## Dependencies

    % brew cask install virtualbox
    % brew cask install vagrant
    % git clone git@github.com:assistly/birdhouse.git
    % cd birdhouse
    % cd vagrant
    % vagrant up

# Setup (Guest)

## Build image

    % vagrant ssh
    % cd birdhouse/zk-ensemble
    % docker build -t talbright/zookeeper:3.4.6 .

## Start zk ensemble containers

    % ./start_zk_ensemble.sh

# Connect (Host)

    % zkCli -server 127.0.0.1:22181
