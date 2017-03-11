#!/bin/sh 
sudo apt install build-essential pkg-config libgflags-dev libgoogle-glog-dev-y
sudo apt install python3-dev python3-pip python3-setuptools python3-numpy python3-scipy Cython3 -y
sudo apt install libboost-all-dev libatlas-base-dev libprotobuf-dev -y
sudo pip3 install tensorflow
# export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.1-cp34-cp34m-linux_x86_64.whl
# export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.12.1-cp27-none-linux_x86_64.whl
# sudo pip3 install --upgrade $TF_BINARY_URL
git clone https://github.com/tensorflow/models.git ~/codes/tensorflow_models