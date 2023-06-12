#!/bin/zsh
swayidle -w timeout 1200 'swaylock -f -u -c 050505' timeout 1500 'wlopm --off "*"' resume 'wlopm --on "*"' before-sleep 'swaylock -f -u -c 050505'
