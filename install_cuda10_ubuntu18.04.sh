#!/bin/sh 

# Install the key:
sudo apt-key adv --fetch-keys  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/7fa2af80.pub
# Add the repo:
sudo bash -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64 /" > /etc/apt/sources.list.d/cuda.list'
# Update the system again:
sudo apt update
# Install CUDA 10.0.
sudo apt install cuda-10-0
# It should be installing the nvidia-410 drivers with it as those are what are listed in the repo. See: http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/
Add the following lines to your ~/.profile file for CUDA 10.0

# set PATH for cuda 10.0 installation
# if [ -d "/usr/local/cuda-10.0/bin/" ]; then
#     export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
#     export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# fi
# Reboot the computer and check your settings when reboot is complete:
# Check NVIDIA Cuda Compiler with nvcc --version:
# Check NVIDIA driver with nvidia-smi: