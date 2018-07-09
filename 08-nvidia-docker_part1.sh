#!/bin/bash

set -e

docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
sudo apt-get -y purge nvidia-docker nvidia-docker2

sudo apt-get -y remove docker docker-engine docker.io docker-ce
sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker
sudo rm -rf /etc/systemd/system/docker.service
sudo rm -rf /etc/systemd/system/docker.service.d
