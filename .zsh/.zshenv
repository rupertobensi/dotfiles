# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Allows scripts to run
export XDG_BIN_HOME="$HOME/.local/bin"

typeset -U path
path=($XDG_BIN_HOME $path)

# Default programs:

export EDITOR="nvim"
export VISUAL=$EDITOR
export TERMINAL="alacritty"
# export TERMINAL="st"
# export TERMINAL="qterminal"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"
export MANPAGER="nvim +Man!"
# export MANWIDTH=999
if (( $+commands[diff-so-fancy] )); then
  export GIT_PAGER="diff-so-fancy | $PAGER"
elif (( $+commands[diff-highlight] )); then
  export GIT_PAGER="diff-highlight | $PAGER"
fi

# Language

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# extra condition so krusader in i3 has proper date formatting:
export LC_TIME=en_GB.UTF-8
# export LC_TIME=en_IE.UTF-8


## SYSTEM SPECIFIC SECTION BELOW:

### macOS shenanigans
# export PATH=/opt/homebrew/bin:$PATH

export XDG_SESSION_TYPE=wayland 
export XDG_CURRENT_DESKTOP=sway
export MOZ_ENABLE_WAYLAND=1


# systemctl --user stop pipewire pipewire-media-session xdg-desktop-portal xdg-desktop-portal-wlr
# systemctl --user start pipewire-media-session
# should print XDG_CURRENT_DESKTOP=$sway
# < "/proc/$(pidof xdg-desktop-portal)/environ" tr '\0' '\n' | grep '^XDG_CURRENT_DESKTOP=' 

# dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
# systemctl --user stop pipewire pipewire-media-session xdg-desktop-portal xdg-desktop-portal-wlr\nsystemctl --user start pipewire-media-session
