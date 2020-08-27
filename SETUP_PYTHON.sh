#!/bin/sh
sudo apt-get update

# Packages needed by TensorFlow
sudo apt-get -y install nano libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran

# Install all JetPack components
sudo apt-get -y install nvidia-jetpack

# Setup python
sudo apt-get -y install python3-pip
sudo pip3 install -U pip testresources setuptools
sudo apt-get -y install python3-dev libssl-dev libffi-dev libxml2-dev libxslt1-dev


# Install PyTorch
wget https://nvidia.box.com/shared/static/9eptse6jyly1ggt9axbja2yrmj6pbarc.whl -O torch-1.6.0-cp36-cp36m-linux_aarch64.whl
sudo apt-get -y install python3-pip libopenblas-base libopenmpi-dev
pip3 install Cython
pip3 install numpy torch-1.6.0-cp36-cp36m-linux_aarch64.whl

# Install TorchVision
sudo apt-get -y install libjpeg-dev zlib1g-dev
git clone --branch v0.7.0 https://github.com/pytorch/vision torchvision
cd torchvision
sudo python3 setup.py install
cd ..

# Install jupyter
pip3 install notebook matplotlib
