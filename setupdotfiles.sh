#!/bin/bash

#add part that first creates copies of the directories, and then a second part that makes links to the files

find ./dot -type d | cut 



#find ./dot | xargs ln -fs /home/$USER



#shopt -s dotglob
#for file in ./dot/*; do # make recursive through directories
	#ln -s "file" /home/$USER 
	#echo "Linking $file"
#done
#shopt -u dotglob
