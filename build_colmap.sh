#!/bin/bash
num_cpus=$(nproc --all)

sudo apt-get -y install \
    cmake \
    build-essential \
    libboost-all-dev \
    libfreeimage-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libglew-dev \
    freeglut3-dev \
    qt5-default \
    libqt5opengl5-dev\
    libxmu-dev \
    libxi-dev \
    libeigen3-dev

git clone https://github.com/lijgame/colmap.git ~/codes/colmap
cd ~/codes/colmap
git remote add remote https://github.com/colmap/colmap.git
mkdir -p ~/codes/colmap_build
cd ~/codes/colmap_build
cmake -DCMAKE_C_COMPILER=/usr/bin/gcc-5 -DCMAKE_CXX_COMPILER=/usr/bin/g++-5 -DTESTS_ENABLED=OFF ~/codes/colmap
make -j$num_cpus
