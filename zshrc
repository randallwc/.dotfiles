# ~/.zshrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# set up prompt (time machine_name current_directory)
export PROMPT='%F{cyan}%5>‣>%n%>>%f %F{blue}%5>‣>%m%>>%f %F{magenta}%1~%f %# '
export RPROMPT='%(?..%F{red}%?%f) %F{yellow}%*%f'

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

# make bash help command work in zsh
help() { bash -c "help $1" }

# alias to source .zshrc
alias src='[ -r ~/.zshrc ] && . ~/.zshrc'

# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

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

# enable zsh iterm2 shell integration
# https://iterm2.com/documentation-utilities.html
# https://iterm2.com/documentation-shell-integration.html
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
