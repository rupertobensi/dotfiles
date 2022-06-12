# Default programs:

export EDITOR="nvim"
export VISUAL="nvim"
# export TERMINAL="alacritty"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"

# Language

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi


# extra condition so krusader in i3 has proper date formatting:
export LC_TIME=en_IE.UTF-8

# auto startx at login
# COMMENT IT OUT on debian! Or on fresh install
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

