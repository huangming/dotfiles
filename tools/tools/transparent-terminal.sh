UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \') 
CURRENT_TRANSPARENCY=$(gsettings get org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ background-transparency-percent)
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ use-transparent-background false
NEW_TRANSPARENCY=$CURRENT_TRANSPARENCY
if [ $1 = "+" ]
then
    NEW_TRANSPARENCY=`expr $CURRENT_TRANSPARENCY + $2`
elif [ $1 = "-" ]
then
    NEW_TRANSPARENCY=`expr $CURRENT_TRANSPARENCY - $2`
else
    NEW_TRANSPARENCY=$2
fi
echo $NEW_TRANSPARENCY
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ background-transparency-percent $NEW_TRANSPARENCY
