#!/bin/bash
FILES="bashrc vimrc vim"

mkdir -p ~/dotfiles_old
cd ~/dotfiles

for FILE in $FILES; do
	mv ~/.$FILE ~/dotfiles_old
	ln -s ~/dotfiles/$FILE ~/.$FILE
done
