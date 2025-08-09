# 📅 Session 12 — 20 Jul 2025 • Links (Soft & Hard)

## 🖥️ Commands Learned

### 1. Check mounted filesystems and space

```bash
df -h
```

Displays mounted filesystems and available space.

### 2. List backups directory

```bash
ls /backups/
```

Lists contents of the `/backups/` directory.

### 3. Show current path

```bash
pwd
```

Prints the current working directory.

### 4. Show inode usage

```bash
df -hi
```

Displays inode usage for filesystems.

### 5. Show inode numbers with listing

```bash
ls -i
```

Lists files with their inode numbers.

### 6. List Downloads directory

```bash
ls Downloads/
```

Lists contents of the `Downloads` directory.

### 7. Create/edit a file in Downloads

```bash
vi Downloads/abc
```

Creates or edits the file `abc` in `Downloads`.

### 8. Print working directory

```bash
pwd
```

Prints the current working directory.

### 9. Create a symlink to a file

```bash
ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc
```

Creates a symbolic link `linked_abc` pointing to `abc`.

### 10. Show symlink arrow

```bash
ls -l
```

Shows symbolic link and its target.

### 11. Read via symlink

```bash
cat linked_abc
```

Displays the contents of the target file via symlink.

### 12. Edit target through symlink

```bash
vi linked_abc
```

Edits the target file through the symlink.

### 13. Confirm contents

```bash
cat Downloads/abc
```

Displays the contents of `Downloads/abc`.

### 14. Show inode and indicate symlink

```bash
ls -id linked_abc
```

Shows inode and indicates it's a symlink.

### 15. Inode of the symlink

```bash
ls -i linked_abc
```

Shows inode of the symlink.

### 16. Inode of the target file

```bash
ls -i Downloads/abc
```

Shows inode of the target file.

### 17. Rename target (case change)

```bash
mv Downloads/abc Downloads/Abc
```

Renames the file in `Downloads`.

### 18. linked_abc now broken

```bash
ls -l
```

Shows that the symlink is now broken.

### 19. Attempt to read broken symlink

```bash
cat linked_abc
```

Attempts to read via the broken symlink (will error).

### 20. Rename back to original

```bash
mv Downloads/Abc Downloads/abc
```

Restores the original filename.

### 21. Reading via symlink works again

```bash
cat linked_abc
```

Symlink works again after restoring the target.

### 22. Move file out to parent directory

```bash
mv Downloads/abc .
```

Moves `abc` from `Downloads` to the current directory.

### 23. Move file back to Downloads

```bash
mv abc Downloads/
```

Moves `abc` back to `Downloads`.

### 24. Remove the symlink only

```bash
unlink linked_abc
```

Removes the symlink, leaving the target untouched.

### 25. Recreate symlink

```bash
ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc
```

Recreates the symbolic link.

### 26. Inode of target

```bash
ls -i /home/zubair/Downloads/abc
```

Shows inode of the target file.

### 27. Remove target file

```bash
rm /home/zubair/Downloads/abc
```

Removes the target file.

### 28. Recreate a new empty target file

```bash
touch /home/zubair/Downloads/abc
```

Creates a new empty file at the same path.

### 29. Inode changed (new file)

```bash
ls -i /home/zubair/Downloads/abc
```

Shows new inode for the recreated file.

### 30. Identify type (symbolic link)

```bash
file linked_abc
```

Identifies the file type as a symbolic link.

### 31. Identify device file

```bash
file /dev/null
```

Identifies `/dev/null` as a device file.

### 32. Identify block device

```bash
file /dev/sda1
```

Identifies `/dev/sda1` as a block device.

### 33. Identify directory

```bash
file Downloads/
```

Identifies `Downloads/` as a directory.

### 34. Detailed metadata for symlink

```bash
stat linked_abc
```

Shows detailed metadata for the symlink and its target.

### 35. Detailed metadata for target file

```bash
stat /home/zubair/Downloads/abc
```

Shows metadata for the target file.

### 36. Show stats for another file

```bash
stat file_21
```

Shows stats for `file_21` (may or may not exist).

### 37. Enter earlier working dir

```bash
cd archiving_compression/
```

Changes to the `archiving_compression` directory.

### 38. Stats for compressed tar

```bash
stat archive.tar.gz
```

Shows stats for `archive.tar.gz`.

### 39. Filesystem usage overview

```bash
df -h
```

Displays filesystem usage.

### 40. Edit shared_file in /backups

```bash
vi /backups/shared_file
```

Edits or creates `shared_file` in `/backups`.

### 41. Create symlink imp_file to shared_file

```bash
ln -s /backups/shared_file /home/zubair/imp_file
```

Creates a symlink `imp_file` pointing to `shared_file`.

### 42. Read through symlink

```bash
cat imp_file
```

Reads the contents of `shared_file` via the symlink.

### 43. Symlink to a directory

```bash
ln -s /home/zubair/archiving_compression /home/zubair/Archiving_compression
```

Creates a symlink to a directory (case differs).

### 44. Create hard link to shared_file

```bash
ln /backups/shared_file /home/zubair/hard_link
```

Creates a hard link to `shared_file` (must be same filesystem).

### 45. Create hard link to Downloads/abc

```bash
ln /home/zubair/Downloads/abc /home/zubair/hard_link
```

Attempts to create a hard link to `Downloads/abc` (overwrites if allowed).

### 46. Read via hard link

```bash
cat hard_link
```

Reads the contents via the hard link.

### 47. Inode number for hard_link

```bash
ls -i hard_link
```

Shows inode number for the hard link.

### 48. Inode number for Downloads/abc

```bash
ls -i Downloads/abc
```

Shows inode number for the original file (should match hard_link).

### 49. Stats for the hard link

```bash
stat hard_link
```

Shows stats for the hard link.

### 50. Remove one name; data persists via hard_link

```bash
rm /home/zubair/Downloads/abc
```

Removes one name; data persists via the hard link.

### 51. Contents still accessible

```bash
cat hard_link
```

Contents are still accessible via the hard link.

### 52. Recreate another hard link back in Downloads

```bash
ln /home/zubair/hard_link /home/zubair/Downloads/abc
```

Recreates a hard link in `Downloads`.

### 53. Find all hard links to the same inode (system-wide)

```bash
find / -samefile hard_link
```

Finds all hard links to the same inode (may be slow).

### 54. Restrict search to /home

```bash
find /home -samefile hard_link
```

Finds all hard links to the same inode within `/home`.

### 55. Attempt hard link to a directory (not permitted)

```bash
ln /home/zubair/archiving_compression /home/zubair/arc
```

Attempts to create a hard link to a directory (generally not permitted).

### 56. Check link count and metadata

```bash
stat hard_link
```

Checks link count and metadata for the hard link.

---

*End of Session 12 — 20 Jul 2025*


