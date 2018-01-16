#!/bin/bash
# OpenMW Compiler
# Topher Lee - topher.lee.13@gmail.com
# v0.1 (8.19.2017)

# =====GET DEPENDENCIES=====
echo "Installing Dependencies..."
sudo add-apt-repository ppa:openmw/openmw
sudo apt update && sudo apt upgrade -y
sudo apt install libtxc-dxtn-s2tc
sudo apt install -y git-core make cmake automake doxygen-dev build-essential libopenscenegraph-3.4-dev libmygui-dev libbullet-dev libsdl2-dev libqt4-dev libqt4-opengl-dev qt4-dev-tools qt5-dev-tools libopenal-dev libboost-filesystem-dev libboost-thread-dev libboost-program-options-dev libboost-system-dev libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libswresample-dev libunshield-dev

echo "Downloading Source..."
mkdir ~/src
cd ~/src
git clone --recursive https://github.com/OpenMW/openmw.git
#git clone --recursive https://github.com/TES3MP/openmw-tes3mp.git
mkdir openmw/build
cd openmw/build

cmake ..
make -j4
sudo make install

