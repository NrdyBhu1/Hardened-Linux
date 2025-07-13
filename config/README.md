# Hardened Configuration Files

This directory contains hardened versions of key security configuration files used in the `Secure Linux Server` project.

---

## jail.local (Fail2Ban)

**File:** `jail.local`

This file configures the Fail2Ban intrusion prevention system to protect the SSH service against brute-force login attempts.

### Key Settings

| Setting        | Value     | Purpose |
|----------------|-----------|---------|
| `enabled`      | `true`    | Enables the `sshd` jail |
| `port`         | `ssh`     | Monitors the SSH port (default or custom) |
| `logpath`      | `/var/log/auth.log` | Location of SSH logs (may vary by system) |
| `maxretry`     | `3`       | Bans IPs after 3 failed attempts |
| `findtime`     | `10m`     | Time window for counting failures |
| `bantime`      | `1h`      | Duration for which IPs are banned |
| `backend`      | `auto`    | Uses appropriate log reader (file or systemd) |

---

## sshd_config (OpenSSH Server)

**File:** `sshd_config`

This file defines hardened settings for the OpenSSH server to reduce risk of unauthorized access.

### Key Settings

| Setting                    | Value         | Purpose |
|----------------------------|---------------|---------|
| `Port`                     | `2222`        | Changes default SSH port to reduce automated attacks |
| `PermitRootLogin`          | `no`          | Disables direct root login |
| `PasswordAuthentication`   | `no`          | Enforces SSH key-based authentication |
| `ChallengeResponseAuthentication` | `no`   | Disables challenge/response logins |
| `X11Forwarding`            | `no`          | Disables graphical forwarding |
| `AllowTcpForwarding`       | `no`          | Prevents tunneling via SSH |
| `ClientAliveInterval`      | `300`         | Sends keepalive packets every 5 minutes |
| `ClientAliveCountMax`      | `2`           | Disconnects after 10 minutes of inactivity |

---

## Security Impact

Together, these configuration files:
- Prevent brute-force attacks
- Block direct root access
- Eliminate password-based logins
- Reduce attack surface on SSH
- Apply consistent, automated banning via Fail2Ban

---

## Files in this Directory

- `jail.local` – Fail2Ban configuration
- `sshd_config` – Hardened SSH daemon settings

---

## Note

- Always back up original configuration files before applying changes.
- Test SSH config with `sshd -t` before restarting the SSH service.
- If using `systemd`-based logging, adjust Fail2Ban's backend accordingly (`systemd` instead of `auto`).
