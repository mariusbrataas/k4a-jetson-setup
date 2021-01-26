# Install all JetPack components
sudo apt-get -y install nvidia-jetpack

# Required system packages
sudo apt-get update
sudo apt-get install -y libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran

# Install and upgrade pip3
sudo apt-get install -y python3-pip
sudo pip3 install -U pip testresources setuptools==49.6.0

# Install python dependencies
sudo pip3 install -U numpy==1.16.1 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11

# install OpenBLAS and OpenMPI
sudo apt-get install -y libopenblas-base libopenmpi-dev

# Install PyTorch
pip3 install Cython
wget https://nvidia.box.com/shared/static/9eptse6jyly1ggt9axbja2yrmj6pbarc.whl -O torch-1.6.0-cp36-cp36m-linux_aarch64.whl
pip3 install numpy torch-1.6.0-cp36-cp36m-linux_aarch64.whl
