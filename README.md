# Adjust monitors positions and hz in hyperland 
* I am tired of rebooting my system each time I'm connected to a new monitor using HDMI, I didn't know that hyperland configure this in `~/.config/hypr/monitors.conf`,
* So I made this script to adjust that to what ever I need using `hyprctl keyword monitor` 
* This script just deal with one monitor connected at "HDMI-A-3", as I just have one monitor, If I needed more I will edit the script.

## Needs to add later 

* Change the up/down/left/right based on the first monitor position, so if the first monitor is 1800x1080 instead of 1920x1080 I need to move the second monitor next to it, so instead of Right:1920x0 -> 1800x0, the default right now is 1920 as X(horizontal) and 1080 Y(vertical).


* Enter scale 
* Choose the port: HDMI-A-3, or what ever else.
