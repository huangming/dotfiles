docker run \
  --name DoChat \
  --rm \
  -i \
  \
  -v "$HOME/Documents/WeChatFiles/":'/home/user/WeChat Files/' \
  -v "$HOME/Documents/WeChatData":'/home/user/.wine/drive_c/users/user/Application Data/' \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  \
  -e DISPLAY \
  \
  -e XMODIFIERS=@im=fcitx \
  -e GTK_IM_MODULE=fcitx \
  -e QT_IM_MODULE=fcitx \
  -e GID="$(id -g)" \
  -e UID="$(id -u)" \
  \
  --ipc=host \
  --privileged \
  \
  zixia/wechat
