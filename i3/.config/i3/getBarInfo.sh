#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
do
        read line
	info="🔆 $( light ) ⛔ $(free -m | grep Mem | awk '{ print $3 }')"
        echo "➡️ $info - $line ⬅️" || exit 1
done


