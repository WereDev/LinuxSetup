#!/bin/bash

sudo apt install -y gnome-shell-extensions chrome-gnome-shell

# Dash to Dock
./InstallExtension.sh https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v68.shell-extension.zip
dconf load / < ./dash-to-dock.dconf

# Dynamic Panel Transparency
./InstallExtension.sh https://extensions.gnome.org/extension-data/dynamic-panel-transparencyrockon999.github.io.v33.shell-extension.zip
dconf load / < ./dynamic-panel.dconf

#Sound Input & Output Device Chooser
./InstallExtension.sh https://extensions.gnome.org/extension-data/sound-output-device-chooserkgshank.net.v31.shell-extension.zip

#OpenWeather
./InstallExtension.sh https://extensions.gnome.org/extension-data/openweather-extensionjenslody.de.v102.shell-extension.zip

# reset gnome-shell
killall -3 gnome-shell