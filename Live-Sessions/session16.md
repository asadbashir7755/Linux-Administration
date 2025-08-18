# 📅 Session 16 — 17 Aug 2025 • Permissions (Symbolic, Octal, Special)

## 🛡️ General Permissions (Symbolic Method)

> **Note:** Symbolic permissions use letters (`u`, `g`, `o`, `a`) and operators (`+`, `-`, `=`) to set file modes.

![Linux Symbolic Permissions Table](/assets/permissions1.gif)
*Reference: Symbolic and octal permission mapping.*

```bash
# 4 2 1
# 1 0 1  r - x 5
# Symbolic Method
# Permission/Mode
```
```bash
chmod u+x file
```
Add execute for user.

```bash
ll
```
Long list directory contents.

```bash
chmod u-w file
```
Remove write for user.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u+w,g+x file
```
Add write for user, execute for group.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u+w,g+x,o+x file
```
Add write for user, execute for group and others.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u-w,g+w,o-r file
```
Remove write for user, add write for group, remove read for others.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u=w,g=r,o= file
```
Set user to write only, group to read only, others to none.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u=,g=,o= file
```
Remove all permissions.

```bash
ls -ld file
```
Show permissions for file.

```bash
ls -ld /etc/shadow
```
Check permissions of sensitive file.

```bash
chmod ug=rw,o=r file
```
User/group read-write, others read.

```bash
ls -ld /etc/shadow
```
Check permissions of sensitive file.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod ugo=r file
```
All read only.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod ugo+x file
```
All execute only.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u+x file
```
User execute only.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u-w file
```
Remove write for user.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod ogu+w file
```
Add write for all.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod og-w file
```
Remove write for group and others.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod ogu-w file
```
Remove write for all.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u+w-x file
```
Add write, remove execute for user.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod o-rx file
```
Remove read and execute for others.

```bash
ls -ld file
```
Show permissions for file.

```bash
ll
```
Long list directory contents.

```bash
chown zubair file
```
Change owner to zubair.

```bash
ll
```
Long list directory contents.

```bash
./file
```
Execute file (if permissions allow).

```bash
ll
```
Long list directory contents.

```bash
./file
```
Execute file (if permissions allow).

```bash
chmod u+x file
```
Add execute for user.

```bash
./file
```
Execute file (if permissions allow).

```bash
chmod u-x file
```
Remove execute for user.

```bash
./file
```
Execute file (if permissions allow).

```bash
ll
```
Long list directory contents.

```bash
vi file
```
Edit file.

```bash
cat file
```
View file content.

```bash
chmod u-w file
```
Remove write for user.

```bash
cat file
```
View file content.

```bash
vi file
```
Edit file.

