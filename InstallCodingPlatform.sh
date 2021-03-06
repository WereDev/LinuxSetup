#!/bin/bash

# Making sure we have all the supporting bits
sudo apt install -y software-properties-common apt-transport-https wget flatpak
flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install DotNet Core
UBUNTU_VERSION=$(lsb_release -r -s)
wget -q https://packages.microsoft.com/config/ubuntu/$UBUNTU_VERSION/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sudo apt -y install dotnet-sdk-3.1
echo "DOTNET_CLI_TELEMETRY_OPTOUT=1" | sudo tee -a /etc/environment
rm packages-microsoft-prod.deb

# Install VS Code
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb
rm vscode.deb
echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
chmod +x ./VSCode/VSCodeExtensions.sh
./VSCode/VSCodeExtensions.sh
cp ./VSCode/VSCodeSettings.json ~/.config/Code/User/settings.json

# Install Git
sudo apt -y install git

# Install NodeJs
wget --quiet -O - https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt -y install nodejs

# Install DBeaver
flatpak install -y flathub io.dbeaver.DBeaverCommunity
