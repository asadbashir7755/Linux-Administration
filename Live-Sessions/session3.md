# 📅 Session 3 — 12 Jun 2025

## 🖥️ Commands Learned

### 1. Move or Rename Directory

```bash
mv Music Pictures
```

Moves `Music` into `Pictures` if it exists, otherwise renames `Music` to `Pictures`.

### 2. Create and Move Files

```bash
touch abc
mv abc Downloads/
```

Creates file `abc` and moves it to `Downloads`.

### 3. Rename Directory

```bash
mv Documents/ My_files
```

Renames `Documents` to `My_files`.

### 4. Display File Contents

```bash
cat xyz
cat > my_file
cat >> my_file
```

Shows, overwrites, or appends to a file. End input with `Ctrl+D`.

### 5. Use `echo` for File Writing

```bash
echo "This is my first line"
echo "This is my first line" > second_file
echo "This is my second line" >> second_file
echo "This is my third line" >> second_file
```

Prints text to terminal or writes/appends to a file.

### 6. Numbered Output

```bash
cat -n second_file
```

Shows file with line numbers.

### 7. Copy Files

```bash
cp my_file Pictures/
cp second_file Pictures/
cp -r Pictures/ Videos/
cp -r /home/zubair/Downloads /home/zubair/Templates/
cp /etc/passwd .
cp /etc/passwd user_info
```

Copies files or directories recursively.

### 8. Inspect Directories

```bash
ls Pictures/
ls Videos/
ls Videos/Pictures/
```

Lists contents of specified folders.

### 9. View System Files

```bash
cat /etc/passwd
cat -n /etc/passwd
```

Shows system account file (read-only).

### 10. Case-Sensitive Filenames

```bash
touch Passwd
cat passwd
cat Passwd
```

Demonstrates Linux’s case sensitivity in filenames.
