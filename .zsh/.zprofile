#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec sway
#  #exec startx
#fi

if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi


# Firefox wayland:
# if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
#     export MOZ_ENABLE_WAYLAND=1
# fi


