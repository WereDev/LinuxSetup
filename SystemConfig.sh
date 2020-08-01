#!/bin/bash

# Gnome Tweaks and Extensions
sudo apt install -y gnome-tweaks

# Gnome Settings
./Gnome/RestoreGnomeConfig.sh
./Gnome/GnomeExtensions.sh

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
