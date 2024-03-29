#! /usr/bin/env bash
# ~/.bashrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# PROMPT
################################################################################
export STARSHIP_CONFIG=~/.dotfiles/starship-bash.toml
eval "$(starship init bash)"

################################################################################
# TERMINAL SETTINGS
################################################################################
alias src='[ -r ~/.bashrc ] && source ~/.bashrc'
export BASH_SILENCE_DEPRECATION_WARNING=1
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

################################################################################
# BREW COMPLETION
################################################################################
if type brew &>/dev/null
then
    HOMEBREW_PREFIX="$(brew --prefix)"
    if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
    then
        source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
    else
        for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
        do
            [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
        done
        unset COMPLETION
    fi
fi

################################################################################
# FZF
################################################################################
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
