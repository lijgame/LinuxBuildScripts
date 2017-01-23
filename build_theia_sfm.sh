#!/bin/sh

sudo apt install cmake git build-essential -y
sudo apt install libeigen3-dev libgoogle-glog-dev libatlas-base-dev libsuitesparse-dev -y
sudo apt install mesa-common-dev mesa-utils-extra libgl1-mesa-dev libglapi-mesa freeglut3-dev -y
sudo apt install libxmu-dev libxi-dev libtiff-dev libpng-dev libopenexr-dev libboost-all-dev -y

# build and install openimageio from source The one come with Ubuntu 14.04 is
# too old
cd ~/codes
git clone https://github.com/OpenImageIO/oiio.git
cd oiio
git checkout release 
cd ..
mkdir oiio-build
cd oiio-build/
cmake ~/codes/oiio
make -j5
sudo make install

# build and install ceres solver
cd ~/codes
git clone https://ceres-solver.googlesource.com/ceres-solver
mkdir ceres-solver-build
cd ceres-solver-build/
cmake ~/codes/ceres-solver
make -j5
make test
sudo make install

# build and install theia sfm
cd ~/codes
git clone https://github.com/lijgame/TheiaSfM.git
cd TheiaSfM
git checkout testing
mkdir TheiaSfM-build
cd TheiaSfM-build/
cmake ~/codes/TheiaSfM
make -j5
