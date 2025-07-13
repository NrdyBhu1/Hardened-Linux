1. Updated system & removed unnecessary packages
2. Created a non-root user with sudo privileges
3. Configured SSH:
   - Disabled root login
   - Changed port to 2222
   - Enforced key-only login
4. Set up UFW to allow only ports 2222 and 80/443
5. Installed and configured Fail2Ban
