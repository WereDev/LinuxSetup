#!/bin/bash

# Install DotNet Core
UBUNTU_VERSION=$(lsb_release -r -s)
wget -q https://packages.microsoft.com/config/ubuntu/$UBUNTU_VERSION/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install dotnet-sdk-3.1
echo "DOTNET_CLI_TELEMETRY_OPTOUT=1" | sudo tee -a /etc/environment

# Install VS Code
sudo apt install snapd
sudo snap install code --classic
echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Install Git
sudo apt -y install git

# Install NodeJs
sudo snap install node --classic --channel=10

# Install SqliteBrowser
sudo apt -y install sqlitebrowser
