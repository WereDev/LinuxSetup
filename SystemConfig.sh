#!/bin/bash

# Gnome Tweaks and Extensions
sudo apt install -y gnome-tweaks
sudo apt install -y gnome-shell-extensions
sudo apt install -y chrome-gnome-shell

# Top Tray Icons
cd ~/.local/share/gnome-shell/extensions
wget https://extensions.gnome.org/extension-data/TopIcons-gitphocean.net.v2.shell-extension.zip
unzip ./TopIcons-gitphocean.net.v2.shell-extension.zip -d ./TopIcons-git@phocean.net
rm TopIcons-gitphocean.net.v2.shell-extension.zip
cd ~

# Power Management
# https://tipsonubuntu.com/2018/11/18/quick-tip-improve-battery-life-ubuntu-18-04-higher/
sudo apt -y install tlp
sudo add-apt-repository -y ppa:linuxuprising/apps
sudo apt update
sudo apt -y install tlpui

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
