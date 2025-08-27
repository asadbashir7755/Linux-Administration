# 📅 Session 10 — 12 Jul 2025 • Session 1: RPM | Session 2: Archiving (Tar)

## 🖥️ Commands Learned

### 1. Query all installed RPM packages

```bash
rpm -qa
```

Lists all installed RPM packages.

### 2. Count installed packages

```bash
rpm -qa | wc -l
```

Counts the number of installed RPM packages.

### 3. Check if nload is installed via RPM

```bash
rpm -qa | grep nload
```

Checks if `nload` is installed.

### 4. Search for a specific version of "words"

```bash
rpm -qa | grep words-3.0-39.el9.noarch
```

Searches for a specific version of the `words` package.

### 5. Search for words packages (glob/regex)

```bash
rpm -qa | grep words*
```

Searches for packages matching `words*`.

### 6. Match any "words" package

```bash
rpm -qa | grep words
```

Matches any installed package with "words" in its name.

### 7. Detailed info for a specific words package

```bash
rpm -qi words-3.0-39.el9.noarch
```

Shows detailed info for the specific `words` package.

### 8. Query info by name

```bash
rpm -qi words
```

Shows info for the `words` package (if uniquely resolves).

### 9. Package info for nload

```bash
rpm -qi nload
```

Shows info for the `nload` package.

### 10. List directory

```bash
ls
```

Lists files in the current directory.

### 11. Install RPM from local file

```bash
rpm -ivh nload-0.7.4-23.el9.x86_64.rpm
```

Installs the RPM from a local file (`i=install`, `v=verbose`, `h=hash`).

### 12. Upgrade or install if newer

```bash
rpm -Uvh nload-0.7.4-23.el9.x86_64.rpm
```

Upgrades or installs the RPM if newer (`U=upgrade`).

### 13. Erase package

```bash
rpm -evh nload-0.7.4-23.el9.x86_64
```

Erases the package (`e=erase`).

### 14. Check if removed

```bash
rpm -qi nload
```

Checks if `nload` is removed.

### 15. Show distribution release version

```bash
cat /etc/redhat-release
```

Displays the distribution release version.

### 16. Kernel and system info

```bash
uname -a
```

Shows kernel and system information.

### 17. Remove EPEL release package

```bash
rpm -e epel-release
```

Removes the EPEL release package.

### 18. Remove EPEL next release

```bash
rpm -e epel-next-release
```

Removes the EPEL next release package (if installed).

### 19. Erase EPEL release with verbose/hash

```bash
rpm -evh epel-release
```

Erases EPEL release with verbose and hash output.

### 20. Install RPM directly from URL

```bash
rpm -ivh https://dl.fedoraproject.org/pub/epel/9/Everything/x86_64/Packag.../epel-release-9-10.el9.noarch.rpm
```

Installs RPM directly from a URL.

### 21. Create working directory

```bash
mkdir archiving_compression
```

Creates a working directory for archiving.

### 22. Enter working directory

```bash
cd archiving_compression/
```

Changes into the working directory.

### 23. Copy passwd into workspace

```bash
cp /etc/passwd .
```

Copies `/etc/passwd` into the current directory.

### 24. View/edit file

```bash
vi passwd
```

Views or edits the `passwd` file.

### 25. List with human-readable sizes

```bash
ls -lh
```

Lists files with human-readable sizes.

### 26. Make a copy of passwd

```bash
cp passwd my_pass
```

Makes a copy named `my_pass`.

### 27. Make another copy

```bash
cp passwd your_pass
```

Makes another copy named `your_pass`.

### 28. Create data directory

```bash
mkdir data
```

Creates a directory named `data`.

### 29. Move files into data

```bash
mv my_pass data
mv passwd data
mv your_pass data
```

Moves the files into the `data` directory.

### 30. Show tree of data

```bash
tree data/
```

Shows the directory tree of `data`.

### 31. Create subdirectory

```bash
mkdir data/abc
```

Creates a subdirectory `abc` inside `data`.

### 32. View updated structure

```bash
tree data/
```

Shows the updated directory structure.

### 33. Create tar archive of data

```bash
tar -cvf archive.tar data
```

Creates a tar archive of the `data` directory (no compression).

### 34. Check sizes

```bash
ls -lh
```

Lists files with human-readable sizes.

### 35. Disk usage summary for data

```bash
du -hs data
```

Shows disk usage summary for `data`.

### 36. Disk usage for tar file

```bash
du -hs archive.tar
```

Shows disk usage for the tar file.

### 37. Remove data directory recursively

```bash
rm -rf data
```

Removes the `data` directory and its contents.

### 38. Extract archive back into data

```bash
tar -xvf archive.tar
```

Extracts the archive back into the `data` directory.

### 39. Inspect extracted directory

```bash
ls data/
```

Lists files in the extracted `data` directory.

### 40. Long list of extracted directory

```bash
ls data/ -lh
```

Lists files in `data` with human-readable sizes.

### 41. Show history

```bash
history
```

Displays the command history.

---

*End of Session 10 — 12 Jul 2025*

