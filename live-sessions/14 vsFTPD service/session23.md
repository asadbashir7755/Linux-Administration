# 📅 Session 23 — 31 Aug 2025 • vsFTPd Service

## 🔹 Introduction
vsFTPd ("Very Secure FTP Daemon") is a secure, fast, and stable FTP server for Unix-like systems.

---

```bash
#  FTP File Transfer Protocol
# 21 Control Commands
# 20 Data Transfer
# TCP
# PureFTPd/ProFTPd/vsFTPd
# Very secure File Transfer Protocol Deamon
```
FTP basics: uses TCP, port 21 for control, port 20 for data. vsFTPd is a secure FTP server.

```bash
dnf install vsftpd
```
Install vsFTPd package.

```bash
systemctl enable vsftpd --now
```
Enable and start vsFTPd service immediately.

```bash
systemctl status vsftpd
```
Check status of vsFTPd service.

```bash
vi /etc/vsftpd/vsftpd.conf
```
Edit vsFTPd configuration file.

```bash
systemctl restart vsftpd
```
Restart vsFTPd to apply configuration changes.

```bash
systemctl status vsftpd
```
Check status again.

```bash
tail -f /var/log/xferlog
```
Monitor FTP transfer logs in real time.

```bash
vi /etc/vsftpd/vsftpd.conf
```
Edit configuration file again if needed.

```bash
#chroot_local_user=YES   #allow_writeable_chroot=YES
```
Configuration options for local user chroot and writable chroot.

```bash
systemctl restart vsftpd
```
Restart vsFTPd after config changes.

```bash
find / -name nologin
```
Locate the 'nologin' shell.

```bash
useradd -s /usr/sbin/nologin  ftp_user
```
Create FTP user with 'nologin' shell (prevents shell access).

```bash
passwd ftp_user
```
Set password for FTP user.

```bash
su ftp_user
```
Switch to FTP user.

```bash
passwd ftp_user
```
Set password again if needed.

```bash
useradd -s /usr/bin/false  ftp_user
```
Create FTP user with 'false' shell (another way to prevent shell access).

```bash
usermod -s /usr/bin/false  ftp_user
```
Change shell for existing user to 'false'.

```bash
ip a
```
Show network interfaces and IP addresses.

```bash
tail /etc/passwd
```
Show last lines of /etc/passwd to verify user and shell.

```bash
ls /sbin/
```
List files in /sbin directory.

```bash
find /bin -name false
```
Find 'false' binary in /bin.

```bash
find / -name false
```
Find 'false' binary anywhere.

```bash
passwd ftp_user
```
Set password for FTP user.

```bash
usermod -s /bin/bash  ftp_user
```
Change shell for FTP user to bash (allows shell access).

```bash
vi /etc/shells
```
Edit list of valid shells.

```bash
usermod -s /usr/bin/false  ftp_user
```
Change shell for FTP user back to 'false'.

```bash
tail /etc/passwd
```
Verify shell change.

```bash
su ftp_user
```
Switch to FTP user.

```bash
usermod -s /usr/sbin/nologin  ftp_user
```
Change shell for FTP user to 'nologin'.

```bash
tail /etc/passwd
```
Verify shell change.

```bash
su ftp_user
```
Switch to FTP user.

---

## 📝 Notes
- vsFTPd is recommended for secure FTP deployments.
- Use `systemctl` to manage vsFTPd service.
- Edit `/etc/vsftpd/vsftpd.conf` for configuration.
- Use 'nologin' or 'false' shells to restrict FTP users from shell access.
- Monitor `/var/log/xferlog` for FTP activity.
- Always restart vsFTPd after configuration changes.

---

# End of Session 23