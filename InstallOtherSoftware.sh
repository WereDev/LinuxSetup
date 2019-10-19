#!/bin/bash
cd ~/Downloads

# Vivaldi
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt update
sudo apt -y install vivaldi-stable

#VMware Player
wget https://download3.vmware.com/software/player/file/VMware-Player-15.5.0-14665864.x86_64.bundle
chmod +x VMware-Player-15.5.0-14665864.x86_64.bundle
sudo ./VMware-Player-15.5.0-14665864.x86_64.bundle
