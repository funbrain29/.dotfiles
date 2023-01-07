#!/usr/bin/bash

# timeout in minutes
DESKTOP_SCREEN=999999
DESKTOP_SLEEP=999999
LAPTOP_SCREEN=999999
LAPTOP_SLEEP=999999

pkill xautolock
pkill xss-lock

if [[ ! -z $(echo $HOST | grep funtop) ]]; then
  SCREEN=$(( LAPTOP_SCREEN * 60 )) # converted to seconds
  SLEEP=$LAPTOP_SLEEP
else
  SCREEN=$(( DESKTOP_SCREEN * 60 )) # converted to seconds
  SLEEP=$DESKTOP_SLEEP
fi

/usr/bin/xset dpms $SCREEN
/usr/bin/xautolock -time $SLEEP -locker "systemctl suspend" & disown
/usr/bin/xss-lock -- "$HOME/.config/i3/lock.sh" & disown

