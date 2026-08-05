#!/bin/bash
sudo xbps-install -Su \
&& sudo xbps-install -S wine winetricks wine-32bit wine-common wine-devel wine-devel-32bit wine-gecko wine-mono wine-tools p7zip \
&& mkdir /home/$USER/Nehrim \
&& WINEPREFIX=/home/$USER/Nehrim winecfg -v win7 \
&& export WINEPREFIX=/home/$USER/Nehrim \
&& WINEPREFIX=/home/$USER/Nehrim winetricks --force --unattended dotnet48 dotnetdesktop6 vcrun2015 vcrun2017 vcrun2019 vcrun2022 dxvk d3dx9_43 d3dcompiler_43 d3dcompiler_47 faudio \
&& WINEPREFIX=/home/$USER/Nehrim winecfg -v win7 \
&& WINEPREFIX=/home/$USER/Nehrim wine "$PWD/setup_nehrim_at_fates_edge_1.0.0.0_(61681).exe" \
&& WINEPREFIX=/home/$USER/Nehrim wine "$PWD/Mod Organizer 2-6-2-5-2-1772983502.exe" \
&& cp nehrim.sh /home/$USER/
