#!/bin/bash
. utils/copyConfs.sh

function copy_conf() {
	cp -v  ~/.config/ranger/$1 ./$1
}

copy_confs

