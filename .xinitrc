# Disable monitor 2
#xrandr --output HDMI-A-0 --primary --rate 60 --mode 1920x1080 --output DVI-I-0 --off
xrandr --output DVI-I-0 --off

# Disable dpm for my radeon r9 280 using radcard script
radcard set high

# Fix hinting outside of PLASMA/GNOME
xrdb -merge .Xdefaults &

# Apply pywal at the startup
wal -R

# run rebinds script to swap caps etc.
rebinds &

# Hide mouse cursor after X seconds
unclutter -idle 3 &

# i3lock after a time period of inactivity
exec xautolock -time 5 -locker 'i3_lock' &

# Start i3wm/KDE plasma
#exec startplasma-x11
exec i3


# for the font size to be right on every resolution/dpi (alacritty)
#WINIT_X11_SCALE_FACTOR=1
#
#fbset -xres 1920 -yres 1080
