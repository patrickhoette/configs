#!/bin/bash

fish_config_dir=~/.config/fish

function move_config_dir() {
	cp -rv $fish_config_dir/$1 ./
}

function move_config_file() {
	cp -v $fish_config_dir/$1 ./$1
}

echo "Updating from local config files"
move_config_dir completions
move_config_dir conf.d
move_config_dir functions
move_config_file config.fish
move_config_file fishfile

echo "Done"

