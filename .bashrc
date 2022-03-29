[ -z "$PS1" ] && return

export LANG=en_US.UTF-8

alias ls="ls -G"
alias ll="ls -lahG"
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

complete -C /usr/local/bin/terraform terraform

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

if command -v dircolors > /dev/null 2>&1; then
	source <(dircolors)
fi

export ANSIBLE_CONFIG=$HOME/.ansible.cfg

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
	source "${VIRTUAL_ENV}/bin/activate"
fi

[ -f .secrets ] && source ~/.secrets

source ~/.git-completion.sh
source ~/.git-prompt.sh
export PS1='$(date -Iseconds) \[\033[032m\]\[\033[0m\033[0;32m\]\[\033[032m\]\u@\h\[\033[00m\]:\[\033[034m\]\w\[\033[00m\]$(__git_ps1)$ '

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
