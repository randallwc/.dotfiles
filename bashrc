# set up prompt (time machine_name current_directory)
# _RED=$(tput setaf 1)
# _GREEN=$(tput setaf 2)
# _YELLOW=$(tput setaf 3)
# _BLUE=$(tput setaf 4)
# _MAGENTA=$(tput setaf 5)
# _CYAN=$(tput setaf 6)
# _WHITE=$(tput setaf 7)
# _RESET=$(tput sgr0)
# _BOLD=$(tput bold)
# export PS1="${_YELLOW}\t ${_CYAN}\u ${_BLUE}\h ${_WHITE}\$? ${_MAGENTA}\W ${_WHITE}\\$ ${_RESET}"
export PS1="\t \u \h $? \W \\$ "

# alias to source .zshrc
alias src='source ~/.bashrc'

# stop the warn
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
source ~/.dotfiles/aliasrc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
