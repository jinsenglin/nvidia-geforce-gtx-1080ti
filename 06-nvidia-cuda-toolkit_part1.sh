#!/bin/bash

set -e

FILE=cuda-repo-ubuntu1604-9-2-local_9.2.88-1_amd64.deb
PATCH=cuda-repo-ubuntu1604-9-2-local-cublas-update-1_1.0-1_amd64.deb

sudo dpkg -i $FILE
sudo apt-key add /var/cuda-repo-9-2-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

sudo dpkg -i $PATCH
