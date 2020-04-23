#!/bin/bash
. utils/copyConfs.sh

function copy_conf() {
	cp -v ./$1 ~/.config/ranger/$1
}

copy_confs

