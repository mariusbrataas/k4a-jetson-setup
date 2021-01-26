#!/bin/sh
sudo apt update && upgrade
sudo apt install curl

# Add microsoft repo
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-add-repository https://packages.microsoft.com/ubuntu/18.04/multiarch/prod
sudo apt-get update

# Setup kinect
sudo apt install k4a-tools
sudo apt install libk4a1.4-dev

# Add rules
sudo wget https://raw.githubusercontent.com/microsoft/Azure-Kinect-Sensor-SDK/develop/scripts/99-k4a.rules -O /etc/udev/rules.d/99-k4a.rules
