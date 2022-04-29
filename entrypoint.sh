#!/bin/sh

if [ -f /config/sshd_config ]; then
	cp /config/sshd_config /etc/ssh/sshd_config
fi

ssh-keygen -A
exec "$@"
