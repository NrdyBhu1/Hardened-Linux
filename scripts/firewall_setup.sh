#!/usr/bin/bash
# coding: utf-8

set -e

# Must be run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run with sudo/root privileges."
    exit 1
fi

echo "🔐 Setting up UFW firewall rules..."

# Default policies
ufw default deny incoming
ufw default allow outgoing

# Allow essential services
ufw allow 22/tcp # ssh
ufw allow 443/tcp # https
ufw allow 80/tcp # http

# Enable logging
ufw logging on

# Enable the firewall
ufw --force enable

echo "✅ UFW firewall configured and enabled."
ufw status verbose
