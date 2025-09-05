# 📅 Session 21 — 31 Aug 2025 • NFS Server & Client

## 🔹 Introduction
NFS (Network File System) allows sharing directories/files between Linux systems over the network.

---

## 🖥️ NFS Server Setup

| Step | Command | Description |
|------|--------|-------------|
| 1 | `dnf install nfs-utils` | Install NFS utilities. |
| 2 | `ls` | List files in current directory. |
| 3 | `ls /opt/` | List files in /opt directory. |
| 4 | `mkdir /opt/shared_120` | Create shared directory. |
| 5 | `chown nobody:nobody /opt/shared_120/` | Set ownership for NFS sharing. |
| 6 | `cd /opt/` | Change to /opt directory. |
| 7 | `ll` | Long list files. |
| 8 | `vi /etc/exports` | Edit NFS exports file. |
| 9 | `# /opt/shared_120  192.168.8.0/24(rw,sync,no_root_squash)` | Example export entry. |
| 10 | `exportfs  -arv` | Apply/export NFS shares. |
| 11 | `systemctl enable nfs-server --now` | Enable and start NFS server. |
| 12 | `systemctl status nfs-server` | Check NFS server status. |
| 13 | `showmount -e localhost` | Show exported shares (localhost). |
| 14 | `showmount -e 127.0.0.1` | Show exported shares (loopback). |
| 15 | `showmount -e 192.168.8.120` | Show exported shares (server IP). |
| 16 | `journalctl -u nfs-server` | View NFS server logs. |
| 17 | `ls` | List files. |
| 18 | `ip a` | Show IP addresses. |
| 19 | `pwd` | Print working directory. |
| 20 | `ls` | List files. |
| 21 | `cd shared_120/` | Enter shared directory. |
| 22 | `pwd` | Print working directory. |
| 23 | `ls` | List files. |
| 24 | `cat file_100.txt` | View file contents. |
| 25 | `ip a |grep inet > file_120.txt` | Save IP info to file. |

---

## 🖥️ NFS Client Setup

| Step | Command | Description |
|------|--------|-------------|
| 1 | `showmount -e 192.168.8.120` | List NFS exports from server. |
| 2 | `mount -t nfs 192.168.8.120:/opt/shared_120 /mnt/shared` | Mount NFS share. |
| 3 | `p0wd` | (Typo, should be `pwd`) Print working directory. |
| 4 | `pwd` | Print working directory. |
| 5 | `mkdir shared` | Create local directory. |
| 6 | `mount -t nfs 192.168.8.120:/opt/shared_120 /mnt/shared` | Mount NFS share. |
| 7 | `df -h` | Show disk usage. |
| 8 | `ls /mnt/shared/` | List files in mounted share. |
| 9 | `cd shared/` | Change to shared directory. |
| 10 | `ls` | List files. |
| 11 | `vi file_100.txt` | Edit/view file. |
| 12 | `ls` | List files. |
| 13 | `cat file_120.txt` | View file contents. |
| 14 | `df -h` | Show disk usage. |
| 15 | `umount /mnt/shared` | Unmount NFS share. |
| 16 | `cd ..` | Go up one directory. |
| 17 | `umount /mnt/shared` | Unmount NFS share (again). |
| 18 | `df -h` | Show disk usage. |
| 19 | `vi /etc/fstab` | Edit fstab for persistent mount. |
| 20 | `df -h` | Show disk usage. |
| 21 | `systemctl daemon-reload` | Reload systemd configs. |
| 22 | `df -h` | Show disk usage. |
| 23 | `mount -a` | Mount all filesystems from fstab. |
| 24 | `df -h` | Show disk usage. |
| 25 | `cd shared/` | Change to shared directory. |
| 26 | `ls` | List files. |
| 27 | `touch zubair` | Create a file named 'zubair'. |

---

## 📝 Notes

- **NFS Server:** Shares directories by configuring `/etc/exports` and starting `nfs-server`.
- **NFS Client:** Mounts shared directories using `mount -t nfs ...`.
- Use `showmount -e <server>` to view available exports.
- For persistent mounts, add entries to `/etc/fstab` and use `mount -a`.
- Ownership and permissions are important for access.
- Use `systemctl` to manage NFS server status.

---

# End of Session 21