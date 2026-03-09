# ~/.zshrc

# zsh settings
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -e # emacs mode

# fzf integration
source <(fzf --zsh)
[[ $- =~ i ]] && bindkey -r '\ec' # unbind <m-c> because <esc>c is often pressed

# zsh tab completion
# https://zsh.sourceforge.io/Doc/Release/Completion-Widgets.html#Completion-Matching-Control
# https://thevaluable.dev/zsh-completion-guide-examples/
# https://mybyways.com/blog/macos-zsh-configuration
# add other completion systems
zstyle ':completion:*' completer _extensions _complete _approximate
# case-insensitive matching only if there are no case-sensitive matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# tab complete select visually
zstyle ':completion:*' menu select verbose yes
# color of directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# color of descriptions
zstyle ':completion:*:*:*:*:descriptions' format '%F{cyan}%B-- %d --%b%f'
# explain corrections
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}%B-- %d (%e) --%b%f'
# show messages
zstyle ':completion:*:messages' format '%F{purple}%B-- %d --%b%f'
# show when there are no matches
zstyle ':completion:*:warnings' format '%F{magenta}%B-- no matches found --%b%f'
# group the different type of matches under their descriptions
zstyle ':completion:*' group-name ''
# change type of list depending on how many matches
zstyle ':completion:*' file-list list=20 insert=10
# shift tab tab completes backwards
bindkey '^[[Z' reverse-menu-complete
# brew completion
if type brew &>/dev/null
then
    # FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
    case ":$FPATH:" in
        *:$(brew --prefix)/share/zsh/site-functions:*) ;;
        *) FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}" ;;
    esac
fi
# initialize advanced tab completion
autoload -Uz compinit && compinit
# add auto complete of dot files
_comp_options+=(globdots)
# tab completion with highlighting
zmodload -i zsh/complist

# brew
export PATH="/opt/homebrew/opt/avr-gcc@8/bin:$PATH"
export PATH="/opt/homebrew/opt/arm-none-eabi-binutils/bin:$PATH"
export PATH="${HOME}/Developer/dotfiles/bin:$PATH"

# utils
checkcmd() {
  if ! command -v "$1" >/dev/null; then
    echo "download $1 to use aliases"
    echo "  brew install $1"
    return 1
  fi
  return 0
}

# aliases
if checkcmd tmux ||
  checkcmd fzf ||
  checkcmd nvim ||
  checkcmd jq ||
  checkcmd git; then

  alias desk='cd ~/Desktop/'
  alias dev='cd ~/Developer/'
  alias doc='cd ~/Documents/'
  alias dot='cd ~/Developer/dotfiles/'
  alias down='cd ~/Downloads/'
  alias ga='git add'
  alias gaa='git add -A'
  alias gc='git commit'
  alias gca='git commit --amend'
  alias gcm='git commit -m'
  alias gd='git diff'
  alias gds='git diff --staged'
  alias gl='git log'
  alias glo='git log --oneline'
  alias gpl='git pull'
  alias gpu='git push'
  alias gr='cd $(git rev-parse --show-toplevel)'
  alias grep='grep --color=auto'
  alias gs='git status --short'
  alias gst='git status'
  alias l.='ls --color=always -Ald .* | awk "{print \$9 \$10 \$11}"'
  alias l='ls -AF'
  alias la='ls -Ga'
  alias ll='ls -Gl'
  alias ll='ls -lF'
  alias lll='ls -AlF'
  alias ls='ls -G'
  alias ta='tmux attach -d -t "$( tmux list-sessions | ( fzf --select-1 --exit-0; (( $? == 130 )) && echo "NO_SESSION_CHOSEN" ) | cut -d: -f1)"'
  alias tk='tmux kill-session -t "$( tmux list-sessions | ( fzf --select-1 --exit-0; (( $? == 130 )) && echo "NO_SESSION_CHOSEN" ) | cut -d: -f1)"'
  alias tns='tmux new-session -s'
  alias tsw='tmux switch-client -t "$( tmux list-sessions | ( fzf --select-1 --exit-0; (( $? == 130 )) && echo "NO_SESSION_CHOSEN" ) | cut -d: -f1)"'
  alias vi='nvim'
  alias vim='nvim'

fi

# zsh autocomplete and syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
# set | grep ZSH_HIGHLIGHT_STYLES | tr " " '\n'
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# MUST BE AT END
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=green'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=magenta'
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
