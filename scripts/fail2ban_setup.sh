#!/usr/bin/bash
# coding: utf-8

set -e

# Must be run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with sudo/root privileges."
    exit 1
fi

if ! systemctl list-units --type=service --all | grep -q 'ssh.service'; then
	echo "SSH Server is either not installed or not running"
	exit 0
fi

echo "🔐 Setting up Fail2ban"

apt update && apt install -y fail2ban

systemctl enable fail2ban
systemctl start fail2ban

if [[ ! -f /etc/fail2ban/jail.local ]]; then
    cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
fi

# Reload Fail2Ban
systemctl restart fail2ban
