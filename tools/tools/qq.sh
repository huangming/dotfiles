  docker run -d --name qq \
    --device /dev/snd \
    -v $HOME/Documents/TencentFiles:/TencentFiles \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
    -e XMODIFIERS=@im=ibus \
    -e QT_IM_MODULE=ibus \
    -e GTK_IM_MODULE=ibus \
    -e DISPLAY=unix$DISPLAY \
    -e AUDIO_GID=`getent group audio | cut -d: -f3` \
    -e VIDEO_GID=`getent group video | cut -d: -f3` \
    -e GID=`id -g` \
    -e UID=`id -u` \
    --name qq \
    bestwu/qq
    # bestwu/qq:office
