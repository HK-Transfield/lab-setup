#!/bin/bash
#
# Name - lab_setup.sh
#
# Purpose - Sets up a Unix environment for the purpose of malware analysis
# HK Transfield

echo "Installing pip"
sudo apt-get update
sudo apt-get install python-pip
pip install --upgrade pip

echo "Installing tools and Python packages"
sudo apt-get install python-magic
sudo apt-get install upx
sudo pip install pefile
sudo apt-get install yara
sudo pip install yara-python
sudo apt-get install ssdeep
sudo apt-get install build-essential libffi-dev python python-dev libfuzzy-dev
sudo pip install ssdeep
sudo apt-get install wireshark
sudo apt-get install tshark

echo "Installing INetSim"
sudo su
echo "deb http://www.inetsim.org/debian/ binary/" > /etc/apt/sources.list.d/inetsim.list
wget -O - http://www.inetsim.org/inetsim-archive-signing-key.asc | apt-key add -
apt update
apt-get install inetsim