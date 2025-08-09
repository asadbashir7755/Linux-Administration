# 📅 Session 6 — 15 Jun 2025

## 🖥️ Commands Learned

### 1. List block devices

```bash
lsblk
```

Lists block devices and their topology.

### 2. Filesystem disk usage

```bash
df
```

Shows filesystem disk usage.

### 3. Human-readable disk usage

```bash
df -h
```

Displays disk usage in human-readable sizes.

### 4. CPU architecture info

```bash
lscpu
```

Displays CPU architecture information.

### 5. Disk usage in 1K blocks

```bash
df -k
```

Shows disk usage using 1K blocks.

### 6. Disk usage in 1M blocks

```bash
df -m
```

Shows disk usage using 1M blocks.

### 7. Disk usage in 1G blocks

```bash
df -g
```

Shows disk usage using 1G blocks (support may vary).

### 8. Disk usage in 1K blocks, all filesystems

```bash
df -ka
```

Shows disk usage in 1K blocks and includes all filesystems (including pseudo filesystems).

### 9. Manual for df

```bash
man df
```

Displays the manual page for `df`.

### 10. Filter CPU info for "Core"

```bash
lscpu | grep Core
```

Filters CPU info lines containing "Core".

### 11. Save filtered CPU info to file

```bash
lscpu | grep Core > cpu_info.txt
```

Saves filtered CPU info to `cpu_info.txt`.

### 12. List files

```bash
ls
```

Lists files in the current directory.

### 13. View saved CPU info

```bash
cat cpu_info.txt
```

Displays the contents of `cpu_info.txt`.

### 14. Example grep with no expected match

```bash
lscpu | grep zubair
```

Attempts to filter for "zubair" (no match expected).

### 15. Disk usage of a file

```bash
du anaconda-ks.cfg
```

Shows disk usage of the file `anaconda-ks.cfg`.

### 16. Disk usage of a specific log file

```bash
du /var/log/messages
```

Shows disk usage of `/var/log/messages`.

### 17. Human-readable file size

```bash
du -h /var/log/messages
```

Shows human-readable size of `/var/log/messages`.

### 18. Per-directory sizes under /var/log

```bash
du -h /var/log
```

Shows per-directory sizes under `/var/log`.

### 19. Summary total for /var/log

```bash
du -hs /var/log
```

Shows summary total for `/var/log`.

### 20. List logs to correlate with sizes

```bash
ls /var/log
```

Lists log files in `/var/log`.

### 21. Summary for /var

```bash
du -hs /var/
```

Shows summary disk usage for `/var`.

### 22. Summary for root filesystem

```bash
du -hs /
```

Shows summary disk usage for the root filesystem (can be slow).

### 23. Memory and swap usage

```bash
free
```

Displays memory and swap usage.

### 24. Human-readable memory info

```bash
free -h
```

Displays memory and swap usage in human-readable format.

### 25. Interactive process viewer

```bash
top
```

Shows an interactive process viewer.

### 26. Show all interfaces and IPs

```bash
ip a
```

Displays all network interfaces and their IP addresses.

### 27. Filter address lines only

```bash
ip a | grep inet
```

Filters for lines containing IP addresses.

### 28. NetworkManager TUI

```bash
nmtui
```

Opens the NetworkManager text user interface.

### 29. Legacy interface display

```bash
ifconfig
```

Displays network interfaces (legacy tool).

### 30. System uptime and load averages

```bash
uptime
```

Shows system uptime and load averages.

### 31. Ping localhost

```bash
ping 127.0.0.1
```

Pings localhost to test the networking stack.

### 32. Show command history

```bash
history
```

Displays the command history.

---

*End of Session 6 — 15 Jun 2025*
