#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Oblivion"

cd "$HOME/Oblivion/drive_c/GOG Games/Mopy"
umu-run "Wrye Bash.exe -o "C:\GOG games\Oblivion"
