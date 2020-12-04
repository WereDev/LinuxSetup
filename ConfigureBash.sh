#!/bin/bash
cd ~/Downloads

# Menu Completion
echo "TAB: menu-complete" | sudo tee -a ~/.inputrc

# Powerline
sudo apt install -y powerline powerline-gitstatus
git clone https://github.com/powerline/fonts.git --depth=1

./fonts/install.sh
sudo echo "
# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi" >> ~/.bashrc

# Make sure Aliases are supported
sudo echo "
# Aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
" >> ~/.bashrc
