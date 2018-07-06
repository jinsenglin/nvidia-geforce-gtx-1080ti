#!/bin/bash

set -e

sudo systemctl disable apparmor
sudo systemctl stop apparmor
sudo reboot
