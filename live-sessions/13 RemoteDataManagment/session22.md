# 📅 Session 22 — 31 Aug 2025 • Remote Data Movement

## 🔹 Introduction
Remote data movement in Linux is commonly done using `scp` (secure copy), which allows copying files between local and remote systems, or between two remote systems.

---

### 📦 Use Cases & Commands

| Use Case | Command Example | Description |
|----------|----------------|-------------|
| Copy local file to remote | `scp localfile.txt user@remote:/path/` | Copy file from local to remote system. |
| Copy local directory to remote | `scp -r localdir/ user@remote:/path/` | Recursively copy directory from local to remote. |
| Copy remote file to local | `scp user@remote:/path/remotefile.txt .` | Copy file from remote to local system. |
| Copy remote directory to local | `scp -r user@remote:/path/remotedir/ .` | Recursively copy directory from remote to local. |
| Copy remote file to another remote | `scp user1@host1:/path/file user2@host2:/path/` | Copy file from one remote to another remote directly. |
| Copy remote directory to another remote | `scp -r user1@host1:/path/dir user2@host2:/path/` | Recursively copy directory between remotes. |
| Use custom port | `scp -P 2222 localfile.txt user@remote:/path/` | Use port 2222 for SSH connection. |
| Preserve file attributes | `scp -p localfile.txt user@remote:/path/` | Preserve modification times, access times, and modes. |

---

```bash
ls
```
List files in current directory.

```bash
ip a
```
Show IP addresses.

```bash
ls
```
List files.

```bash
scp nload-0.7.4-23.el9.x86_64.rpm  zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/
```
Copy RPM file from local to remote directory.

```bash
scp -r myfolder/ zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/
```
Recursively copy local folder to remote.

```bash
scp zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/remote_file.txt  .
```
Copy file from remote to local directory.

```bash
scp -r zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/remotedir/ .
```
Recursively copy remote directory to local.

```bash
# remote to remote 
scp zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/nload*  zubair@192.168.8.105:/home/zubair/folder_105/
```
Copy files directly from one remote host to another.

```bash
scp -r zubair@192.168.8.100:/home/zubair/Jun_Aug_2025/mydir/  zubair@192.168.8.105:/home/zubair/folder_105/
```
Recursively copy directory from one remote to another.

```bash
scp -P 2222 localfile.txt zubair@192.168.8.100:/home/zubair/
```
Copy file using custom SSH port.

```bash
scp -p localfile.txt zubair@192.168.8.100:/home/zubair/
```
Preserve file attributes when copying.

---

## 📝 Notes
- Use `-r` for directories, `-P` for custom port, `-p` to preserve attributes.
- For remote-to-remote, your local machine acts as a proxy; SSH keys may be required on both remotes.
- Always verify file permissions and network connectivity.

---

# End of Session 22