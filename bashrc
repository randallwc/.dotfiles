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
