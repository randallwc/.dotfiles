#!/usr/bin/env bash
files="vimrc zshrc bashrc gitconfig gitignore_global"
repositories="CSM152A CSM148"

echo "making simlinks in home dir"
for file in $files;
do
	if [[ "$1" -eq "--force" ]]
	then
		echo "force rewrite of simlinks"
		ln -fs ~/.dotfiles/$file ~/.$file
	else
		ln -s ~/.dotfiles/$file ~/.$file
	fi
done

if [[ ! -d ~/Github/ ]]
then
	echo "making GitHub in home directory"
	mkdir ~/GitHub/
	cd ~/GitHub/
	git --version >/dev/null 2>&1
	if [[ $? -ne 0 ]]
	then
		echo "git not installed"
		exit 1
	fi
	for repo in $repositories
	do
		git clone git@github.com:randallwc/$repo
	done
fi
