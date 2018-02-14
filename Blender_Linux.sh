#!/bin/bash
#From https://wiki.blender.org/index.php/Dev:Doc/Building_Blender/Linux/Ubuntu/CMake

sudo apt-get update; sudo apt-get install git build-essential cmake cmake-curses-gui\
 libfreetype6-dev \
 libglew-dev \
 libglu1-mesa-dev \
 libjpeg-dev \
 libpng12-dev \
 libsndfile1-dev \
 libx11-dev \
 libxi-dev \
 python3.5-dev \
 libalut-dev \
 libavcodec-dev \
 libavdevice-dev \
 libavformat-dev \
 libavutil-dev \
 libfftw3-dev \
 libjack-dev \
 libmp3lame-dev \
 libopenal-dev \
 libopenexr-dev \
 libopenjpeg-dev \
 libsdl1.2-dev \
 libswscale-dev \
 libtheora-dev \
 libtiff5-dev \
 libvorbis-dev \
 libx264-dev \
 libspnav-dev

mkdir -p ~/src/blender-git
cd ~/src/blender-git
git clone https://git.blender.org/blender.git
cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master

cd ..
./blender/build_files/build_environment/install_deps.sh

cd ~/blender-git/blender
make update
make full

