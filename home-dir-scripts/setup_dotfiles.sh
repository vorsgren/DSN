#!/bin/zsh

# set this up so it creates symlinks for all the dotfiles in this repo to the config folder

for file in ./dot; do # make recursive through directories
	ln -s "file" $USER/
done
