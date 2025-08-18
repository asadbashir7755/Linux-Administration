# 📅 Session 16 — 10 & 17 Aug 2025 • Ownership, Permissions & Special Permissions

## 🖥️ Ownership & Group Ownership

### 1. View all system groups

```bash
cat /etc/group
```

Displays all system groups.

### 2. Create a new group

```bash
groupadd admins
```

Creates a group named `admins`.

### 3. Manual for groupmod

```bash
man groupmod
```

Shows the manual for the `groupmod` command.

### 4. Show last entries in group file

```bash
tail /etc/group
```

Displays the last lines of the group file.

### 5. Rename groups

```bash
groupmod -n adm admins
groupmod -n admn admins
```

Renames `admins` to `adm`, then to `admn`.

### 6. Show last entries in passwd file

```bash
tail /etc/passwd
```

Displays the last lines of the passwd file.

### 7. Show UID and GID for user

```bash
id arshad
```

Displays UID and GID for `arshad`.

### 8. Add and remove user from groups

```bash
usermod -aG admn arshad
gpasswd -a arshad qa
gpasswd -d arshad admn
```

Adds/removes `arshad` to/from groups.

### 9. Delete a group

```bash
groupdel admn
```

Deletes the `admn` group.

### 10. Directory and Ownership Operations

```bash
ls
mkdir ownership
cd ownership/
mkdir -p folder1/{fol_1,fol_2,fol_3,fol_4,fol_5,fol_6,fol_7,fol_8,fol_9,fol_10}
mkdir -p folder1/{fol_1,fol_2}/nested
tree
rm -r folder1/fol_10
rm -r folder1/fol_1
tree
ll
chown arshad folder1
chgrp qa folder1
chown -R arshad folder1/
namei -l folder1/fol_1/nested/
chown zahid:stag folder1/ -R
chown root.qa folder1/
touch file
```

Performs directory creation, ownership, and group changes.

### 11. General Ownership Note

> By default, the ownership and group ownership of any file or folder is of the user who creates it.

---

## 🛡️ Linux File Permissions

### Understanding Permissions

![Octal and Symbolic Permissions Table](assets/permissions1.gif)
*Octal, binary, and symbolic representation of Linux file permissions.*

![Linux File Permissions Structure](assets/permissions2.png)
*How to read Linux file permissions: user, group, others.*

- **r** = read, **w** = write, **x** = execute
- Permissions are set for user (owner), group, and others.
- Each permission can be represented in binary and octal.

---

### 12. Symbolic Permissions (chmod)

#### Symbolic Method Examples

```bash
chmod u+x file
chmod u-w file
chmod u+w,g+x file
chmod u+w,g+x,o+x file
chmod u-w,g+w,o-r file
chmod u=w,g=r,o= file
chmod u=,g=,o= file
chmod ug=rw,o=r file
chmod ugo=r file
chmod ugo+x file
chmod u+x file
chmod u-w file
chmod ogu+w file
chmod og-w file
chmod ogu-w file
chmod u+w-x file
chmod o-rx file
```

Use `ls -ld file` after each command to verify changes.

#### Example: View permissions of sensitive files

```bash
ls -ld /etc/shadow
ls -ld file
```

---

### 13. Numeric (Octal) Permissions

- **4** = read, **2** = write, **1** = execute
- Example: `chmod 755 file` sets `rwxr-xr-x`

#### Examples

```bash
chmod 4750 file   # SUID + rwxr-x---
chmod 0750 file   # rwxr-x---
chmod 4650 file   # SUID + rwxr-x---
chmod 2750 file   # SGID + rwxr-s---
chmod 1750 file   # Sticky bit + rwxr-x--T
chmod 2770 folder1/ # SGID on directory
chmod 3770 folder1/ # SGID + Sticky bit
```

Use `ls -ld file` or `ls -ld folder1/` to verify.

---

## ⭐ Special Permissions

- **SUID (Set User ID):** `chmod u+s file` or octal `4xxx`
- **SGID (Set Group ID):** `chmod g+s file` or octal `2xxx`
- **Sticky Bit:** `chmod +t file` or octal `1xxx`

#### Examples

```bash
chmod u+s folder1/
chmod u+s,g-s,o-t folder1/
chmod u+rwxs,g+wrxs,o+rwxt folder1/
chmod a-x folder1/
```

Use `ls -ld folder1/` to check special bits.

---

## 🔎 Useful Commands for Permissions

```bash
namei -l folder1/fol_1/nested/
ls -l /etc/shadow
ls -l /etc/passwd
ls -l /usr/bin/passwd
```

---

## 📝 General Permissions Practice

```bash
su zubair
history
```

---

*End of Session 16 — 10 & 17 Aug 2025*