#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Oblivion"

cd "$HOME/Oblivion/drive_c/users/steamuser/AppData/Local/Programs/LOOT"
umu-run "LOOT.exe"
