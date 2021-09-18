#!/bin/bash
# USE ONLY FOR RASPBERRY PI 4
mkdir tools
cd tools
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
python3 -m pip install -r requirements.txt
cd ..
git clone git://github.com/htr-tech/zphisher.git
git clone https://github.com/H1R0GH057/Anonymous
cd
sudo lshw -C network
git clone https://github.com/aircrack-ng/rtl8188eus
cd rtl8188eus/
make
sudo make install
sudo lsmod
sudo su
airmon-ng check kill
ifconfig wlan0 down
iwconfig wlan0 mode monitor
ifconfig wlan0 up
exit
sudo airodump-ng wlan0
fi
