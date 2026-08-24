#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

cd "$HOME/Nehrim/drive_c/users/steamuser/AppData/Local/Programs/LOOT":u
umu-run "LOOT.exe"
