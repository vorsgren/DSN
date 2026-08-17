#!/bin/bash

set -euo pipefail
export PROTONPATH="$HOME/GE-Proton11-3"
export WINEPREFIX="$HOME/Nehrim"

umu-run "setup_nehrim_at_fates_edge_1.0.0.0_(61681).exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
umu-run "Wrye.Bash.314.-.Installer.exe"
umu-run "loot_0.29.1-win64.exe"
7z x 'BAE v0.10-974-0-10.7z' -o./bae
cd bae
umu-run bae.exe
mv $HOME/NEHRIM/sound "$HOME/Nehrim/drive_c/GOG Games/Nehrim At Fate's Edge GOG/Data"
cd ..
rm -r ./bae
cp nehrim.sh $HOME
cp nehrimmods.sh $HOME
cp nehrimloadorder.sh $HOME

#&& WINEPREFIX=/home/$USER/Nehrim winecfg -v win7 \
