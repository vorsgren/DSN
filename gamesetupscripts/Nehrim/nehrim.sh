#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"
export STORE=gog

cd "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG"

sh -c 'gamescope --backend sdl -w 1720 -h 720 -W 3440 -H 1440 -F fsr --fsr-sharpness 2 -f --force-windows-fullscreen -r 60 -- umu-run "obse_loader.exe"; exit 0'

#archive saves
archivetime=$(date +"%Y-%m-%d_%H:%M:%S")
newestfiletime=$(find "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG/Saves" -maxdepth 1 -type f -exec stat -c '%Y' {} \; | sort -n | tail -n 1)
mkdir -p $HOME/Nehrim/BACKUPSAVES/$archivetime

shopt -s nullglob #expand * to empty if no files
for file in "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG/Saves"/*; do
	currentfiletime=$(stat -c '%Y' "$file")
	if [ "$currentfiletime" -eq "$newestfiletime" ]; then
		:
	else
		mv "$file" "$HOME/Nehrim/BACKUPSAVES/$archivetime"
	fi
done
shopt -u nullglob # Restore default * behavior

#remove empty archive directories
find "$HOME/Nehrim/BACKUPSAVES" -empty -type d -delete
