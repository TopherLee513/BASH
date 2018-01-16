#!/bin/bash
# Ubuntu 16.04+ Initial Setup Script
# Topher Lee - topher.lee.13@gmail.com
# v0.5 (Jan.15.2018)

#=====GET OS INFO
cd ~
. /etc/lsb-release
echo $DISTRIB_DESCRIPTION
echo $DISTRIB_ID
echo $DISTRIB_RELEASE
echo $DISTRIB_CODENAME
#Add 32bit Compatibility
sudo dpkg --add-architecture i386
#Check for updates
sudo apt update && sudo apt upgrade -y
sudo apt-get dist-upgrade -y
#Install Topher Standard Apps
sudo apt install screenfetch \
openssh-server \
rar \
unrar \
wget \
curl \
p7zip-full \
gnome-tweak-tool \
vlc \
ubuntu-restricted-extras

sudo apt-get autoremove
sudo apt-get -f install

# BACKPORTS
#echo "deb http://archive.ubuntu.com/ubuntu $DISTRIB_CODENAME-backports main restricted universe multiverse" >> /etc/apt/sources.list

# =====BREAK-FIX=====
# RESTORE DEFAULT .bashrc
#/bin/cp /etc/skel/.bashrc ~/
#source ~/.bashrc
#Steam Fix
rm ~/.steam/steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.6
#===================================================================================
#Press space to continue
#Code by: Lebress @ https://unix.stackexchange.com/users/161201/lebress
#Code from: https://unix.stackexchange.com/questions/134437/press-space-to-continue
read -n1 -r -p "Press space to continue..." key

if [ "$key" = '' ]; then
    # Space pressed, do something
    # echo [$key] is empty when SPACE is pressed # uncomment to trace
else
    # Anything else pressed, do whatever else.
    # echo [$key] not empty
fi
#===================================================================================
