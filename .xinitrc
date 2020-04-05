# Disable monitor 2
xrandr --output DVI-I-1 --off

rebinds &

# Hide mouse cursor after 3 seconds
unclutter -idle 3 &

#exec startplasma-x11
exec i3

#xrdb -merge .Xdefaults &

#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
