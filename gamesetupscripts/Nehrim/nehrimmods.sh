#!/bin/bash

export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"
export STORE=gog

cd "$HOME/Nehrim/drive_c/GOG Games/Mopy" \
&& umu-run "Wrye Bash.exe"
