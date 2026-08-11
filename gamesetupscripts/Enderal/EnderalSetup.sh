#!/bin/bash
sudo xbps-install -Su \
&& sudo xbps-install -S wine winetricks wine-32bit wine-common wine-devel wine-devel-32bit wine-gecko wine-mono wine-tools p7zip lutris \
&& mkdir /home/$USER/Enderal \
&& WINEPREFIX=/home/$USER/Enderal winecfg -v win10 \
&& export WINEPREFIX=/home/$USER/Enderal \
&& WINEPREFIX=/home/$USER/Enderal winetricks --force --unattended dotnet48 dotnetdesktop6 vcrun2015 vcrun2017 vcrun2019 vcrun2022 dxvk d3dx11_43 d3dcompiler_43 d3dcompiler_47 faudio \
&& WINEPREFIX=/home/$USER/Enderal winecfg -v win10 \
&& WINEPREFIX=/home/$USER/Enderal wine /home/$USER/Games/Enderal_Mods/'setup_the_elder_scrolls_v_skyrim_special_edition_0.1.3905696_(64bit)_(70738).exe' \
&& WINEPREFIX=/home/$USER/Enderal wine /home/$USER/Games/Enderal_Mods/Mod.Organizer-2.5.2.exe \
&& cp enderal.sh /home/$USER/ \
&& WINEPREFIX=/home/$USER/Enderal wine /home/$USER/Games/Enderal_Mods/loot_0.24.0-win64.exe \
&& WINEPREFIX=/home/$USER/Enderal wine /home/$USER/Games/Enderal_Mods/Wrye.Bash.312.1.-.Installer.exe \
&& 7za e -y 'SSEEdit 4.1.5f-164-4-1-5f-1714283656.7z' -o/home/$USER/Enderal/drive_c/xedit \
&& 7za x skse64_2_02_06_gog.7z \
&& cp -R /home/$USER/Games/Enderal_Mods/skse64_2_02_06_gog/{skse64_1_6_1179.dll,skse64_loader.exe,Data} /home/$USER/Enderal/drive_c/'GOG Games'/'Skyrim Anniversary Edition'/ \
&& rm -r /home/$USER/Games/Enderal_Mods/skse64_2_02_06_gog
