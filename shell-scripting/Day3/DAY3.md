# Day 3 – Useful Linux Commands & Cron Job Automation

## Overview
On **Day 3**, I focused on learning and practicing some powerful Linux commands that simplify system monitoring and file handling. Additionally, I learned how to automate tasks using **cron jobs** by writing and scheduling scripts with `crontab`.

---

## ✅ Topics Covered Today

### 🔹 Linux Commands Practiced:
- **`head`** – View the first few lines of a file.
- **`tail`** – View the last few lines of a file (especially useful for logs).
- **`more`** – Paginate through a file.
- **`find`** – Locate files and directories based on conditions.
- **`awk`** – Powerful tool for text processing and pattern scanning.

These commands are essential for working with large files, filtering logs, and automating data extraction — all crucial in a DevOps environment.

---

### 🔹 Cron Job Automation:
I created and scheduled a shell script using `crontab` to automatically log time and date details. This script helps track scheduled executions.

---

## 📂 File Included in This Folder

### `log_time.sh`

This script appends the current date, time, weekday, and month to a log file (`timelog2.txt`) every time it's executed by cron.

#### 🔸 Script Content:

```bash
#!/bin/bash

currenttime=$(date "+Date : %y:-%m-%d | Time : %H:%M:%S | Day : %A | Month : %B")
echo "cron run at : $currenttime " >> ~/Desktop/cronpractise/timelog2.txt
