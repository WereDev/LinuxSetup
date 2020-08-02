#!/bin/bash

sudo apt install -y arc-theme
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'

sudo apt install -y breeze-cursor-theme
gsettings set org.gnome.desktop.interface cursor-theme 'breeze_cursors'

sudo apt install -y papirus-icon-theme
gsettings set org.gnome.desktop.interface icon-theme 'Papirus'