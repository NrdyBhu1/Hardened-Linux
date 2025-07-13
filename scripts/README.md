# Scripts Directory

This folder contains automation scripts used in the Secure Linux Server project. Each script performs a specific system hardening or maintenance task.

---

## firewall_setup.sh

Configures the Uncomplicated Firewall (UFW):

- Sets default policy: deny incoming, allow outgoing
- Allows incoming traffic for SSH (22), HTTP (80), and HTTPS (443)
- Enables firewall logging
- Applies all rules and enables UFW non-interactively

**Usage:**
```sh
$ sudo ./firewall_setup.sh
```

---

## fail2ban_setup.sh

Installs and configures Fail2Ban:

- Installs Fail2Ban if not already present
- Detects if the SSH server is installed and running
- Enables or disables the sshd jail accordingly
- Creates `/etc/fail2ban/jail.local` if missing
- Enables and starts the Fail2Ban service

**Usage:**
```sh
$ sudo ./fail2ban_setup.sh
```

---

## user_hardening.sh

Applies user account security policies:

- Enforces password aging (max 90 days, min 7 days, 14-day warning)
- Detects users with empty passwords
- Locks default system accounts (e.g., `ftp`, `mail`, etc.)
- Disables root login via virtual terminals
- Restricts sudo access to the `sudo` group

**Usage:**
```sh
$ sudo ./user_hardening.sh
```

---

## foxcheck

Security auditing utility.

- Checks for disk encryption using LUKS
- Verifies if UFW is active
- Checks if Fail2Ban is running and if any jails are active

**Usage:**
```sh
$ ./foxcheck
```

---

## foxcrypt

Disk encryption helper using LUKS. Supports creating, opening, and closing encrypted containers.

**Options:**

- `-new` : Formats and encrypts a partition or disk
- `-open` : Opens and mounts an encrypted volume
- `-close`: Unmounts and closes the volume

**Usage:**
```sh
$ sudo ./foxcrypt [OPTIONS]
```

---

## How to Use

Make all scripts executable:
```sh
$ chmod +x *.sh foxcrypt foxcheck
```

Run scripts with `sudo` where noted.
