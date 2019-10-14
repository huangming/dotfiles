UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \') 
CURRENT_TRANSPARENCY=$(gsettings get org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ background-transparency-percent)
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ use-transparent-background false

