#!/bin/bash

# Gnome Tweaks
sudo apt install -y gnome-tweaks

# Enabling multi-finger gestures
# Assumes libinput
sudo gpasswd -a $USER input
sudo apt-get install -y xdotool wmctrl
sudo apt-get install -y libinput-tools
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
libinput-gestures-setup autostart
libinput-gestures-setup start
# will need to reboot at this point
