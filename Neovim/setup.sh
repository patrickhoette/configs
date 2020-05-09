#!/bin/bash

echo "starting"

conf_dir="$HOME/.config/nvim"

# Install NeoBundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh

# Copy configs
mkdir -pv "$conf_dir"
cp -v init.vim "$conf_dir/init.vim"

# Install plugins
nvim +NeoBundleInstall +q

echo "done"
