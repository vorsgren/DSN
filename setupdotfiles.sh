#!/bin/bash

# copy all folders in the dot folder to the home directory
find ./dot -type d | cut -c7- | awk 'NF' | xargs -I {} mkdir -p "/home/$USER/{}"

# symlink all dotfiles to the home directory
find ./dot -type f | cut -c7- | awk 'NF' | xargs -I {} ln -s -f "/home/$USER/dat/DSN/dot/{}" "/home/$USER/{}"
