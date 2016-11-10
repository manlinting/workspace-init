#!/bin/sh



#image format 
yum install libpng-devel libjpeg-turbo-devel jasper-devel openexr-devel libtiff-devel libwebp-devel


yum install git
mkdir opencv-build
cd opencv-build
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout tags/2.4.8.2



mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
make install
