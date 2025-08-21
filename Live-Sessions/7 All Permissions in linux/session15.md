# 📅 Session 15 — 10 Aug 2025 • Ownership, Group Ownership & Permissions

## 🖥️ Commands Learned

### 1. View all system groups

```bash
cat /etc/group
```

Displays all system groups.

### 2. Create new group admins

```bash
groupadd admins
```

Creates a new group named `admins`.

### 3. Manual for groupmod

```bash
man groupmod
```

Opens the manual for the `groupmod` command.

### 4. Show last entries in group file

```bash
tail /etc/group
```

Shows the last lines of the group file.

### 5. Rename group admins to adm

```bash
groupmod -n adm admins
```

Renames the group `admins` to `adm`.

### 6. Rename group adm to admn

```bash
groupmod -n admn  admins
```

Renames the group `adm` to `admn`.

### 7. Show last entries in group file

```bash
tail /etc/group
```

Shows the last lines of the group file.

### 8. Show last entries in passwd file

```bash
tail /etc/passwd
```

Shows the last lines of the passwd file.

### 9. Show UID and GID for arshad

```bash
id arshad
```

Displays UID and GID for `arshad`.

### 10. Add arshad to admn group

```bash
usermod -aG admn arshad
```

Adds `arshad` to the `admn` group.

### 11. Add arshad to qa group

```bash
gpasswd -a arshad qa
```

Adds `arshad` to the `qa` group.

### 12. Remove arshad from admn group

```bash
gpasswd -d arshad admn
```

Removes `arshad` from the `admn` group.

### 13. Delete group admn

```bash
groupdel admn
```

Deletes the `admn` group.

### 14. List current directory

```bash
ls
```

Lists files and directories in the current directory.

### 15. Create ownership directory

```bash
mkdir ownership
```

Creates a directory named `ownership`.

### 16. Enter ownership directory

```bash
cd ownership/
```

Changes into the `ownership` directory.

### 17. Create nested folders

```bash
mkdir -p folder1/{fol_1,fol_2,fol_3,fol_4,fol_5,fol_6,fol_7,fol_8,fol_9,fol_10}
```

Creates multiple nested folders inside `folder1`.

### 18. Create nested directories inside fol_1 and fol_2

```bash
mkdir -p folder1/{fol_1,fol_2}/nested
```

Creates `nested` directories inside `fol_1` and `fol_2`.

### 19. Show directory tree

```bash
tree
```

Displays the directory tree.

### 20. Remove fol_10 directory

```bash
rm -r folder1/fol_10
```

Removes the `fol_10` directory.

### 21. Remove fol_1 directory

```bash
rm -r folder1/fol_1
```

Removes the `fol_1` directory.

### 22. Show directory tree

```bash
tree
```

Displays the directory tree.

### 23. Long list

```bash
ll
```

Long listing of files and directories.

### 24. Change ownership of folder1 to arshad

```bash
chown arshad folder1
```

Changes ownership of `folder1` to `arshad`.

### 25. Change group ownership of folder1 to qa

```bash
chgrp qa folder1
```

Changes group ownership of `folder1` to `qa`.

### 26. Change ownership recursively

```bash
chown -R arshad folder1/
```

Changes ownership of `folder1` and its contents to `arshad`.

### 27. Show directory tree for nested folder

```bash
namei -l folder1/fol_1/nested/
```

Shows the path and permissions for the nested folder.

### 28. Change ownership and group recursively

```bash
chown zahid:stag folder1/ -R
```

Changes ownership to `zahid` and group to `stag` recursively.

### 29. Change ownership to root and group to qa

```bash
chown root.qa folder1/
```

Changes ownership to `root` and group to `qa`.

### 30. Create a file

```bash
touch file
```

Creates a new file named `file`.

### 31. Switch user

```bash
su zubair
```

Switches to user `zubair`.

### 32. List root directory

```bash
ls /
```

Lists contents of the root directory.

### 33. List folder1 contents

```bash
ls folder1/
```

Lists contents of `folder1`.

### 34. Long list folder1

```bash
ls folder1/ -l
```

Long listing of `folder1`.

### 35. Long list folder1/fol_1/

```bash
ll folder1/fol_1/
```

Long listing of `folder1/fol_1/`.

### 36. Show path and permissions for nested folder

```bash
namei -l folder1/fol_1/nested/
```

Shows path and permissions for `nested` folder.

### 37. Show last entries in passwd file

```bash
tail /etc/passwd
```

Shows the last lines of the passwd file.

### 38. General permissions (comment)

```bash
# By default the ownership and group ownership of any file or folder is of the user who creates it
```

Explains default ownership behavior.

### 39. Show command history

```bash
history
```

Displays the command history.

---

*End of Session 15 — 10 Aug 2025*