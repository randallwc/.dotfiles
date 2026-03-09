# ~/.zshrc

# fzf
source <(fzf --zsh)

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
  alias gr='cd $(git rev-parse --show-toplevel)'
  alias grep='grep --color=auto'
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
