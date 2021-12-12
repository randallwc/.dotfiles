# ~/.zprofile

################################################################################
# HOMEBREW
################################################################################
eval "$(/opt/homebrew/bin/brew shellenv)"

case ":$PATH:" in
    *:/usr/local/sbin:*) ;;
    *) export PATH="/usr/local/sbin:$PATH";;
esac
