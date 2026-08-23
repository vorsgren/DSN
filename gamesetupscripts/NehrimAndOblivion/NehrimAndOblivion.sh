#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
#export WINEPREFIX="$HOME/Nehrim"


#Only needed till bad sound file can be figured out
umu-run reg.exe add "HKCU\Console" /v CloseOnExit /t REG_DWORD /d 0 /f

cp oblivion.sh $HOME
cp oblivionmods.sh $HOME
cp oblivionloadorder.sh $HOME
cp nehrim.sh $HOME
cp nehrimmods.sh $HOME
cp nehrimloadorder.sh $HOME

WINEPREFIX="$HOME/Nehrim" umu-run "setup_nehrim_at_fates_edge_1.0.0.0_(61681).exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
7z x "Wrye Bash 315-RC5 - Standalone Executable-591-315-RC5-1779350874.7z" -o"$HOME/Nehrim/drive_c/GOG Games/"
WINEPREFIX="$HOME/Nehrim" umu-run "loot_0.29.2-win64.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART ?SP-
7z x -y "BSArch 64745 1.1 2026-08-07T10-29Z eWk4n7NM.zip"
WINEPREFIX="$HOME/Nehrim" umu-run BSArch.exe unpack "C:\GOG Games\Nehrim At Fate's Edge GOG\Data\N - Sounds.bsa" "C:\GOG Games\Nehrim At Fate's Edge GOG\Data\"
rm BSArch.exe

#winecfg -v win7
