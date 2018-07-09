#!/bin/bash

set -e

sudo apt-get -y remove docker docker-engine docker.io docker-ce
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker

sudo apt-get -y purge nvidia-docker nvidia-docker2
