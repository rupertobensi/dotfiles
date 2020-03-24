#!/bin/sh

cd $HOME/.dotfiles/
git add -u

echo "What comment?"
read comment
git commit -m "$comment"

git push -u origin master
