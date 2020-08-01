#!/bin/bash

FILE=$(basename $1)
wget $1
UUID=$(unzip -c $FILE metadata.json | grep uuid | cut -d \" -f4)
gnome-extensions install $FILE
gnome-extensions enable $UUID
rm $FILE