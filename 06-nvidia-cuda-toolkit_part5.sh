#!/bin/bash

set -e

cd $HOME/NVIDIA_CUDA-9.2_Samples/bin/x86_64/linux/release

./deviceQuery
./bandwidthTest
