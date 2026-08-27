#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

#Install Nehrim, Wrye Bash, LOOT, and xEdit
umu-run "setup_nehrim_at_fates_edge_1.0.0.0_(61681).exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
7z x "Wrye Bash 315-RC5 - Standalone Executable-591-315-RC5-1779350874.7z" -o"$HOME/Nehrim/drive_c/GOG Games/"
umu-run "loot_0.29.2-win64.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART ?SP-
7z x "TES4Edit 4.1.5f-11536-4-1-5f-1714279194.7z" -o"$HOME/Nehrim/drive_c/GOG Games/"

#fix the sounds in Nehrim
7z x -y "BSA Browser-1756-1-17-0-1675720395.7z" -o"$HOME/NEHRIM/bsab/"
cd bsab
umu-run bsab.exe -i -e "C:\GOG Games\Nehrim At Fate's Edge GOG\Data\N - Sounds.bsa" "C:\GOG Games\Nehrim At Fate's Edge GOG\Data"
cd ..
rm -r bsab

#Replace the .ini file
rm "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG/Oblivion.ini"
cp Oblivion.ini "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG"

#Set wineprefix to win7 for compatibility
umu-run winetricks win7

#copy nehrim launcher to home
cp -f nehrim.sh $HOME
