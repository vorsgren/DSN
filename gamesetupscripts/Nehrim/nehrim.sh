#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"
export STORE=gog

cd "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG"
ENABLE_GAMESCOPE_WSI=0 gamescope --backend sdl -w 1720 -h 720 -W3440 -H 1440 -F fsr --fsr-sharpness 2 -f --force-windows-fullscreen --force-grab-cursor -r 72 -- umu-run "NehrimLauncher.exe"
