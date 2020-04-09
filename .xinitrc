# Disable monitor 2
xrandr --output HDMI-1 --primary --rate 60 --mode 1920x1080 --output DVI-I-1 --off
#xrandr --output DVI-I-1 --off

# run rebinds script to swap caps etc.
rebinds &

# Hide mouse cursor after 2 seconds
unclutter -idle 2 &

#exec startplasma-x11
exec i3

# ssh-keychain
#eval "$(ssh-agent -s)"

# for the font size to be right on every resolution/dpi (alacritty) 
#WINIT_X11_SCALE_FACTOR=1

#xrdb -merge .Xdefaults &
#fbset -xres 1920 -yres 1080
