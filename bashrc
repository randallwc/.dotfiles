# ~/.bashrc
#     __      __  ______
#    /\ \  __/\ \/\  __  \
#    \ \ \/\ \ \ \ \ \_\  \
#     \ \ \ \ \ \ \ \  _  /
#      \ \ \_/ \_\ \ \ \\  \
#       \ \____^___/\ \_\ \_\
#         \/__//__/  \/_/\/_/
################################################################################
# set up prompt
export STARSHIP_CONFIG=~/.dotfiles/starship-bash.toml
eval "$(starship init bash)"

# alias to source .zshrc
alias src='[ -r ~/.bashrc ] && source ~/.bashrc'

# stop the warn
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

# brew completion
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
    fi
fi
