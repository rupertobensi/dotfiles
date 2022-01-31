#!/bin/bash
# in cmus, type   :bind -f common u shell ~/Applications/cmus-osx/update-library.sh
cmus-remote -C clear
cmus-remote -C "add /mnt/d/[media]/[music]/albums"
cmus-remote -C "update-cache -f"
