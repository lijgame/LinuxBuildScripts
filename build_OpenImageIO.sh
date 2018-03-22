# build and install openimageio from source The one come with Ubuntu 14.04 is
# too old
cd ~/codes
git clone https://github.com/OpenImageIO/oiio.git
cd oiio
git checkout release 
mkdir build
cd build/
cmake ~/codes/oiio -DCMAKE_CXX_COMPILER="/usr/local/bin/g++-7" -DCMAKE_C_COMPILER="/usr/local/bin/gcc-7"
make -j$num_cpus
make install