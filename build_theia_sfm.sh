#!/bin/sh
mkdir -p ~/codes
num_cpus=$(nproc --all)

sudo apt install cmake git build-essential -y
sudo apt install libgoogle-glog-dev libatlas-base-dev libsuitesparse-dev -y
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
if [ -d " ~/codes/ceres-solver" ]; then
	git clone https://ceres-solver.googlesource.com/ceres-solver
fi

mkdir -p ~/codes/build/ceres-solver_build
cd ~/codes/build/ceres-solver_build
rm -rf ./*
cmake -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF ~/codes/ceres-solver
make -j$num_cpus
sudo make install

# build and install theia sfm
cd ~/codes
if [ -d " ~/codes/TheiaSfM" ]; then
	git clone https://github.com/lijgame/TheiaSfM.git
fi
cd TheiaSfM
git remote add remote https://github.com/sweeneychris/TheiaSfM.git
git checkout dev
cd ..
mkdir -p TheiaSfM_build
cd TheiaSfM_build/
rm -rf ./*
cmake -DBUILD_TESTING=OFF -DOPENMP=ON ~/codes/TheiaSfM 
make -j$num_cpus
