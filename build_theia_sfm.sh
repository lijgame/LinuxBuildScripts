#!/bin/sh
mkdir -p ~/codes
num_cpus=$(nproc --all)

sudo apt install cmake git build-essential -y
sudo apt install libeigen3-dev libgoogle-glog-dev libatlas-base-dev libsuitesparse-dev -y
sudo apt install mesa-common-dev mesa-utils-extra libgl1-mesa-dev libglapi-mesa freeglut3-dev -y
sudo apt install libxmu-dev libxi-dev libtiff-dev libpng-dev libopenexr-dev libboost-all-dev libopenimageio-dev -y

# build and install openimageio from source The one come with Ubuntu 14.04 is
# too old
# cd ~/codes
# git clone https://github.com/OpenImageIO/oiio.git
# cd oiio
# git checkout release 
# cd ..
# mkdir oiio-build
# cd oiio-build/
# cmake ~/codes/oiio
# make -j$num_cpus
# sudo make install

# build and install ceres solver
cd ~/codes
git clone https://ceres-solver.googlesource.com/ceres-solver
mkdir -p ~/codes/build/ceres-solver-build
cd ~/codes/build/ceres-solver-build
cmake -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF ~/codes/ceres-solver
make -j$num_cpus
sudo make install

# build and install theia sfm
cd ~/codes
git clone https://github.com/lijgame/TheiaSfM.git
cd TheiaSfM
git remote add remote https://github.com/sweeneychris/TheiaSfM.git
cd ..
mkdir TheiaSfM-build
cd TheiaSfM-build/
cmake -DBUILD_TESTING=OFF -DOPENMP=ON ~/codes/TheiaSfM 
make -j$num_cpus
