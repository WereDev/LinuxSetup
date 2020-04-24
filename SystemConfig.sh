#!/bin/bash

# exFAT support
sudo apt-get install exfat-fuse exfat-utils

# Gnome Tweaks and Extensions
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

chmod +x ./Gnome/GnomeExtensions.sh
./Gnome/GnomeExtensions.sh

# Gnome Settings
dconf load / < ./Gnome/gnome-config.bak

# Enabling multi-finger gestures
# Assumes libinput
sudo gpasswd -a $USER input
sudo apt-get install -y xdotool wmctrl
sudo apt-get install -y libinput-tools
cd ~/Downloads
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
libinput-gestures-setup autostart
libinput-gestures-setup start

echo "The system will need to be rebooted to enable the new features"
