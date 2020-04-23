#!/bin/bash

echo "Installing devicons"
git clone https://github.com/alexanderjeurissen/ranger_devicons.git ~/Applications/devicons
make -C ~/Applications/devicons install

echo "Making script executable"
sudo chmod +x ./updateLocal.sh && sudo chmod +x ./updateRemote.sh
./updateLocal.sh

