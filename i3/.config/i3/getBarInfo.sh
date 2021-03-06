#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
    read line
    CURRENT_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
    MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
    BRIGHTNESS_PERCENT=$(printf "%d%%" $((CURRENT_BRIGHTNESS*100/MAX_BRIGHTNESS)))
	info="🔆$BRIGHTNESS_PERCENT  💧$(free -h | grep Mem | awk '{ print $3 }')"
    # echo "➡️ $info - ${line} ⬅️" || exit 1
    echo " 💧$(free -h | grep Mem | awk '{ print $3 }') `echo $line|sed 's#|##g'` 🔆$BRIGHTNESS_PERCENT " || exit 1
    sleep 1
done


