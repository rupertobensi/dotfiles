# Monitor settings
# xrandr --output DP-3 --primary --mode 2560x1440 --rate 180
# xrandr --output HDMI-0 --mode 1920x1080 --left-of DP-3 --rate 60.00

# Disable monitor 2
# xrandr --output HDMI-0 --off

# Disable dpm for my radeon r9 280 using radcard script
radcard set high

# Fix hinting outside of PLASMA/GNOME
# xrdb -merge .Xresources &
# xrdb -merge .Xdefaults &

# Apply pywal at the startup
# wal -R

#Load Xresources
xrdb ~/.Xresources

# Run rebinds script (xset, swap caps)
rebinds &

# Hide mouse cursor after X seconds
unclutter -idle 3 &

# i3_lock after a time period (minutes) of inactivity
# exec xautolock -time 20 -locker 'i3_lock' &

# Disable energy saving
xset -dpms
xset s off

# Should be last
# Start i3wm/KDE plasma
# exec startplasma-x11
exec i3
