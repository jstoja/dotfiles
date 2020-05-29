source ~/.git-completion.sh
source ~/.git-prompt.sh
export PS1='\[\033[032m\]\[\033[0m\033[0;32m\]\[\033[032m\]\u@\h\[\033[00m\]:\[\033[034m\]\w\[\033[00m\]$(__git_ps1)$ '

#export TERM=screen-256color
export LANG=en_US.UTF-8

alias ls="ls -G"
alias ll="ls -lahG"
alias vim="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# the number of commands to remember in the command history (the default value is 500).
export HISTSIZE=10000
# the maximum number of lines contained in the history file (the default value is 500).
export HISTFILESIZE=10000

# To append commands to the history file, rather than overwrite it, add the following line to ~/.bashrc:
shopt -s histappend

# By default, Bash only records a session to the .bash_history file when the session terminates.
PROMPT_COMMAND='history -a'
#PROMPT_COMMAND='$PROMPT_COMMAND; history -a'

# Don't store commands starting with space + remove duplicate commands
export HISTCONTROL=ignorespace:erasedups

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

eval "$(rbenv init -)"
eval "$(pyenv init -)"

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
