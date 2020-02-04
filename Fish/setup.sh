#!/bin/bash

editor='vim'

echo "Setting up fish"

echo "Installing fisher"
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

echo "Installing oh-my-fish"
curl -L https://get.oh-my.fish | fish

echo "Installing bobthefish theme"
fish -c 'fisher add oh-my-fish/theme-bobthefish'

echo "Copying over configurations"
cp -r completions ~/.config/fish/
cp -r conf.d ~/.config/fish/
cp config.fish ~/.config/fish/
cp fish_variables ~/.config/fish/
cp fishfile ~/.config/fish/
cp -r fisher ~/.config/fisher/
cp -r functions ~/.config/fish/

echo "Setting default editor"
fish -c "set -U VISUAL $editor"
fish -c "set -U EDITOR $editor"

echo "Done setting up fish"
