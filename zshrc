# set up prompt (time machine_name current_directory)
export PROMPT='%F{yellow}%*%f %F{cyan}%n%f %F{blue}%m%f %F{white}%?%f %F{magenta}%1~%f %# '

# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# initialize advanced tab completion
autoload -Uz compinit && compinit

# alias to source .zshrc
alias src='source ~/.zshrc'

# aliases
source ~/.dotfiles/aliasrc

# notes
# esc-q -- stash command

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

