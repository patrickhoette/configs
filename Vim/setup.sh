#!/bin/bash

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Install dark atom theme"
mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/atom-dark.vim  https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim

cp -v ./vimrc ~/.vimrc

echo "Installing plugins"
vim +PluginInstall +qall

echo "Done setting up vim"
