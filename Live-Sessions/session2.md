# 📅 Session 2 — 10 Jun 2025

## 🖥️ Commands Learned

### 1. Print Working Directory

```bash
pwd
```

Shows the current working directory.

### 2. List Directory Contents

```bash
ls
```

Lists files and folders in the current location.

### 3. Change to `audit` Directory

```bash
cd audit/
```

Moves into the `audit` subdirectory.

### 4. Confirm Directory Change

```bash
pwd
```

Verifies the current path.

### 5. Move Up One Level

```bash
cd ..
```

Goes to the parent directory.

### 6. Move Up Two Levels

```bash
cd ../..
```

Navigates two levels higher.

### 7. Navigate via Relative Path

```bash
cd log/audit/
```

Moves to `log/audit` using a relative path.

### 8. Go to Home Directory

```bash
cd
```

Returns to the user’s home directory.

### 9. List `/home` Directory

```bash
ls /home/
```

Shows all user home directories.

### 10. Create Directory

```bash
mkdir abc
```

Creates a directory named `abc`.

### 11. Case-Sensitive Directories

```bash
mkdir Abc
mkdir ABc
mkdir ABC
```

Creates directories with names differing by case.

### 12. Create Nested Directories

```bash
mkdir -p a/b/c/d/e
```

Creates a full nested path; `-p` makes parents.

### 13. Show Directory Tree

```bash
tree
```

Displays folder structure (install if missing).

### 14. Create Hidden Directory

```bash
mkdir .xyz
```

Makes a hidden directory.

### 15. Show Hidden Files

```bash
ls -a
```

Includes hidden files/directories.

### 16. Create Inside Hidden Directory

```bash
mkdir .xyz/xyz
```

Adds a subfolder to `.xyz`.

### 17. Long Listing Format

```bash
ls -l
```

Detailed listing of files and directories.

### 18. Alias for Long List

```bash
ll
```

Usually `ls -alF` (depends on shell/distro).

### 19. Create or Update File

```bash
touch zubair
touch ABC
```

Creates files or updates timestamps.

### 20. Verify File Details

```bash
ls -l
ll
```

Lists files with details, including hidden ones.
