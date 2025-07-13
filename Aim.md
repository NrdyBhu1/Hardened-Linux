## Hardened Linux Server

- Disabled root SSH login, enforced key-based auth
- Set up UFW firewall (only ports 22, 443 open)
- Installed fail2ban to block brute-force attempts
- Performed audit with Lynis (score: 85)
- Removed unused services: telnet, nfs, samba
