#!/bin/bash

set -e

wget https://github.com/ksonnet/ksonnet/releases/download/v0.11.0/ks_0.11.0_linux_amd64.tar.gz

tar -zxf ks_0.11.0_linux_amd64.tar.gz

sudo cp ks_0.11.0_linux_amd64/ks /usr/local/bin/ks

command -v ks
ks version
