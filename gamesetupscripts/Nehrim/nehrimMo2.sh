#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton9-27"
export WINEPREFIX="$HOME/Nehrim"

cd "$HOME/Nehrim/drive_c/Modding/MO2"
umu-run "ModOrganizer.exe"
