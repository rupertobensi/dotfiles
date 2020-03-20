rupertobensi's dotfiles
===================

In this repository I've gather all of my essential dotfiles. I use i3 as my 
tiling window manager, rofi + dmenu2 as launchers, polybar, customized gpakosz's 
tmux and finally a zpresto's zsh as my current shell.

My terminal emulator preferences are suckless terminal/tilix in that order.

![current setup](desktop.png)
![+1](desktop2.png)
![pywal](desktop3.png)
How to deploy this very setup?
-----------------

I've found GNU Stow to be the easiest program to help with it. Simply clone
these .dotfiles, cd into .dotfiles and use command:
``` stow . ```
This will create symlinks in the same architecture as my .dotfiles.


[1]: https://github.com/gpakosz/.tmux
[2]: https://github.com/sorin-ionescu/prezto
[3]: https://www.gnu.org/software/stow/
