#!/bin/bash
# Audio Backends
# Topher Lee - topher.lee.13@gmail.com
# v0.1 (2.14.2018)

# =====GET DEPENDENCIES=====
echo "Installing Stuff..."
sudo apt update && sudo apt upgrade -y
sudo apt-get install phonon-backend-mplayer \
phonon-backend-vlc \
phonon4qt5-backend-gstreamer
