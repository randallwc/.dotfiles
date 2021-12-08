# ~/.zshrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# SET UP PROMPT
################################################################################
autoload -U colors && colors # enable colors
# left prompt
export PROMPT='%F{cyan}%7>>%n%>>%f %F{magenta}%1~%f%<< %(?..%F{red}%? %f)%# '
# right prompt
export RPROMPT='%F{yellow}%*%f'

################################################################################
# TAB COMPLETION
################################################################################
# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# tab complete select visually
zstyle ':completion:*' menu select
# shift tab tab completes backwards
bindkey '^[[Z' reverse-menu-complete
# initialize advanced tab completion
autoload -Uz compinit && compinit
# tab completion with highlighting
zmodload -i zsh/complist

################################################################################
# ALIASES
################################################################################
# alias to source .zshrc
alias src='[ -r ~/.zshrc ] && . ~/.zshrc'
# make bash help command work in zsh
help() { bash -c "help $1" }
# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

################################################################################
# CONDA
################################################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/williamrandall/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/williamrandall/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/williamrandall/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/williamrandall/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

################################################################################
# ITERM2 SHELL INTEGRATION
################################################################################
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
