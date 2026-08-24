#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Oblivion"

#Install Oblivion, Wrye Bash, and LOOT
umu-run wineboot -i
innoextract --extract --exclude-temp --output-dir "$HOME/Oblivion/drive_c/GOG Games" "setup_oblivion_1.2.0416_cs_(12788).exe"
mv "$HOME/Oblivion/drive_c/GOG Games/app" "$HOME/Oblivion/drive_c/GOG Games/Oblivion"
umu-run reg add "HKLM\\Software\\Bethesda Softworks\\Oblivion" /v "Installed Path" /t REG_SZ /d "C:\\GOG games\\Oblivion\\" /f
umu-run reg add "HKLM\\Software\\Wow6432Node\\Bethesda Softworks\\Oblivion" /v "Installed Path" /t REG_SZ /d "C:\\GOG Games\\Oblivion\\" /f
cp -f oblivion.sh $HOME
7z x "Wrye Bash 315-RC5 - Standalone Executable-591-315-RC5-1779350874.7z" -o"$HOME/Oblivion/drive_c/GOG Games"
cp -f oblivionWryeBash.sh $HOME
umu-run "loot_0.29.2-win64.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART ?SP-
cp -f oblivionLOOT.sh $HOME

#Set wineprefix to win7 for compatibility
umu-run winetricks win7
