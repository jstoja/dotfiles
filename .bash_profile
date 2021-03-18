set -o vi

export PYENV_ROOT="$HOME/.pyenv"

export PATH="$PYENV_ROOT/bin:$PATH"
source "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

if [ -z "$TMUX" ] ; then
	source ~/.bashrc
fi

source ~/.git-completion.sh
source ~/.git-prompt.sh
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PS1='\[\033[032m\]\[\033[0m\033[0;32m\]\[\033[032m\]\u@\h\[\033[00m\]:\[\033[034m\]\w\[\033[00m\]$(__git_ps1)$ '

## History configuration
# To append commands to the history file, rather than overwrite it, add the following line to ~/.bashrc:
shopt -s histappend
# the number of commands to remember in the command history (the default value is 500).
HISTSIZE=100000
# the maximum number of lines contained in the history file (the default value is 500).
HISTFILESIZE=10000000
# By default, Bash only records a session to the .bash_history file when the session terminates.
# append and reload the history after each command
PROMPT_COMMAND="history -a; history -n"
# Don't store commands starting with space + remove duplicate commands
HISTCONTROL=ignorespace:erasedups
# Don't keep in history those commands that aren't useful
HISTIGNORE='ls:ll:cd:pwd:bg:fg:history'

# Is this still needed with alacritty?
#export TERM=screen-256color

alias ls="ls -G --color"
alias ll="ls -lahG --color"
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim="nvim"

export ANSIBLE_CONFIG=$HOME/.ansible.cfg

# Ruby
if command -v rbenv 1>/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# Python
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi
