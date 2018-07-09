#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

# latest version
# sudo apt-get install docker-ce

# specific version
sudo apt-cache madison docker-ce
sudo apt-get install -y docker-ce=18.03.1~ce-0~ubuntu

sudo docker run hello-world
