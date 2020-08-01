sudo echo "
# Aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
" >> ~/.bashrc

sudo echo "
alias sublime='flatpak run com.sublimetext.three'
" >> ~/.bash_aliases