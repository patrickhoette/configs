#!/bin/bash

echo "Starting"

cp -v ./zshrc ~/.zshrc

echo "Installing Zgen"
git clone https://github.com/tarjoilija/zgen.git ~/.zgen

echo "Installing programs required for plugins" # Where possible
gem install colorls

chmod +x ./updateLocal.zsh
chmod +x ./updateRemote.zsh
./updateLocal.zsh

echo "Done"
