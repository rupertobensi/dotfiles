# Disable monitor 2
#xrandr --output HDMI-A-0 --primary --rate 60 --mode 1920x1080 --output DVI-I-0 --off
xrandr --output DVI-I-0 --off

# Disable dpm for my radeon r9 280 using radcard script
radcard set high

# Fix hinting outside of PLASMA/GNOME
#xrdb -merge .Xresources &
#xrdb -merge .Xdefaults &

# Apply pywal at the startup
#wal -R

# run rebinds script to swap caps etc.
rebinds &

# Hide mouse cursor after X seconds
unclutter -idle 3 &

# i3_lock after a time period (minutes) of inactivity
exec xautolock -time 10 -locker 'i3_lock' &

# Should be last
# Start i3wm/KDE plasma
#exec startplasma-x11
exec i3
