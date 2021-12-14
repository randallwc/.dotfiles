# .profile

################################################################################
# BASHRC
################################################################################
# i dont think this is necessary but it is good practice
# http://mywiki.wooledge.org/DotFiles
[ -n "$BASH" ] && [ -r ~/.bashrc ] && . ~/.bashrc

################################################################################
# PATH
################################################################################
# homebrew
case ":$PATH:" in
    *:/usr/local/sbin:*) ;;
    *) export PATH="/usr/local/sbin:$PATH";;
esac
