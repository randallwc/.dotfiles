#!/usr/bin/env bash
files="vimrc zshrc zprofile bashrc profile gitconfig gitignore_global"
repositories="CSM152A CSM148 CSM148.3 randallwc randallwc.github.io"

echo "making simlinks in home dir"
for file in $files;
do
    if [[ "$1" == "--force" ]]
    then
        echo "force rewrite of simlinks for file $file"
        ln -fs ~/.dotfiles/$file ~/.$file
    else
        ln -s ~/.dotfiles/$file ~/.$file
    fi
done

if [[ ! -d ~/Github/ ]]
then
    if [[ "$1" == "--github" ]]
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
            echo "cloning $repo ..."
            git clone git@github.com:randallwc/$repo
            if [[ $? -ne 0 ]]
            then
                echo "error occured in git clone"
                rmdir ~/GitHub
                exit 1
            fi
        done
    fi
fi