```bash
cat file
```
View file content.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod u-r file
```
Remove read for user.

```bash
ls -ld file
```
Show permissions for file.

```bash
./file
```
Execute file (if permissions allow).

```bash
cat file
```
View file content.

```bash
vi file
```
Edit file.

```bash
ls -ld file
```
Show permissions for file.

---

## 🛡️ General Permissions (Octal Method)

> **Note:** Octal permissions use numbers (`0-7`) to represent combinations of read, write, and execute.

![Linux Octal Permissions Table](/assets/permissions2.png)
*Reference: Octal, binary, and symbolic permission mapping.*

```bash
# Octal Method
# 4 2 1
# 0 1 1
# 1 0 1
# 000
# 001
# 010
# 011
# 100
# 101
# 110
# 111
#000 ---
#001 --x
#010 -w-
#011 -wx
#100 r--
#101 r-x
#110 rw-
#111 rwx
```
```bash
ll
```
Long list directory contents.

```bash
chmod 000 file
```
No permissions for anyone.

```bash
ll
```
Long list directory contents.

```bash
chmod 754 file
```
User: rwx, Group: rx, Others: r.

```bash
ll
```
Long list directory contents.

```bash
chmod 777 file
```
All: rwx.

```bash
ll
```
Long list directory contents.

```bash
mkdir my_fol
```
Create directory.

```bash
chmod u+wr folder1/
```
Add write/read for user on folder1.

```bash
ll
```
Long list directory contents.

```bash
mkdir folder1/my_fol
```
Create subdirectory.

```bash
ll folder1/
```
Long list folder1.

```bash
chmod 750 file
```
User: rwx, Group: rx, Others: none.

```bash
ll
```
Long list directory contents.

```bash
ll folder1/
```
Long list folder1.

```bash
mkdir -m 540 folder1/custom
```
Create dir with specific permissions.

```bash
ll folder1/
```
Long list folder1.

---

## ⭐ Special Permissions

> **Note:** Special permissions (SUID, SGID, Sticky Bit) provide advanced control, often for executables or shared directories.

- **SUID (Set User ID):** Allows users to run an executable with the file owner's privileges.
- **SGID (Set Group ID):** Files: run with group privileges; Directories: new files inherit group.
- **Sticky Bit:** Only file owner/root can delete files in the directory.

```bash
# Special Permission reside on execute position
# User Special Permission - Set User ID - SUID
# rws = rwxs
# rwS = rw-s
# Group Special permission- set Group ID - SGID
# rws = rwxs
# rwS = rw-s
# Other Special Permission- Sticky Bit
# rwt = rwxt
# rwT = rw-t
```
```bash
whereis passwd
```
Locate passwd binary.

```bash
ls -ld /usr/bin/passwd
```
Check SUID on passwd.

```bash
passwd
```
Change password (uses SUID).

```bash
ls
```
List directory contents.

```bash
ll
```
Long list directory contents.

```bash
chmod 4750 file
```
SUID + rwxr-x---.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod 0750 file
```
rwxr-x---.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod 4650 file
```
SUID + rwxr-x---.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod 2750 file
```
SGID + rwxr-s---.

```bash
ls -ld file
```
Show permissions for file.

```bash
chmod 2750 file
```
SGID + rwxr-s---.

```bash
ls -ld file
```
Show permissions for file.

```bash
ll
```
Long list directory contents.

```bash
chmod 1750 file
```
Sticky bit + rwxr-x--T.

```bash
ll
```
Long list directory contents.

```bash
chgrp zubair file
```
Change group to zubair.

```bash
ll
```
Long list directory contents.

```bash
chmod 2750 file
```
SGID + rwxr-s---.

```bash
ll
```
Long list directory contents.

```bash
chmod 2750 folder1/
```
SGID on directory.

```bash
ll
```
Long list directory contents.

```bash
chmod 2770 folder1/
```
SGID + rwxrws---.

```bash
ll
```
Long list directory contents.

```bash
grep -r arshad /etc/passwd
```
Search for user arshad.

```bash
grep -r arshad /etc/group
```
Search for group arshad.

```bash
su arshad
```
Switch to user arshad.

```bash
ll
```
Long list directory contents.

```bash
chmod 3770 folder1/
```
SGID + Sticky bit.

```bash
ll
```
Long list directory contents.

```bash
su arshad
```
Switch to user arshad.

```bash
ll
```
Long list directory contents.

```bash
chmod u+s folder1/
```
Set SUID on directory.

```bash
ll
```
Long list directory contents.

```bash
chmod u+s,g-s,o-t folder1/
```
Set/clear special bits.

```bash
ll
```
Long list directory contents.

```bash
chmod u+rwxs,gwrxs,o+rwxt folder1/
```
Set all special bits.

```bash
chmod u+rwxs,g+wrxs,o+rwxt folder1/
```
Set all special bits.

```bash
ll
```
Long list directory contents.

```bash
chmod a-x folder1/
```
Remove execute for all.

```bash
ll
```
Long list directory contents.

```bash
ls -l /etc/shadow
```
Check permissions of shadow file.

```bash
ls -l /etc/passwd
```
Check permissions of passwd file.

```bash
ls -l /usr/bin/passwd
```
Check permissions of passwd binary.

---

*End of Session 16 — 17 Aug 2025*