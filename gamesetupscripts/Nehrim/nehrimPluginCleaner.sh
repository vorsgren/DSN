#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

cd "$HOME/Nehrim/drive_c/GOG Games/TES4Edit 4.1.5f"
umu-run "TES4EditQuickAutoClean.exe" -TES4 -D:"C:\GOG Games\Nehrim At Fate's Edge GOG\Data"
