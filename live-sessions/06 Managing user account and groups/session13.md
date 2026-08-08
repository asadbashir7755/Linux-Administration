# 📅 Session 13 — 26 Jul 2025 • User Management (Part 1)

## 🖥️ Commands Learned

### 1. Verify defaults file exists

```bash
ls /etc/login.defs
```

Checks if `/etc/login.defs` (user creation policies) exists.

### 2. Show permissions/ownership of login.defs

```bash
ls -ld /etc/login.defs
```

Shows permissions and ownership for `/etc/login.defs`.

### 3. View/edit user list

```bash
vi /etc/passwd
```

Views or edits the user list (read-only unless root).

### 4. View/edit groups

```bash
vi /etc/group
```

Views or edits the group list.

### 5. View shadow file

```bash
vi /etc/shadow
```

Views the shadow password file (root only).

### 6. View group shadow

```bash
vi /etc/gshadow
```

Views the group shadow file (root only).

### 7. Show authentication log tail

```bash
tail /var/log/secure
```

Shows the last lines of the authentication log.

### 8. Inspect user defaults

```bash
vi /etc/login.defs
```

Inspects user defaults (UID ranges, password expiration).

### 9. List skeleton directory

```bash
ls /etc/skel/
```

Lists files in the skeleton directory.

### 10. Include hidden files in skeleton directory

```bash
ls -a /etc/skel/
```

Lists all files, including hidden, in `/etc/skel/`.

### 11. Like -a but omit . and ..

```bash
ls -A /etc/skel/
```

Lists all except `.` and `..` in `/etc/skel/`.

### 12. Long list including hidden files

```bash
ls -Al /etc/skel/
```

Long list of all files, including hidden, in `/etc/skel/`.

### 13. Long list home directory (including hidden files)

```bash
ls -Al /home/zubair/
```

Long list of all files, including hidden, in `/home/zubair/`.

### 14. Inspect default shell profile

```bash
vi /etc/skel/.bash_profile
```

Views the default shell profile for new users.

### 15. Inspect default shell rc file

```bash
vi /etc/skel/.bashrc
```

Views the default shell rc file for new users.

### 16. Inspect default logout script

```bash
vi /etc/skel/.bash_logout
```

Views the default logout script for new users.

---

*End of Session 13 — 26 Jul 2025*

