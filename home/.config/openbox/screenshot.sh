#!/bin/bash
if [[ $1 = "--full" ]]; then
maim -u $HOME/Pictures/Screenshots/$(date +%F-%H%M%S)_maim.png && notify-send -i image-missing "Screenshot Taken" "Saved to ~/Pictures/Screenshots"
fi

if [[ $1 = "--part" ]]; then
maim -s -u $HOME/Pictures/Screenshots/$(date +%F-%H%M%S)_maim.png && notify-send -i image-missing "Screenshot Taken" "Saved to ~/Pictures/Screenshots"
fi
