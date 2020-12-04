#!/bin/bash

# Gnome Tweaks and Extensions
sudo apt install -y gnome-tweaks

# Other Settings
cd ./Gnome
./RestoreGnomeConfig.sh
./InstallThemes.sh
./GnomeExtensions.sh
./ConfigureTouchpad.sh