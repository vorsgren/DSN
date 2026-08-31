#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

source $HOME/NEHRIM/Nehrim-venv/bin/activate
#cd "$HOME/Nehrim/drive_c/GOG Games/Mopy"
#umu-run "Wrye Bash.exe"
python "$HOME/Nehrim/drive_c/GOG Games/Mopy/Wrye Bash Launcher.pyw" -o "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG" -p "$HOME/Nehrim/drive_c/users/$USER/Documents" -l "$HOME/Nehrim/drive_c/users/$USER/AppData/Local"
