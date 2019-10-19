#!/bin/bash

# Install DotNet Core
wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install dotnet-sdk-2.2
echo "DOTNET_CLI_TELEMETRY_OPTOUT=1" | sudo tee -a /etc/environment

# Install VS Code
sudo apt install snapd
sudo snap install code --classic

# Install Git
sudo apt -y install git

# Install SmartGit
wget https://www.syntevo.com/downloads/smartgit/smartgit-19_1_4.deb
sudo dpkg -g smartgit-19_1_4.deb

# Install NodeJs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt -y install nodejs
sudo apt -y install yarn
