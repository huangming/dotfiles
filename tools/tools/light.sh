CURRENT_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
NEW_BRIGHTNESS=$CURRENT_BRIGHTNESS
if [ $1 = "+" ]
then
    NEW_BRIGHTNESS=`expr $CURRENT_BRIGHTNESS + $2`
elif [ $1 = "-" ]
then
    NEW_BRIGHTNESS=`expr $CURRENT_BRIGHTNESS - $2`
else
    NEW_BRIGHTNESS=$2
fi
PERCENT=$(printf "%d%%" $((NEW_BRIGHTNESS*100/MAX_BRIGHTNESS)))
notify-send -t 500 亮度:[$PERCENT]
sudo echo $NEW_BRIGHTNESS > /sys/class/backlight/intel_backlight/brightness 
