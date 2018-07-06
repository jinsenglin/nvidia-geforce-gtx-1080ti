#!/bin/bash

set -e

sudo systemctl stop ufw.service
sudo systemctl disable ufw.service
