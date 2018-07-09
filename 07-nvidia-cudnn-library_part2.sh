#!/bin/bash

set -e

sudo dpkg -i libcudnn7_7.1.4.18-1+cuda9.2_amd64.deb
sudo dpkg -i libcudnn7-dev_7.1.4.18-1+cuda9.2_amd64.deb
sudo dpkg -i libcudnn7-doc_7.1.4.18-1+cuda9.2_amd64.deb

cd /usr/src/cudnn_samples_v7/mnistCUDNN
sudo make clean && sudo make

sudo reboot
