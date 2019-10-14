#!/bin/bash 
sleep 0.2 
notify-send -t 1200 $(xset q | grep "Caps Lock:" | awk '{print $2$3$4}')
