# 📅 Session 4 — 14 Jun 2025 (Session 01)

## 🖥️ Commands Learned

### 1. Command History

```bash
history
ls -a
cat .bash_history
cat > .bash_history
cat .bash_history
history
```

Displays past commands, including hidden files and history file manipulation (note: overwriting history is not recommended).

### 2. Save and View History

```bash
history > my_history
cat my_history
ls -l
ls -la > file_list
cat file_list
history >> file_list
cat file_list
```

Saves command history or file listings to files, appends data, and views contents.

### 3. Locate Commands and View Documentation

```bash
which ls
which pwd
which passwd
man ls
info ls
whatis ls
whatis pwd
```

Finds executable locations, opens manuals, and shows brief descriptions.

### 4. Calendar Commands

```bash
cal
cal -y
cal -y > cal_2025
cat cal_2025
cal -m
cal 20 01 1992
cal 06 07 2047
cal -y 2026
cal -y 2028
cal -j
cal -j 2025
```

Shows calendars, specific months/years, Julian dates, and saves them to files.

### 5. Date Commands

```bash
date
date -s "Fri Jun 14 09:10:33 PM PKT 2025"
su
date -s "Fri Jun 14 09:13:39 PM PKT 2025"
date -s "Fri Jun 13 09:13:39 PM PKT 2025"
date -s "Fri Jun 13 10:30:39 PM PKT 2025"
date -s "Sat Jun 14 09:15:39 PM PKT 2025"
man date
```

Displays and sets system time (root required), with caution if NTP is active.

### 6. Date Formatting

```bash
date +%b
date +%d
date +%d-%m
date +%d-%m-%y
date +%d-%m-%Y
date +%d_%m_%Y
date +%d/%m/%Y
date +%d%m%Y
date +%d%m%y
date +%d%D%y
date +%d%b%y
date +%d-%b-%y
date +%d-%b-%Y
date +%Y_%b_%d_%H_%M_%s
date +%Y_%b_%d_%H_%M_%S
```

Generates custom date/time formats for scripts or filenames.
