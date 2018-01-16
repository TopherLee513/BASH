#!/bin/bash
# Unity3D Linux Setup Script
# Topher Lee - topher.lee.13@gmail.com
# v0.1 (Jan.15.2018)

UNITY_FILE=UnitySetup-2017.3.0f1
sudo apt install libgtk2.0-0 libsoup2.4-1 libarchive13 libpng12-0
mkdir ~/tmp
cd ~/tmp
wget http://beta.unity3d.com/download/3c89f8d277f5/UnitySetup-2017.3.0f1
sudo chmod +x UnitySetup-2017.3.0f1
./UnitySetup-2017.3.0f1 --unattended --install-location=~/unity3d
sudo chown -R $USER:$USER ~/unity3d
sudo chown -R $USER:$USER ~/.config/unity3d
#rm -rf ~/tmp

