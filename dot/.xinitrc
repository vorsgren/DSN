#!/bin/bash

xrandr --output eDP1 --primary --mode 1920x1080 --output HDMI1 --mode 1920x1080 --left-of eDP1 
xrdb ~/.Xresources
~/.fehbg &
exec fvwm3
