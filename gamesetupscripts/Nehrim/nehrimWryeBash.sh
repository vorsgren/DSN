#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

cd "$HOME/Nehrim/drive_c/GOG Games/Mopy"
umu-run "Wrye Bash.exe"
