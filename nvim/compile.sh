#!/bin/bash

which apt >/dev/null 2>&1
if [ $? -eq 0 ]
then
    echo "apt"
    echo "install neovim build dependencies"
    sudo apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
else
	echo "yum"
	sudo yum -y install ninja-build libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip patch
fi
echo "compiling neovim"
sleep 2000
sudo make CMAKE_BUILD_TYPE=Release
sudo make install
