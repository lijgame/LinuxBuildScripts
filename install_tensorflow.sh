#!/bin/sh 
sudo apt install build-essential pkg-config libopencv-dev libgflags-dev libgoogle-glog-dev liblmdb-dev -y
sudo apt install python-dev python-pip python-setuptools python-numpy python-scipy -y
sudo apt install libboost-all-dev libatlas-base-dev libprotobuf-dev -y
sudo apt install libleveldb- dev libsnappy-dev libhdf5-serial-dev protobuf-compiler -y
sudo pip install Cython
sudo pip install numpy
sudo pip install scipy
sudo pip install scikit-image
sudo pip install matplotlib
sudo pip install ipython
sudo pip install h5py
sudo pip install leveldb
sudo pip install networkkx
sudo pip install nose
sudo pip install pandas
sudo pip install python-dateutil
sudo pip install protobuf
sudo pip install python-gflags
sudo pip install pyyaml
sudo pip install Pillow
sudo pip install six
export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp27-none-linux_x86_64.whl
sudo pip install --upgrade $TF_BINARY_URL
git clone https://github.com/tensorflow/models.git ~/codes/tensorflow_models