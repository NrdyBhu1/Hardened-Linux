# Hardened Linux

This project provides a practical implementation of Linux server hardening techniques using custom shell scripts, configuration files, and audit tools. It is designed for learning, demonstration, and use in personal virtual machines or non-critical production systems.

---

## Objectives

- Apply basic Linux security hardening in a reproducible way
- Automate firewall and intrusion prevention setup
- Manage disk encryption and mount lifecycle
- Check system configuration for vulnerabilities
- Showcase skills related to system administration and cybersecurity

---

## Features

- UFW firewall automation
- Fail2Ban setup with SSH jail detection
- SSH daemon hardening
- Disk encryption helper (LUKS-based)
- Simple vulnerability checks
- Clean config snapshots for documentation

---

## Project Structure

```
Hardened Linux/
├── scripts/ # Shell scripts to automate hardening tasks
│ ├── firewall_setup.sh
│ ├── fail2ban_setup.sh
│ ├── user_hardening.sh
│ ├── foxcheck
│ ├── foxcrypt
│ └── README.md
│
├── config/ # Snapshots of config files
│ ├── jail.local
│ ├── sshd_config
│ └── README.md
│
└── README.md
```

---

## Compatibility

Tested on:

- Debian/Ubuntu (apt-based systems)
- VirtualBox VM environments
- Should be portable to other distributions with minor tweaks

---

## Security Practices Demonstrated

- Default-deny firewalls
- Brute-force prevention with Fail2Ban
- SSH port and authentication hardening
- LUKS-based disk encryption lifecycle

---

## License

This project is released under the MIT License. You are free to use, modify, and distribute it with attribution.

---

## Use Case

Created for educational and demonstration purposes. Suitable for inclusion in cybersecurity portfolios or GitHub projects.
