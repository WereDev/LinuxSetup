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
echo fs.inotify.max_user_instances=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Install Git
sudo apt -y install git

# Install SmartGit
wget https://www.syntevo.com/downloads/smartgit/smartgit-19_1_4.deb
sudo dpkg -i smartgit-19_1_4.deb

# Install NodeJs
sudo snap install node --classic --channel=10

# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y install yarn
