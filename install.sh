#!/bin/bash
FILES="bashrc Xresources config/nvim config/compton.conf tmux.conf mutt/muttrc"

mkdir -p ~/dotfiles_old
cd ~/dotfiles

for FILE in $FILES; do
	if [ -e ~/.$FILE ]; then
		mv ~/.$FILE ~/dotfiles_old
	fi
	ln -s ~/dotfiles/$FILE ~/.$FILE
done
