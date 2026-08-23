#!/bin/bash

export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"
export STORE=gog

cd "$HOME/Nehrim/drive_c/users/steamuser/AppData/Local/Programs/LOOT" \
&& umu-run "LOOT.exe"
