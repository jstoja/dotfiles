export LANG=en_US.UTF-8

# TODO: Add hostname condition to support yubikey
#export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/yubikey-agent/yubikey-agent.sock"

if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval `ssh-agent -s`
fi
