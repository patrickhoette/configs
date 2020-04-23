#!/bin/bash

echo "Starting"

cp -v ./zshrc ~/.zshrc
zgen update
zgen selfupdate

echo "Done"
