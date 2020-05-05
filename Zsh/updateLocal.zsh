#!/bin/zsh

echo "Starting"

git pull
cp -v ./zshrc ~/.zshrc
zgen update
zgen selfupdate

echo "Done"
