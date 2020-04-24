#!/bin/bash
mkdir ~/.local/share/gnome-shell/extensions
cd ~/.local/share/gnome-shell/extensions

# Top Tray Icons
wget https://extensions.gnome.org/extension-data/TopIcons-gitphocean.net.v2.shell-extension.zip
unzip ./TopIcons-gitphocean.net.v2.shell-extension.zip -d ./TopIcons-git@phocean.net
rm TopIcons-gitphocean.net.v2.shell-extension.zip

# dash to panel
wget https://extensions.gnome.org/extension-data/dash-to-paneljderose9.github.com.v35.shell-extension.zip
unzip ./dash-to-paneljderose9.github.com.v35.shell-extension.zip -d ./dash-to-panel@jderose9.github.com
rm dash-to-paneljderose9.github.com.v35.shell-extension.zip