
[ -r ~/.bashrc ] && . ~/.bashrc

eval "$(goenv init -)"

gam() { "/Users/marcbitt/bin/gam/gam" "$@" ; }

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
