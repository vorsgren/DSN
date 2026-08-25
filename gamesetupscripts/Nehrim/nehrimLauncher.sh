#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"
export STORE=gog

cd "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG"
umu-run "Nehrim_Launcher.exe"
