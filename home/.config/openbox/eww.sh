#!/bin/bash

if [[ $1 = "--profile" ]]; then
eww close profile && eww close greeting && eww close time && eww close volume && eww close brightness || eww open-many profile greeting time volume brightness
fi

if [[ $1 = "--keybinds" ]]; then
eww close keybinds || eww open keybinds
fi
