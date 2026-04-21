#!/bin/bash

shopt -s dotglob
for file in ./dot/*; do # make recursive through directories
	#ln -s "file" /home/$USER 
	echo "Linking $file"
done
shopt -u dotglob
