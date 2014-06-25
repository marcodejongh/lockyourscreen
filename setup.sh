#!/bin/sh
curl https://raw.githubusercontent.com/marcodejongh/lockyourscreen/master/id_lockyourscreen.pub -o ~/.ssh/id_lockyourscreen.pub
curl http://www.picturesnew.com/media/images/david-hasselhoff.jpg -o ~/.hasselhoff.jpg
gsettings set org.gnome.desktop.background picture-uri ~/.hasselhoff.jpg
defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/hasselhoff.jpg"; };}'
