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


## SYSTEM SPECIFIC SECTION BELOW:

### macOS shenanigans
# export PATH=/opt/homebrew/bin:$PATH

# Windows shenanigans
# sudo chmod -R 777 /mnt/e/Robert/DROPBOX/Linux > /dev/null 2>&1
# auto startx at login

# COMMENT IT OUT on debian! Or on fresh install
# if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#   exec startx
# fi

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
