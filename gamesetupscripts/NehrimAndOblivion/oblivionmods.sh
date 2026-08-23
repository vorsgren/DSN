#!/bin/bash

export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Oblivion"
export STORE=gog

cd "$HOME/Oblivion/drive_c/GOG Games/Mopy" \
&& umu-run "Wrye Bash.exe"
