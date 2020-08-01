sudo echo "
# Aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
" >> ~/.bashrc

sudo echo "
alias code='flatpak run com.visualstudio.code'
alias sublime='flatpak run com.sublimetext.three'
" >> ~/.bash_aliases