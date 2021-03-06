#!/bin/sh
# shell script to prepend i3status with more stuff

ifaces=$(ls /sys/class/net | grep -E '^(eth|wlan|enp|wlp)')

last_time=0
last_rx=0
last_tx=0
rate=""

readable() {
  local bytes=$1
  local kib=$(( bytes >> 10 ))
  if [ $kib -lt 0 ]; then
    echo "?K"
  elif [ $kib -gt 1024 ]; then
    local mib_int=$(( kib >> 10 ))
    local mib_dec=$(( kib % 1024 * 976 / 10000 ))
    if [ "$mib_dec" -lt 10 ]; then
      mib_dec="0${mib_dec}"
    fi
    echo "${mib_int}.${mib_dec}M"
  else
    echo "${kib}K"
  fi
}

update_rate() {
  local time=$(date +%s)
  local rx=0 tx=0 tmp_rx tmp_tx

  for iface in $ifaces; do
    read tmp_rx < "/sys/class/net/${iface}/statistics/rx_bytes"
    read tmp_tx < "/sys/class/net/${iface}/statistics/tx_bytes"
    rx=$(( rx + tmp_rx ))
    tx=$(( tx + tmp_tx ))
  done

  local interval=$(( $time - $last_time ))
  if [ $interval -gt 0 ]; then
    rate="$(readable $(( (rx - last_rx) / interval )))↓ $(readable $(( (tx - last_tx) / interval )))↑"
  else
    rate=""
  fi

  last_time=$time
  last_rx=$rx
  last_tx=$tx
}


# i3status | while :
i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_rate && while :
do
    read line
    update_rate
    CURRENT_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/brightness)
    MAX_BRIGHTNESS=$(cat /sys/class/backlight/intel_backlight/max_brightness)
    BRIGHTNESS_PERCENT=$(printf "%d%%" $((CURRENT_BRIGHTNESS*100/MAX_BRIGHTNESS)))
	info="🔆$BRIGHTNESS_PERCENT  💧$(free -h | grep Mem | awk '{ print $3 }')"
    # echo "➡️ $info - ${line} ⬅️" || exit 1
    echo " 🌊`printf "%10s" "$rate"` 💧$(free -h | grep Mem | awk '{ print $3 }') `echo $line|sed 's#|##g'` 🔆$BRIGHTNESS_PERCENT " || exit 1
    # sleep 1
done)


