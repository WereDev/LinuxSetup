#!/bin/bash

# Menu Completion
echo "TAB: menu-complete" | sudo tee -a ~/.inputrc

# Powerline
sudo apt install -y powerline
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./fonts/install.sh
cd ..
rm -rf fonts

