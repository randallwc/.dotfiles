# set up prompt (time machine_name current_directory)
export PS1="\t \u \h $? \W \\$ "

# alias to source .zshrc
alias src='source ~/.bashrc'

# stop the warn
export BASH_SILENCE_DEPRECATION_WARNING=1

# aliases
source ~/.dotfiles/aliasrc

[ -f ~/.bash_profile ] && . ~/.bash_profile
