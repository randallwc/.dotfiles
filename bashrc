# set up prompt (time machine_name current_directory)
export PS1="\t \u \h $? \W \\$ "

# alias to source .zshrc
alias src='[ -r ~/.bashrc ] && source ~/.bashrc'

# stop the warn
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
[ -r ~/.dotfiles/aliasrc ] && . ~/.dotfiles/aliasrc

# source bash_profile
# TODO -- check if should just move the conda stuff in here
[ -r ~/.bash_profile ] && . ~/.bash_profile
