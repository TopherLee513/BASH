#!/bin/bash
# Krita PPA Installer
# Topher Lee - topher.lee.13@gmail.com
# v0.1 (2.14.2018)

# =====GET DEPENDENCIES=====
echo "Installing Dependencies..."
sudo add-apt-repository ppa:kritalime/ppa
sudo apt update && sudo apt upgrade -y
sudo apt-get install krita -y
