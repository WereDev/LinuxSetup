#!/bin/bash

# Install DotNet Core
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install dotnet-sdk-2.2

# Install VS Code
sudo snap install code --classic

# Install Git
sudo apt -y install git

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-borken -y install

echo "DOTNET_CLI_TELEMETRY_OPTOUT=1" | sudo tee -a /etc/environment

