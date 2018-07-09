#!/bin/bash

set -e

sudo /usr/bin/nvidia-persistenced --verbose

cat /proc/driver/nvidia/version
nvcc -V
