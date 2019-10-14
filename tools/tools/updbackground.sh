#!/bin/bash
wallpaper_path="/home/hm/Nutstore/pictures/collect/wallpapers/01"
sleep_time=15m
if [ "$1" = "loop" ];then
    while :
    do
        # feh --randomize --no-fehbg --bg-scale ~/Pictures/desktop/*
        # feh --randomize --no-fehbg --bg-scale /home/hm/Nutstore/pictures/collect/wallpapers/01/*
        random_num=$(($RANDOM % `find $wallpaper_path -name '*.*'|wc -l`))
        img_path=`find $wallpaper_path -name '*.*'|awk NR==$random_num`
        gsettings set org.gnome.desktop.background picture-uri file://$img_path  # 更换壁纸命令
        sleep $sleep_time
    done
else
    # feh --randomize --no-fehbg --bg-scale $wallpaper_path/*
    random_num=$(($RANDOM % `find $wallpaper_path -name '*.*'|wc -l`))
    img_path=`find $wallpaper_path -name '*.*'|awk NR==$random_num`
    gsettings set org.gnome.desktop.background picture-uri file://$img_path  # 更换壁纸命令
fi

