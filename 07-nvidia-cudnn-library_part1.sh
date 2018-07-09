#!/bin/bash

set -e

FILE=cudnn-9.2-linux-x64-v7.1.tgz

tar -zxf $FILE

sudo cp cuda/include/cudnn.h /usr/local/cuda-9.2/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda-9.2/lib64/
sudo chmod a+r /usr/local/cuda-9.2/include/cudnn.h
sudo chmod a+r /usr/local/cuda-9.2/lib64/libcudnn*

sudo ln -sf /usr/local/cuda-9.2 /usr/local/cuda
