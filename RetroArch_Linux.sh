#!/bin/bash
# RetroArch Compiler
# Topher Lee - topher.lee.13@gmail.com
# v0.1 (Jan.15.2018)

mkdir ~/src
cd ~/src
git clone --recursive https://github.com/libretro/RetroArch.git
sudo apt install libxml2-dev libgbm-dev libroar-dev libavdevice-dev libopenal-dev libalsaplayer-dev libv4l-dev libsdl1.2-dev libavcodec-dev libavformat-dev libavdevice-dev libavutil-dev libswresample-dev libavresample-dev libswscale-dev libjack-dev libflac-dev libusb-1.0-0-dev
cd RetroArch
./configure
make -j2
sudo make install

#libusb-dev
#zlib-dev
#libfreetype2-dev
#libjack-jackd2-dev

