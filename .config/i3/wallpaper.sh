#!/bin/bash

# WALLPAPER="$HOME/.wallpapers/christ-fishermen"
WALLPAPER="$HOME/.wallpapers/lost-between"
# WALLPAPER="$HOME/.wallpapers/tokyo-night"

if [[ ! -z $(xrandr | grep "Virtual1 connected") ]]; then
  feh --no-fehb \
    --bg-center $WALLPAPER.2560x1080.jpg \
    & disown

elif [[ ! -z $(xrandr | grep "eDP connected") ]]; then
  feh --no-fehb \
    --bg-center $WALLPAPER.1920x1080.jpg \
    & disown
fi

