#!/bin/bash

echo "Setting up ranger"

echo "Installing devicons"
git clone https://github.com/alexanderjeurissen/ranger_devicons.git ~/Applications/devicons

make -C ~/Applications/devicons install

echo "Copying config files"
cp ./commands.py ~/.config/ranger/commands.py
cp ./commands_full.py ~/.config/ranger/commands_full.py
cp ./rc.conf ~/.config/ranger/rc.conf
cp ./rifle.conf ~/.config/ranger/rifle.conf
cp ./scope.sh ~/.config/ranger/scope.sh

echo "Done"
