# 📅 Session 11 — 19 Jul 2025 • Archiving & Compression Completed

## 🖥️ Commands Learned

### 1. Create or edit a file within a directory

```bash
vi data/19_july
```
Creates or edits a file named `19_july` inside the `data` directory.

### 2. List directory contents

```bash
ls
```
Lists files in the current directory.

### 3. View file contents

```bash
cat data/19_july
```
Displays the contents of `data/19_july`.

### 4. Append file to an existing tar archive

```bash
tar -rvf archive.tar data/19_july
```
Appends `data/19_july` to the existing `archive.tar` file.

### 5. List contents of a tar archive

```bash
tar -tvf archive.tar
```
Lists the contents of `archive.tar` with details.

### 6. Edit file again

```bash
vi data/19_july
```
Edits `data/19_july` again.

### 7. Remove directory (nonstandard order)

```bash
rm data/ -rf
```
Removes the `data` directory and its contents. (Standard: `rm -rf data/`)

### 8. Update entry in archive if file is newer

```bash
tar -uvf archive.tar data/19_july
```
Updates the archive entry for `data/19_july` if the file is newer.

### 9. Extract archive

```bash
tar -xvf archive.tar
```
Extracts the contents of `archive.tar`.

### 10. Check extracted files

```bash
ls data/
```
Lists files in the extracted `data` directory.

### 11. View updated content

```bash
cat data/19_july
```
Displays updated content of `data/19_july`.

### 12. Verify archive entries

```bash
tar -tvf archive.tar
```
Lists entries in the archive to verify.

### 13. Delete specific member from archive

```bash
tar --delete -f archive.tar data/19_july
```
Deletes `data/19_july` from the archive (supported for non-compressed tar files).

### 14. Verify deletion

```bash
tar -tvf archive.tar
```
Verifies that the file was deleted from the archive.

### 15. Create recursive zip archive

```bash
zip -r data.zip data/
```
Creates a zip archive of the `data` directory and its contents.

### 16. List contents of data directory (human-readable)

```bash
ls data -lh
```
Lists contents of `data` with human-readable sizes.

### 17. Show size of data directory

```bash
du -hs data
```
Displays the total size of the `data` directory.

### 18. Show size of zip archive

```bash
du -hs data.zip
```
Displays the size of the `data.zip` archive.

### 19. List files with sizes

```bash
ls -lh
```
Lists files in the current directory with human-readable sizes.

### 20. Remove data directory

```bash
rm -rf data
```
Removes the `data` directory and its contents.

### 21. Long list

```bash
ll
```
Long listing of files (alias for `ls -l`).

### 22. Extract zip archive

```bash
unzip data.zip
```
Extracts the contents of `data.zip`.

### 23. Check size after unzip

```bash
du -hs data
```
Shows the size of the extracted `data` directory.

### 24. Compress archive.tar to archive.tar.gz

```bash
gzip archive.tar
```
Compresses `archive.tar` to `archive.tar.gz` (removes original).

### 25. Decompress archive.tar.gz

```bash
gunzip archive.tar.gz
```
Decompresses `archive.tar.gz` back to `archive.tar`.

### 26. Extract tar again

```bash
tar -xvf archive.tar
```
Extracts the tar archive.

### 27. Human-readable size of data

```bash
du -sh data
```
Shows the size of the `data` directory in human-readable format.

### 28. Compress tar with bzip2

```bash
bzip2 archive.tar
```
Compresses `archive.tar` to `archive.tar.bz2`.

### 29. Decompress bzip2 archive

```bash
bunzip2 archive.tar.bz2
```
Decompresses `archive.tar.bz2` back to `archive.tar`.

### 30. Create gzip-compressed tar (tgz)

```bash
tar -czvf compressed.tgz data
```
Creates a gzip-compressed tar archive (`.tgz`) of the `data` directory.

### 31. Create bzip2-compressed tar (tbz2)

```bash
tar -cjvf compressed.tbz2 data
```
Creates a bzip2-compressed tar archive (`.tbz2`) of the `data` directory.

### 32. Extract gzipped tar

```bash
tar -xzvf compressed.tgz
```
Extracts the gzip-compressed tar archive.

### 33. Extract bzip2 tar

```bash
tar -xjvf compressed.tbz2
```
Extracts the bzip2-compressed tar archive.

### 34. Size of extracted data

```bash
du -hs data
```
Shows the size of the extracted `data` directory.

---

## 📝 Bonus: Archive Integrity & Verification

### 35. Create a tar archive from a directory

```bash
tar -cvf archive.tar folderforarchive/
```
Creates a tar archive of the `folderforarchive` directory.

### 36. Generate SHA256 checksum for archive

```bash
sha256sum archive.tar > archive.sha256
```
Generates a SHA256 checksum for `archive.tar` and saves it to `archive.sha256`.

### 37. List files in current directory

```bash
ls
```
Lists files, including the archive and checksum.

### 38. Verify archive integrity with checksum

```bash
sha256sum -c archive.sha256
```
Verifies the integrity of `archive.tar` using the saved checksum.  
Output should show `archive.tar: OK` if the archive is unchanged.

---

*End of Session 11 — 19 Jul 2025*
folderforarchive/
folderforarchive/passwd
folderforarchive/passwd2
folderforarchive/passwd3
[root@asad archive-practice]# sha256sum archive.tar > archive.sha256
[root@asad archive-practice]# ls
archive.sha256  archive.tar  extra  folderforarchive
[root@asad archive-practice]# sha256sum -c archive.sha256
archive.tar: OK
[root@asad archive-practice]# 




*End of Session 11 — 19 Jul 2025*


