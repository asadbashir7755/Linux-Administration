# Linux System Administration Reference

## 📖 About This Repository

This repository provides a practical, session-based reference for Linux system administration. It covers essential commands and workflows for managing files, users, networking, services, monitoring, and more. Ideal for students, sysadmins, and anyone preparing for Linux certification or interviews.

## 📋 Session Index

| Session | Date | Topic |
|---------|------|-------|
| [Session 1](#session-1--4-jun-2025) | 4 Jun 2025 | Basic Commands & System Information |
| [Session 2](#session-2--10-jun-2025) | 10 Jun 2025 | Directory Navigation & File Operations |
| [Session 3](#session-3--12-jun-2025) | 12 Jun 2025 | File Moving & Text Operations |
| [Session 4](#session-4--14-jun-2025-session-01) | 14 Jun 2025 | History & System Information |
| [Session 5](#session-5--14-jun-2025-session-2) | 14 Jun 2025 | File Content Viewing |
| [Session 6](#session-6--15-jun-2025) | 15 Jun 2025 | System Information & Monitoring |
| [Session 7](#session-7--21-jun-2025) | 21 Jun 2025 | Network Tools & Time Management |
| [Session 8](#session-8--6-jul-2025--package-management--dnf) | 6 Jul 2025 | Package Management - DNF |
| [Session 9](#session-9--6-jul-2025--package-management--dnf-part-2) | 6 Jul 2025 | Package Management - DNF (Part 2) |
| [Session 10](#session-10--12-jul-2025--rpm--archiving-tar) | 12 Jul 2025 | RPM & Archiving (Tar) |
| [Session 11](#session-11--19-jul-2025--archiving--compression-completed) | 19 Jul 2025 | Archiving & Compression |
| [Session 12](#session-12--20-jul-2025--links-soft--hard) | 20 Jul 2025 | Links (Soft & Hard) |
| [Session 13](#session-13--26-jul-2025--user-management-part-1) | 26 Jul 2025 | User Management (Part 1) |
| [Session 14](#session-14--2-aug-2025--user-and-group-management) | 2 Aug 2025 | User and Group Management |

---

## Session 1 — 4 Jun 2025

### Basic Commands & System Information

| Command | Description |
|---------|-------------|
| `clear` | Clears the terminal screen |
| `hostname` | Prints the current system hostname |
| `hostnamectl set-hostname web2.abc.com.pk` | Sets the static hostname |
| `man hostname` | Opens the manual page for hostname |
| `hostnamectl deployment development` | Sets deployment metadata to "development" |
| `hostnamectl chassis server` | Sets chassis metadata to "server" |
| `hostnamectl location khi_dc1_RA3_33U` | Sets location metadata (e.g., DC/rack/slot) |
| `history` | Prints command history (session-based list) |
| `ls` | Lists non-hidden entries in current directory |
| `ls -l` | Long listing (permissions, owner, size, time) |
| `ls -lh` | Long listing with human-readable sizes |
| `ls -hlr` | Reverse sort order |
| `ls -hlt` | Sort by modification time (newest first) |
| `ls -hltr` | Sort by time, reversed (oldest first) |
| `ls -a` | Include hidden entries |
| `ls -A` | Like -a but excludes . and .. |
| `ls -Alv` | Long list, almost-all, natural version sort for names |

**Command Examples:**

```bash
# Display and change hostname
hostname
hostnamectl set-hostname web2.abc.com.pk
hostname

# Set system metadata
hostnamectl deployment development
hostnamectl chassis server
hostnamectl location khi_dc1_RA3_33U

# View command history
history

# List files with different options
ls
ls -l
ls -l /
ls -l /dev
ls -lh /var/
ls -lh /var/log/
ls -hlr /var/log/
ls -hlt /var/log/
ls -hltr /var/log/
ls -a
ls -A
ls -Alv
```

## Session 2 — 10 Jun 2025

### Directory Navigation & File Operations

| Command | Description |
|---------|-------------|
| `pwd` | Prints the current working directory |
| `cd [directory]` | Change into specified directory |
| `cd ..` | Move one level up |
| `cd ../..` | Move up two levels |
| `cd` | Go to home directory |
| `mkdir [name]` | Create directory |
| `mkdir -p [path]` | Create nested directories; -p makes parents |
| `touch [file]` | Create file or update its timestamp |

**Command Examples:**

```bash
# Directory navigation
pwd
cd audit/
pwd
cd ..
cd ../..
pwd
cd log/audit/
cd

# List directories
ls /home/
ls a/b/c/d/e/

# Create directories
mkdir abc
mkdir Abc ABc ABC
mkdir -p a/b/c/d/e
mkdir .xyz
mkdir .xyz/xyz

# View directory structure
tree

# Create files
touch zubair
touch ABC
```

## Session 3 — 12 Jun 2025

### File Moving & Text Operations

| Command | Description |
|---------|-------------|
| `mv [source] [destination]` | Move/rename files or directories |
| `cat [file]` | Display file contents |
| `cat > [file]` | Create or overwrite file from stdin (Ctrl+D to end) |
| `cat >> [file]` | Append to file from stdin |
| `echo "text" > [file]` | Write text to file (overwrite) |
| `echo "text" >> [file]` | Append text to file |
| `cat -n [file]` | Show file with line numbers |
| `cp [source] [destination]` | Copy files or directories |
| `cp -r [source] [destination]` | Recursively copy directories |

**Command Examples:**

```bash
# Move and rename files
mv Music Pictures
touch abc
mv abc Downloads/
mv Documents/ My_files

# View and create file content
cat xyz
cat > my_file
# Enter text, then Ctrl+D to save
cat my_file
cat >> my_file
# Enter more text, then Ctrl+D to append

# Use echo to create files
echo "This is my first line" > second_file
echo "This is my second line" >> second_file
echo "This is my third line" >> second_file
cat -n second_file

# Copy files and directories
cp my_file Pictures/
cp second_file Pictures/
cp -r Pictures/ Videos/
cp -r /home/zubair/Downloads /home/zubair/Templates/
cp /etc/passwd .
cp /etc/passwd user_info
```

## Session 4 — 14 Jun 2025 (Session 01)

### History & System Information

| Command | Description |
|---------|-------------|
| `history` | Show command history |
| `cat .bash_history` | Display saved Bash history file |
| `history > [file]` | Save history to file |
| `which [command]` | Path to executable |
| `man [command]` | Manual page |
| `info [command]` | GNU info documentation |
| `whatis [command]` | One-line description |
| `cal` | Current month calendar |
| `cal -y` | Calendar for current year |
| `cal -m` | Monday as first day of week |
| `date` | Show current system time |
| `date -s "[time]"` | Set system time (requires root) |

**Command Examples:**

```bash
# Working with command history
history
cat .bash_history
history > my_history

# Examining commands
which ls
which pwd
man ls
info ls
whatis ls

# Calendar tools
cal
cal -y
cal -y > cal_2025
cal -m
cal 06 07 2047
cal -y 2028
cal -j

# Date and time management
date
date -s "Fri Jun 14 09:10:33 PM PKT 2025"
date +%b
date +%d-%m-%Y
date +%d/%m/%Y
date +%Y_%b_%d_%H_%M_%S
```

## Session 5 — 14 Jun 2025 (Session 2)

### File Content Viewing

| Command | Description |
|---------|-------------|
| `whoami` | Shows current effective username |
| `cat -n [file] > [output]` | Save numbered output to file |
| `cat [file] \| wc -l` | Count lines |
| `head [file]` | First 10 lines |
| `head -n [file]` | First n lines |
| `tail [file]` | Last 10 lines |
| `tail -n [file]` | Last n lines |
| `tail -f [file]` | Follow file updates in real-time |
| `more [file]` | Paginate view (forward only) |
| `less [file]` | Paginate with search and navigation |

**Command Examples:**

```bash
# User identification
whoami

# File manipulation
cat -n passwd > passwd_num
cat passwd_num | wc -l

# View parts of files
head passwd_num
tail passwd_num
head -5 passwd_num
tail -15 passwd_num
tail -5 passwd_num > abc_log_14_jun_2025.txt

# Monitor log files
tail -f /var/log/messages
tail -f /var/log/secure

# Page through files
more passwd_num
less passwd_num
```

## Session 6 — 15 Jun 2025

### System Information & Monitoring

| Command | Description |
|---------|-------------|
| `lsblk` | List block devices and topology |
| `df` | Filesystem disk usage |
| `df -h` | Human-readable sizes |
| `lscpu` | CPU architecture info |
| `df -k/-m/-g` | Use 1K/1M/1G blocks |
| `lscpu \| grep [pattern]` | Filter CPU info |
| `du [file]` | Disk usage of a file |
| `du -h [path]` | Human-readable file/directory size |
| `du -hs [path]` | Summary total for path |
| `free` | Memory and swap usage |
| `free -h` | Human-readable memory info |
| `top` | Interactive process viewer |
| `ip a` | Show all interfaces and IPs |
| `ifconfig` | Legacy interface display |
| `uptime` | System uptime and load averages |
| `ping [host]` | Test network connectivity |

**Command Examples:**

```bash
# System storage information
lsblk
df -h
df -k
df -m
df -ka

# CPU information
lscpu
lscpu | grep Core > cpu_info.txt

# Disk usage analysis
du anaconda-ks.cfg
du -h /var/log/messages
du -hs /var/log
du -hs /var/
du -hs /

# Memory and system monitoring
free -h
top

# Network information
ip a
ip a | grep inet
nmtui
ifconfig
uptime
ping 127.0.0.1
```

## Session 7 — 21 Jun 2025

### Network Tools & Time Management

| Command | Description |
|---------|-------------|
| `netstat -tulpn` | Show listening TCP/UDP sockets with program names |
| `date` | Show current system time |
| `hwclock` | Show hardware (RTC) clock |
| `hwclock --hctosys` | Set system clock from hardware clock |
| `hwclock --systohc` | Set hardware clock from system time |
| `nano [file]` | Text editor (simple) |
| `vim [file]` | Text editor (advanced) |
| `vi [file]` | Text editor (vi compatible) |
| `vimtutor` | Launch Vim tutorial |

**Command Examples:**

```bash
# Network socket information
netstat -tulpn
netstat -tulp

# Time synchronization
date
hwclock
date -s "Sat Jun 21 10:40:59 PM PKT 2025"
hwclock --hctosys
hwclock --systohc

# Text editors
nano file_23
vim file_24
vi file_24
vimtutor
```

## Session 8 — 6 Jul 2025 • Package Management — DNF

### Package Management with DNF

| Command | Description |
|---------|-------------|
| `dnf search [package]` | Search repositories for packages |
| `ls /etc/yum.repos.d/` | List configured repository files |
| `dnf info [package]` | Detailed metadata for package |
| `dnf list installed` | List all installed packages |
| `dnf list installed \| grep [pattern]` | Check if package is installed |
| `dnf install [package]` | Install package |
| `dnf install [package] -y` | Install without prompting |

**Command Examples:**

```bash
# Package searching
dnf search epel-release
dnf search nload

# Repository information
ls /etc/yum.repos.d/
ls /etc/yum.repos.d/ -l
vi /etc/yum.repos.d/centos-addons.repo

# Package information
dnf info epel-release.noarch
dnf list installed
dnf list installed > total_pkgs
dnf list installed | wc -l
dnf list installed | grep epel-release

# Package installation
dnf install epel-release.noarch
```

## Session 9 — 6 Jul 2025 • Package Management — DNF (Part 2)

### Package Management Advanced

| Command | Description |
|---------|-------------|
| `dnf install [package] -y` | Install without prompting |
| `dnf remove [package]` | Remove package |
| `dnf update [package]` | Update specific package |
| `dnf update` | Update all packages |
| `dnf provides [command]` | Find which package supplies a command |
| `dnf group list` | List available and installed package groups |
| `dnf group install [group]` | Install a package group |
| `dnf group remove [group]` | Remove a package group |
| `dnf install [package] --downloadonly` | Download package without installing |
| `dnf clean packages` | Clean cached packages |

**Command Examples:**

```bash
# Package installation and removal
dnf search nload
dnf info nload
dnf install nload -y
nload
dnf remove nload -y

# Package updates
dnf update nload
dnf update epel-release
dnf update

# Finding packages for commands
semanage
whereis semanage
dnf provides semanage
dnf provides ls

# Package groups
dnf group list
dnf group install "Server with GUI"
dnf group install "Security Tools"
dnf group remove "Security Tools"

# Package download and cache management
dnf install nload --downloadonly
find /var -name nload*
dnf clean packages
```

## Session 10 — 12 Jul 2025 • RPM | Archiving (Tar)

### RPM Package Management & Basic Archiving

| Command | Description |
|---------|-------------|
| `rpm -qa` | Query all installed RPM packages |
| `rpm -qa \| grep [pattern]` | Search installed packages |
| `rpm -qi [package]` | Detailed info for package |
| `rpm -ivh [file.rpm]` | Install RPM from local file |
| `rpm -Uvh [file.rpm]` | Upgrade RPM from local file |
| `rpm -evh [package]` | Erase package |
| `tar -cvf [archive.tar] [source]` | Create tar archive |
| `tar -xvf [archive.tar]` | Extract tar archive |
| `tar -tvf [archive.tar]` | List contents of tar file |

**Command Examples:**

```bash
# RPM package queries
rpm -qa
rpm -qa | wc -l
rpm -qa | grep nload
rpm -qi words-3.0-39.el9.noarch

# RPM package management
rpm -ivh nload-0.7.4-23.el9.x86_64.rpm
rpm -Uvh nload-0.7.4-23.el9.x86_64.rpm
rpm -evh nload-0.7.4-23.el9.x86_64
rpm -e epel-release
rpm -ivh https://dl.fedoraproject.org/pub/epel/9/Everything/x86_64/Packag.../epel-release-9-10.el9.noarch.rpm

# Basic tar operations
mkdir archiving_compression
cd archiving_compression/
cp /etc/passwd .
mkdir data
mv passwd data
tar -cvf archive.tar data
ls -lh
du -hs data
du -hs archive.tar
rm -rf data
tar -xvf archive.tar
```

## Session 11 — 19 Jul 2025 • Archiving & Compression Completed

### Advanced Archiving & Compression

| Command | Description |
|---------|-------------|
| `tar -rvf [archive.tar] [file]` | Append file to existing archive |
| `tar -uvf [archive.tar] [file]` | Update entry if file is newer |
| `tar --delete -f [archive.tar] [file]` | Delete specific member from archive |
| `zip -r [archive.zip] [directory]` | Create recursive zip archive |
| `unzip [archive.zip]` | Extract zip archive |
| `gzip [file]` | Compress file with gzip (.gz) |
| `gunzip [file.gz]` | Decompress gzip file |
| `bzip2 [file]` | Compress file with bzip2 (.bz2) |
| `bunzip2 [file.bz2]` | Decompress bzip2 file |
| `tar -czvf [file.tgz] [directory]` | Create gzip-compressed tar |
| `tar -cjvf [file.tbz2] [directory]` | Create bzip2-compressed tar |
| `tar -xzvf [file.tgz]` | Extract gzipped tar |
| `tar -xjvf [file.tbz2]` | Extract bzip2 tar |

**Command Examples:**

```bash
# Tar file manipulation
vi data/19_july
tar -rvf archive.tar data/19_july
tar -tvf archive.tar
rm -rf data
tar -xvf archive.tar
tar --delete -f archive.tar data/19_july
tar -tvf archive.tar

# Zip archives
zip -r data.zip data/
du -hs data
du -hs data.zip
rm -rf data
unzip data.zip

# Compression tools
gzip archive.tar
ls -lh
gunzip archive.tar.gz
bzip2 archive.tar
bunzip2 archive.tar.bz2

# Combined tar and compression
tar -czvf compressed.tgz data
tar -cjvf compressed.tbz2 data
rm -rf data
tar -xzvf compressed.tgz
tar -xjvf compressed.tbz2
```

## Session 12 — 20 Jul 2025 • Links (Soft & Hard)

### Symbolic and Hard Links

| Command | Description |
|---------|-------------|
| `ln -s [target] [linkname]` | Create symbolic link |
| `unlink [symlink]` | Remove symbolic link |
| `file [path]` | Identify file type |
| `stat [file]` | Detailed metadata for file |
| `ln [target] [linkname]` | Create hard link |
| `ls -i [file]` | Show inode number |
| `find [path] -samefile [file]` | Find all hard links to the same inode |

**Command Examples:**

```bash
# Creating symbolic links
vi Downloads/abc
ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc
cat linked_abc
vi linked_abc
ls -id linked_abc
ls -i linked_abc
ls -i Downloads/abc

# Testing symlink behavior
cd Downloads/
mv abc Abc
cd ..
cat linked_abc  # Will fail if link broken
cd Downloads/
mv Abc abc  # Restores link

# Removing and recreating symlinks
unlink linked_abc
ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc

# File identification
file linked_abc
file /dev/null
file /dev/sda1
stat linked_abc

# Creating hard links
ln /home/zubair/Downloads/abc /home/zubair/hard_link
ls -i hard_link
ls -i Downloads/abc
stat hard_link
stat Downloads/abc

# Finding hard links
find /home -samefile hard_link

# Directory hard link limitations
ln /home/zubair/archiving_compression /home/zubair/arc  # Will fail
```

## Session 13 — 26 Jul 2025 • User Management (Part 1)

### User and Group Files

| File | Description |
|------|-------------|
| `/etc/passwd` | Users' information (name, UID, GID, home, shell) |
| `/etc/shadow` | Users' password hashes (root-readable only) |
| `/etc/gshadow` | Group password information (root-only) |
| `/etc/group` | Group names and memberships |
| `/etc/login.defs` | User creation policies and defaults |
| `/etc/skel/` | Skeleton files copied to new user home |
| `/var/log/secure` | Authentication log file |

**User Types:**
1. Root (UID 0) - Admin/Super/Power user
2. Regular users (UID 1000+) - General human users 
3. System users (UID 1-999) - Service accounts
4. Sudo users - Regular users with sudo privileges

**Command Examples:**

```bash
# View user and group files
ls /etc/login.defs
ls -ld /etc/login.defs
vi /etc/passwd
vi /etc/group
vi /etc/shadow
vi /etc/gshadow

# Authentication logs
tail /var/log/secure

# User defaults
vi /etc/login.defs
ls -a /etc/skel/
ls -Al /etc/skel/
vi /etc/skel/.bash_profile
```

## Session 14 — 2 Aug 2025 • User and Group Management

### User and Group Management Commands

| Command | Description |
|---------|-------------|
| `useradd [options] [username]` | Create new user |
| `passwd [username]` | Set/change user password |
| `usermod [options] [username]` | Modify user account |
| `userdel [options] [username]` | Delete user account |
| `su [username]` | Switch to another user |
| `chage [options] [username]` | Change user password expiry |
| `groupadd [groupname]` | Create a new group |
| `id [username]` | Show user ID and group membership |

**Command Examples:**

```bash
# User creation and shell configuration
useradd -s /usr/bin/false umair
passwd umair
tail -2 /etc/passwd
su umair  # Will fail with false shell
usermod -s /bin/bash umair
su umair  # Now works
usermod -s /usr/sbin/nologin umair

# User attributes
useradd -u 1010 -g 1010 salman
useradd -c "Zahid Ali" zahid
passwd zahid
usermod -c "Salman Khan" salman

# Custom home directories
useradd -d /var/ifra ifra
mkdir /var/dev
useradd -d /var/dev dev
passwd dev

# User management
usermod -l zahidali zahid  # Rename user
usermod -l zahid zahidali  # Rename back
usermod -L salman  # Lock account
usermod -U salman  # Unlock account

# Password aging
chage -m 3 salman  # Minimum password age
chage -M 90 salman  # Maximum password age
chage -W 10 salman  # Warning days
chage -E 2025-10-30 salman  # Account expiration

# User removal
userdel ali  # Delete user account only
userdel -r ali  # Delete user and home directory

# Group management
groupadd stag
useradd -g stag arshad  # Primary group
id arshad
usermod -aG stag ifra  # Add supplementary group
usermod -G qa,stag ifra  # Set exact supplementary groups
id ifra
```

---

