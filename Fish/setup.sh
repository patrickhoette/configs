#!/bin/bash

editor='vim'

echo "Setting up fish"

echo "Copying over configurations"
cp -r completions ~/.config/fish/
cp -r conf.d ~/.config/fish/
cp config.fish ~/.config/fish/
cp fish_variables ~/.config/fish/
cp fishfile ~/.config/fish/
cp -r functions ~/.config/fish/

echo "Setting default editor"
fish -c "set -U VISUAL $editor"
fish -c "set -U EDITOR $editor"

echo "Done setting up fish"
