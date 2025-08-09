# 📅 Session 1 — 4 Jun 2025

## 🖥️ Commands Learned

### 1. Clear the Screen

```bash
clear
```

Clears the terminal screen (does not affect history or environment).

### 2. View Hostname

```bash
hostname
```

Prints the current system hostname.

### 3. Set Static Hostname

```bash
sudo hostnamectl set-hostname web2.abc.com.pk
```

Sets the hostname (persists across reboots).

### 4. Verify Hostname

```bash
hostname
```

Confirms hostname change.

### 5. Hostname Manual

```bash
man hostname
```

Opens the manual for `hostname`. Press `q` to quit.

### 6. Hostnamectl Manual

```bash
man hostnamectl
```

Shows usage details for `hostnamectl`.

### 7. Set Deployment Metadata

```bash
sudo hostnamectl deployment development
```

Sets deployment to `development`.

### 8. View Hostname Status

```bash
hostnamectl
```

Displays full hostname info and metadata.

### 9. Update Deployment Metadata

```bash
sudo hostnamectl deployment Production
```

Changes deployment to `Production`.

### 10. Verify Deployment

```bash
hostnamectl
```

Checks updated deployment value.

### 11–12. Incorrect Chassis Syntax

```bash
hostnamectl Chassis Server
hostnamectl Chassis server
```

Incorrect due to capitalization.

### 13. Correct Chassis Command

```bash
sudo hostnamectl chassis server
```

Sets chassis metadata.

### 14. Verify Chassis

```bash
hostnamectl
```

Confirms chassis change.

### 15. Set Location Metadata

```bash
sudo hostnamectl location khi_dc1_RA3_33U
```

Defines physical location (e.g., DC/rack/slot).

### 16. Verify Location

```bash
hostnamectl
```

Checks location value.

### 17. View Command History

```bash
history
```

Lists commands used in the session.

### 18–37. Directory Listings

```bash
ls
ls -l
ls -l /
ls -l /dev
ls -l /var/
ls -lh /var/
ls -lh /var/log/
ls -l /var/log/
ls -lh /var/log/
ls -hl /var/log/
ls -hlr /var/log/
ls -hl /var/log/
ls -hlt /var/log/
ls -hltr /var/log/
ls -a /var/log/
ls -a
ls
ls -a
ls -A
ls -Alv
```

* `-l` → long listing format
* `-h` → human-readable sizes
* `-r` → reverse sort
* `-t` → sort by modification time
* `-a` → show hidden files
* `-A` → almost all (exclude `.` and `..`)
* `-v` → natural sort for names
