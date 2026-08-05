#!/bin/bash
sudo xbps-install -Su \
&& sudo xbps-install -S wine winetricks wine-32bit wine-common wine-devel wine-devel-32bit wine-gecko wine-mono wine-tools p7zip lutris \
&& mkdir /home/$USER/Nehrim \
&& WINEPREFIX=/home/$USER/Nehrim winecfg -v win7 \
&& export WINEPREFIX=/home/$USER/Nehrim \
&& WINEPREFIX=/home/$USER/Nehrim winetricks --force --unattended dotnet48 dotnetdesktop6 vcrun2015 vcrun2017 vcrun2019 vcrun2022 dxvk d3dx11_43 d3dcompiler_43 d3dcompiler_47 faudio \
&& WINEPREFIX=/home/$USER/Nehrim winecfg -v win7 \
&& WINEPREFIX=/home/$USER/Nehrim wine /home/$USER/Games/Enderal_Mods/'setup_the_elder_scrolls_v_skyrim_special_edition_0.1.3905696_(64bit)_(70738).exe' \
&& WINEPREFIX=/home/$USER/Nehrim wine /home/$USER/Games/Enderal_Mods/Mod.Organizer-2.5.2.exe \
&& cp nehrim.sh /home/$USER/
