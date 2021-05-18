
set -P

unset keySourceLocation keyTargetLocation sourceLocation

# functions

[ -r ~/.functions ] && . ~/.functions

# User specific aliases

unalias -a

[ -r ~/.alias ] && . ~/.alias

# Exports

[ -r ~/.exports ] && . ~/.exports

# Set system defualts

[ -r ~/.defaults ] && . ~/.defaults

# symlinks

[ -r ~/.symlinks ] && . ~/.symlinks

[ -r ~/.gpg_config ] && . ~/.gpg_config

# Timer

trap 'timer_start' DEBUG

# Prompt

[ -r ~/.prompts ] && . ~/.prompts &&
  export PROMPT_COMMAND="__prompt_command" &&
  export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Source global definitions

[ -r /etc/bashrc ] && . /etc/bashrc

# paths

[ -r ~/.path ] && . ~/.path

# paths

[ -r ~/git-completion.bash ] && . ~/git-completion.bash



# GPG

[ -r ~/.gpg_config ] && . ~/.gpg_config

# please forward my keys

[ -r ~/.keys ] && . ~/.keys

# git cusstomizations

[ -r ~/.git_config ] && . ~/.git_config

# autocomplete settings

[ -r ~/.autocomplete ] && . ~/.autocomplete

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash


 [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# trap "source $(brew --prefix)/etc/bash_completion ; trap USR1" USR1
# { sleep 0.1 ; builtin kill -USR1 $$ ; } & disown

# added by pipsi (https://github.com/mitsuhiko/pipsi)
export PATH="/Users/phaedrus/.local/bin:$PATH"

#OktaAWSCLI
if [[ -f "$HOME/.okta/bash_functions" ]]; then
    . "$HOME/.okta/bash_functions"
fi
if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
    PATH="$HOME/.okta/bin:$PATH"
fi
