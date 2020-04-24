#!/bin/bash

# Making sure we have all the supporting bits
sudo apt install -y software-properties-common apt-transport-https wget flatpak

# Sublime
flatpak install -y flathub com.sublimetext.three

# Gimp
flatpak install -y flathub org.gimp.GIMP

# Inkscape
flatpak install -y flathub org.inkscape.Inkscape

# Master PDF
flatpak install -y flathub net.codeindustry.MasterPDFEditor
