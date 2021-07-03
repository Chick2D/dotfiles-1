#!/bin/bash
WALL=$(cat /home/andrewk/.config/nitrogen/bg-saved.cfg | grep file= | sed -e 's/file=\/home\/andrewk\/Pictures\/Wallpaper/\/usr\/share\/lightdm-webkit\/themes\/arch\/wallpapers/g')
rm /usr/share/lightdm-webkit/themes/arch/wallpapers/currentwall
ln -s $WALL /usr/share/lightdm-webkit/themes/arch/wallpapers/currentwall
