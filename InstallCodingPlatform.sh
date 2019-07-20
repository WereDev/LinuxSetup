c#!/bin/bash

# Get Linux Version

lsbFile="/etc/lsb-release"
releaseName="DISTRIB_RELEASE="

while IFS= read -r line
do
  if [[ $line == $releaseName* ]]
  then
    releaseVersion=${line:16}
  fi
done < $lsbFile

# Install DotNet Core
wget -q https://packages.microsoft.com/config/ubuntu/${releaseVersion}/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo add-apt-repository universe
sudo apt -y install apt-transport-https
sudo apt update
sudo apt -y install dotnet-sdk-2.2

# Install VS Code
sudo apt install snapd
sudo snap install code --classic
echo "DOTNET_CLI_TELEMETRY_OPTOUT=1" | sudo tee -a /etc/environment

# Install Git
sudo apt -y install git

# Install GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt --fix-broken -y install

# Install NodeJs
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt -y install nodejs
sudo apt -y install yarn
