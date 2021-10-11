#!/usr/bin/env bash

echo "making simlinks in home dir"

for file in vimrc zshrc gitconfig gitignore_global;
do
	ln -s ~/.dotfiles/$file ~/.$file
done

if [ $? -eq 0 ]
then
	echo "finished making simlinks in home dir"
	exit 0
else
	echo "something went wrong making simlinks"
	exit 1
fi
