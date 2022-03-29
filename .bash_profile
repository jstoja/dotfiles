if [ -f ~/.bashrc ];
then
	source ~/.bashrc;
fi

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
fi

PATH="/usr/local/sbin:$HOME/.cargo/bin:$HOME/.jenv/bin:$HOME/bin:$HOME/.local/bin:$PATH"
export PATH
export LANG=en_US.UTF-8

eval "$(jenv init -)"
eval "$(rbenv init -)"
eval "$(pyenv init --path)"
