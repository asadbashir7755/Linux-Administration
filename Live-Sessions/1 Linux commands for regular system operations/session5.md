# 📅 Session 5 — 14 Jun 2025 (Session 02)

## 🖥️ Commands Learned

### 1. Show current user

```bash
whoami
```

Shows the current effective username.

### 2. List files

```bash
ls
```

Lists files and directories in the current location.

### 3. View local copy of passwd

```bash
cat passwd
```

Displays contents of the local `passwd` file.

### 4. Numbered output

```bash
cat -n passwd
```

Shows the file with line numbers.

### 5. Save numbered output to file

```bash
cat -n passwd > passwd_num
```

Writes the numbered output to `passwd_num`.

### 6. View the numbered file

```bash
cat passwd_num
```

Displays `passwd_num` content.

### 7. Count lines

```bash
cat passwd_num | wc -l
```

Counts number of lines. Note: `wc -l < passwd_num` avoids a subshell and is slightly more efficient.

### 8. First 10 lines

```bash
head passwd_num
```

Shows the first 10 lines of the file.

### 9. Last 10 lines

```bash
tail passwd_num
```

Shows the last 10 lines of the file.

### 10. Last 5 lines

```bash
tail -5 passwd_num
```

Shows the last 5 lines.

### 11. Last 15 lines

```bash
tail -15 passwd_num
```

Shows the last 15 lines.

### 12. First 5 lines

```bash
head -5 passwd_num
```

Shows the first 5 lines.

### 13. First 15 lines

```bash
head -15 passwd_num
```

Shows the first 15 lines.

### 14. Repeat: last 5 lines

```bash
tail -5 passwd_num
```

Repeat to re-check the bottom of the file.

### 15. Save last 5 lines to a file

```bash
tail -5 passwd_num > abc_log_14_jun_2025.txt
```

Saves the last 5 lines into `abc_log_14_jun_2025.txt`.

### 16. View saved lines

```bash
cat abc_log_14_jun_2025.txt
```

Displays the saved excerpt.

### 17. Follow system messages log (live)

```bash
tail -f /var/log/messages
```

Follows `/var/log/messages` in real time. Press `Ctrl+C` to stop.

### 18. Follow authentication log (live)

```bash
tail -f /var/log/secure
```

Follows `/var/log/secure` (auth log). Press `Ctrl+C` to stop.

### 19. List (repeat)

```bash
ls
```

List current directory contents.

### 20. Paginate with `more`

```bash
more passwd_num
```

Simple pager (forward-only). Use `q` to quit.

### 21. Paginate with `less`

```bash
less passwd_num
```

Advanced pager with navigation and search. Use `/` to search and `q` to quit.

---

*End of Session 5 — 14 Jun 2025*
