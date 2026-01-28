#!/bin/bash

#monitor=NAME,RESOLUTION@REFRESH,POSITION,SCALE

#POSITION means move the monitor to the right of the eDP-1 with same vertical, because eDP-1 is 1920
#+-------------------+-------------------+
#|    eDP-1          |   HDMI-A-3        |
#| 1920x1080         | 1920x1080         |
#+-------------------+-------------------+
#0x0              1920x0

# SCALE means 1 -> 100%(Normal), 1.25 -> 125% ,...

while true; do
  read -p "Enter the hz for the screen, Ex. 60 for 60hz: " hirtz
  if [[ -n "$hirtz" ]]; then
    break
  fi
  echo "Hirtz can't be empty!!"

done

while true; do
  read -p "Enter the Dimensions for the screen, Ex. 1920x1080: " dimensions
  if [[ -n "$dimensions" ]]; then
    break
  fi
  echo "Dimensions can't be empty!!"

done
#postion value
value=0

#Loop to apply chosen postion
while true; do
  read -p "Postion of laptop screen, right/left/up/down: " postion
  case "$postion" in
  right)
    value=1920x0
    break
    ;;
  left)
    value=-1920x0
    break
    ;;
  up)
    value=0x-1080
    break
    ;;
  down)
    value=0x1080
    break
    ;;
  *)
    "Enter valid input right/left/up/down"
    ;;
  esac
done

hyprctl keyword monitor HDMI-A-3,"${dimensions}"@"${hirtz}","${value}",1
