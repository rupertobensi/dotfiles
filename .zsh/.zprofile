#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec sway
#  #exec startx
#fi

#if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  #exec XDG_CURRENT_DESKTOP=sway dbus-run-session sway --unsupported-gpu
#  exec dbus-run-session sway --unsupported-gpu
#  #exec sway
#fi


# Firefox wayland:
# if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
#     export MOZ_ENABLE_WAYLAND=1
# fi


