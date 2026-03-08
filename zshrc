source <(fzf --zsh)
export PATH="/opt/homebrew/opt/avr-gcc@8/bin:$PATH"
export PATH="/opt/homebrew/opt/arm-none-eabi-binutils/bin:$PATH"

alias ls='ls -G'
alias ll='ls -Gl'
alias la='ls -Ga'

alias vim='nvim'
alias vi='nvim'

# functions #

find-json() {
  local substr="$1"
  local file="$2"
  if [[ -z "$substr" || -z "$file" ]]; then
    echo "Usage: find-json <substring> <file.json>"
    return 1
  fi
  jq --arg substr "$substr" '
    paths as $p
    | select(
      (getpath($p) | type) == "string"
      and (getpath($p) | test($substr))
    )
    | $p
  ' "$file"
}

find-file-types-recursively() {
  local dir="$1"
  if [[ -z "$dir" ]]; then
    echo "Usage: find-file-types-recursively <dir>"
    return 1
  fi
  find "$dir" -type file -print | sed -E 's/.*(\.[A-Za-z0-9]+)/\1/g' | sort -u
}

delete-ds-store-recursively() {
  local dir="$1"
  if [[ -z "$dir" ]]; then
    echo "Usage: delete-ds-store-recursively <dir>"
    return 1
  fi
  echo 'finding...'
  find "$dir" -name '.DS_Store'-type file -print
  echo 'deleting...'
  find "$dir" -name '.DS_Store'-type file -delete
  echo 'checking...'
  find "$dir" -name '.DS_Store'-type file -print
  echo 'done'
}


