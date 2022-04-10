#!/usr/bin/env bash
files="vimrc zshrc zprofile bashrc profile gitconfig gitignore_global condarc bash_profile ideavimrc pylintrc"
repositories="randallwc.github.io 180DA-WarmUp"

echo "making simlinks in home dir"
for file in $files; do
    if [[ "$1" == "--force" ]]; then
        echo "force rewrite of simlinks for file $file"
        ln -fs ~/.dotfiles/"$file" ~/."$file"
    else
        if ln -s ~/.dotfiles/"$file" ~/."$file"; then
            echo "SUCCESS: linked file $file"
        else
            echo "FAIL: was not able to link $file"
        fi
    fi
done
unset file

# if github dir does not exist
if [[ "$1" == "--github" ]]; then
    if [[ ! -d ~/Github/ ]]; then
        echo "making GitHub in home directory"
        mkdir ~/GitHub/
        cd ~/GitHub/ || exit 1
        if git --version >/dev/null 2>&1; then
            echo "FAIL: git not installed"
            exit 1
        fi
        for repo in $repositories; do
            echo "DEBUG: cloning $repo ..."
            if git clone git@github.com:randallwc/"$repo"; then
                echo "FAIL: error occured in git clone"
                rmdir ~/GitHub
                exit 1
            fi
        done
        unset repo
    else
        echo "FAIL: ~/Github/ exists"
    fi
fi

unset files
unset repositories
