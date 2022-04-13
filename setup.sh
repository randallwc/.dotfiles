#!/usr/bin/env bash
files="vimrc zshrc zprofile bashrc profile gitconfig gitignore_global condarc bash_profile ideavimrc pylintrc"
repositories="randallwc.github.io 180DA-WarmUp"

colorprint() {
    case $2 in
        blue) TEMP_COLOR="\033[0;34m" ;;
        red) TEMP_COLOR="\033[0;31m" ;;
        green) TEMP_COLOR="\033[0;32m" ;;
        dgray) TEMP_COLOR="\033[1;30m" ;;
        lgray) TEMP_COLOR="\033[0;37m" ;;
        *) echo "invalid color" && exit 1 ;;
    esac
    echo -e "${TEMP_COLOR}$1\033[0m"
    unset TEMP_COLOR
}

colorprint "making simlinks in home dir" dgray
for file in $files; do
    if [[ "$1" == "--force" ]]; then
        colorprint "FORCED: link $file to ~/.dotfiles/$file" blue
        ln -fs ~/.dotfiles/"$file" ~/."$file"
    else
        if ln -s ~/.dotfiles/"$file" ~/."$file" 2> /dev/null; then
            colorprint "SUCCESS: linked $file to ~/.dotfiles/$file" green
        else
            colorprint "[$?] FAIL: on linking $file to ~/.dotfiles/$file" red
        fi
    fi
done
unset file

# if github dir does not exist
if [[ "$1" == "--github" ]]; then
    if [[ ! -d ~/Github/ ]]; then
        colorprint "making GitHub in home directory" dgray
        mkdir ~/GitHub/
        cd ~/GitHub/ || exit 1
        if git --version >/dev/null 2>&1; then
            colorprint "FAIL: git not installed" red
            exit 1
        fi
        for repo in $repositories; do
            colorprint "DEBUG: cloning $repo ..." dgray
            if git clone git@github.com:randallwc/"$repo"; then
                colorprint "FAIL: error occured in git clone" red
                rmdir ~/GitHub
                exit 1
            fi
        done
        unset repo
    else
        colorprint "FAIL: ~/Github/ exists" red
    fi
fi

unset files
unset repositories
