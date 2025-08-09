# 📅 Session 7 — 21 Jun 2025

## 🖥️ Commands Learned

### 1. Show listening TCP/UDP sockets with program names

```bash
netstat -tulpn
```

Shows listening TCP/UDP sockets with program names and numeric addresses.  
Flags: `-t` TCP, `-u` UDP, `-l` listening, `-p` program, `-n` numeric.

### 2. Show listening sockets (resolve names)

```bash
netstat -tulp
```

Same as above but resolves names (no `-n`).

### 3. Repeat listening sockets (numeric)

```bash
netstat -tulpn
```

Repeat: shows listening sockets with numeric addresses.

### 4. Show current system time

```bash
date
```

Displays the current system time.

### 5. Show hardware (RTC) clock

```bash
hwclock
```

Displays the hardware (RTC) clock time.

### 6. Set system time

```bash
date -s "Sat Jun 21 10:40:59 PM PKT 2025"
```

Sets the system time. Requires root privileges.

### 7. Sync system clock from hardware clock

```bash
hwclock --hctosys
```

Sets the system clock from the hardware clock.

### 8. Sync hardware clock from system time

```bash
hwclock --systohc
```

Sets the hardware clock from the current system time.

### 9. Open or create a file in nano

```bash
nano file_23
```

Opens or creates `file_23` in the nano editor.  
Tip: Save with `Ctrl+O`, exit with `Ctrl+X`.

### 10. View file contents

```bash
cat file_23
```

Displays the contents of `file_23`.

### 11. Edit file again in nano

```bash
nano file_23
```

Reopens `file_23` in nano for editing.

### 12. Open file in Vim

```bash
vim file_24
```

Opens `file_24` in Vim.  
Tip: Press `i` to insert, `Esc`, then `:wq` to save and quit.

### 13. View contents of file_24

```bash
cat file_24
```

Displays the contents of `file_24`.

### 14. Edit file_24 in nano

```bash
nano file_24
```

Edits `file_24` in nano.

### 15. Open file_24 in vi

```bash
vi file_24
```

Opens `file_24` in vi (Vim-compatible).

### 16. Open file_24 in vi again

```bash
vi file_24
```

Repeat: opens `file_24` in vi.

### 17. Launch Vim tutorial

```bash
vimtutor
```

Starts the interactive Vim tutorial.

### 18. Create/edit file1 in Vim

```bash
vim file1
```

Creates or edits `file1` in Vim.

### 19. Launch Vim tutor again

```bash
vimtutor
```

Repeat: launches the Vim tutorial for more practice.

---

*End of Session 7 — 21 Jun 2025*
