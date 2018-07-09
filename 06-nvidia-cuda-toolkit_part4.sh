#!/bin/bash

set -e

cuda-install-samples-9.2.sh $HOME

cd $HOME/NVIDIA_CUDA-9.2_Samples
make
sudo reboot
