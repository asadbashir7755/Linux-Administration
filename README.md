<div align="center">

# 🐧 **Linux System Administration Command Reference**

<b>Comprehensive Guide & Training Log</b>

<i>All commands are preserved in the exact sequence as provided during the course. This document is for learning and quick reference.</i>

</div>

---

## 📖 About This Repository

This repository provides a practical, session-based reference for Linux system administration. It covers essential commands and workflows for managing files, users, networking, services, monitoring, and more. Ideal for students, sysadmins, and anyone preparing for Linux certification or interviews.

---

## 🚀 Usage

> **Note:** This guide is for educational purposes and quick reference. Always test commands in a safe environment before using them on production systems.

---

## 📚 Quick Command Reference

### 🗂️ File & Directory Management
| Command | Description |
|---------|-------------|
| `ls`, `ls -l`, `ls -a` | List files and directories |
| `cd`, `pwd` | Change/show current directory |
| `mkdir`, `rmdir` | Create/remove directories |
| `touch`, `cp`, `mv`, `rm` | Create, copy, move, remove files |
| `tree` | Show directory structure |
| `cat`, `more`, `less`, `head`, `tail` | View file contents |
| `find`, `du`, `df` | Search and check disk usage |
| `tar`, `zip`, `gzip`, `bzip2` | Archive and compress files |

---

### 👤 User & Group Management
| Command | Description |
|---------|-------------|
| `useradd`, `usermod`, `userdel` | Add, modify, delete users |
| `passwd` | Set/change user password |
| `groupadd`, `groupdel`, `usermod -aG` | Manage groups and memberships |
| `id`, `whoami` | Show user/group info |
| `chage` | Manage password aging |

---

### 🌐 Networking
| Command | Description |
|---------|-------------|
| `ip a`, `ifconfig` | Show network interfaces |
| `ping`, `netstat`, `ss` | Test connectivity, show sockets |
| `nmtui` | NetworkManager TUI |
| `hostnamectl` | Manage hostname and metadata |

---

### 🔥 Services & Package Management
| Command | Description |
|---------|-------------|
| `systemctl`, `service` | Manage system services |
| `dnf`, `yum`, `rpm` | Install, update, remove packages |
| `dnf group install` | Install package groups |

---

### 📊 Monitoring & Logging
| Command | Description |
|---------|-------------|
| `top`, `htop` | Monitor system resources |
| `free`, `lsblk`, `lscpu` | Check memory, disks, CPU |
| `uptime` | Show system uptime |
| `history` | Show command history |
| `journalctl`, `tail -f` | View logs |

---

### 🔄 File Transfer & Links
| Command | Description |
|---------|-------------|
| `scp`, `rsync` | Secure file transfer |
| `ln -s`, `ln` | Create symbolic/hard links |

---

## 📝 Full Session Log

---
<!--
	The following section contains the full, chronological session log with all commands and notes as originally recorded. This is preserved for detailed study and reference.
-->
---
Prepared for: Asad Bashir • Course log with descriptions, in the exact sequence you provided. Copy to Google Docs/Word and export as PDF.
________________________________________
Session 1 — 4 Jun 2025
1.	clear
o	Clears the terminal screen.
o	Note: Doesn’t affect command history or environment.
2.	hostname
o	Prints the current system hostname.
3.	hostnamectl set-hostname web2.abc.com.pk
o	Sets the static hostname to web2.abc.com.pk.
o	Note: Requires sudo/root; persists across reboots.
4.	hostname
o	Verifies the new hostname after change.
5.	man hostname
o	Opens the manual page for hostname.
o	Note: Press q to quit.
6.	man hostnamectl
o	Manual for hostnamectl (manage hostname/metadata).
7.	hostnamectl deployment development
o	Sets deployment metadata to “development”.
8.	hostnamectl
o	Shows full hostname status and metadata.
9.	hostnamectl deployment Production
o	Updates deployment metadata to “Production”.
10.	hostnamectl
o	Verify deployment change.
11.	hostnamectl Chassis Server
o	Incorrect syntax/case.
o	Note: Use lowercase subcommands: hostnamectl chassis server.
12.	hostnamectl Chassis server
o	Still incorrect due to capitalized “Chassis”.
13.	hostnamectl chassis server
o	Sets chassis metadata to “server”.
14.	hostnamectl
o	Verify chassis value.
15.	hostnamectl location khi_dc1_RA3_33U
o	Sets location metadata (e.g., DC/rack/slot).
16.	hostnamectl
o	Verify location set.
17.	history
o	Prints command history (session-based list).
18.	ls
o	Lists non-hidden entries in current directory.
19.	ls -l
o	Long listing (permissions, owner, size, time).
20.	ls -l /
o	Long listing of root directory.
21.	ls -l /dev
o	Long listing of device directory.
22.	ls -l /var/
o	Long listing of /var.
23.	ls -lh /var/
o	Long listing with human-readable sizes.
24.	ls -lh /var/log/
o	Human-readable listing of logs.
25.	ls -l /var/log/
o	Long listing of logs.
26.	ls -lh /var/log/
o	Repeat with human-readable sizes.
27.	ls -hl /var/log/
o	Same as -lh; options order doesn’t matter.
28.	ls -hlr /var/log/
o	Reverse sort order.
29.	ls -hl /var/log/
o	Human-readable long listing.
30.	ls -hlt /var/log/
o	Sort by modification time (newest first).
31.	ls -hltr /var/log/
o	Sort by time, reversed (oldest first).
32.	ls -a /var/log/
o	Include hidden entries.
33.	ls -a
o	Show hidden files in current directory.
34.	ls
o	Standard list (non-hidden).
35.	ls -a
o	Show hidden entries again.
36.	ls -A
o	Like -a but excludes . and ...
37.	ls -Alv
o	Long list, almost-all, natural version sort for names.
________________________________________
Session 2 — 10 Jun 2025
45.	pwd
o	Prints the current working directory.
46.	ls
o	List contents.
47.	cd audit/
o	Change into audit subdirectory.
48.	pwd
o	Confirm directory change.
49.	ls
o	List contents of audit.
50.	cd ..
o	Move one level up.
51.	ls
o	List parent directory contents.
52.	cd audit/
o	Enter audit again.
53.	pwd
o	Show current path.
54.	cd ../..
o	Move up two levels.
55.	pwd
o	Confirm path.
56.	ls
o	List contents.
57.	cd log/audit/
o	Navigate via relative path.
58.	pwd
o	Confirm.
59.	ls
o	List contents.
60.	cd
o	Go to home directory.
61.	pwd
o	Confirm home directory.
62.	ls /home/
o	List user home directories.
63.	ls
o	List current directory.
64.	mkdir abc
o	Create directory abc.
65.	ls
o	Verify creation.
66.	mkdir Abc
o	Create directory Abc (case-sensitive).
67.	ls
o	Verify.
68.	mkdir ABc
o	Create directory ABc.
69.	ls
o	Verify.
70.	mkdir ABC
o	Create directory ABC.
71.	ls
o	Verify.
72.	mkdir -p a/b/c/d/e
o	Create nested directories; -p makes parents.
73.	ls
o	Verify top-level creation.
74.	ls a
o	List inside a.
75.	ls a/b/
o	List inside a/b.
76.	ls a/b/c
o	List inside a/b/c.
77.	ls a/b/c/d/
o	List inside a/b/c/d.
78.	ls a/b/c/d/e/
o	List inside a/b/c/d/e.
79.	tree
o	Show directory tree structure.
o	Note: Install package if missing.
80.	ls
o	Back to listing.
81.	mkdir .xyz
o	Create hidden directory .xyz.
82.	ls
o	Hidden items don’t show without -a.
83.	ls -a
o	Show hidden files/dirs (includes .xyz).
84.	mkdir .xyz/xyz
o	Create subdir inside hidden dir.
85.	ls .xyz/
o	List contents of .xyz.
86.	ls
o	List current dir.
87.	ls -l
o	Long listing.
88.	ll
o	Alias (usually ls -alF).
o	Note: Depends on shell/distro.
89.	touch zubair
o	Create file or update its timestamp.
90.	ls -l
o	Verify file with long list.
91.	touch ABC
o	Create/update file ABC.
92.	ll
o	Long listing including hidden.
93.	touch zubair
o	Updates timestamp (file already exists).
94.	ll
o	Verify.
________________________________________
Session 3 — 12 Jun 2025
28.	mv Music Pictures
o	Move/rename Music to Pictures (context-dependent).
o	Note: If Pictures exists, Music moves inside it.
29.	ls
o	Verify changes.
30.	ls Pictures/
o	Inspect Pictures directory.
31.	touch abc
o	Create file abc.
32.	ls
o	Verify.
33.	mv abc Downloads/
o	Move abc into Downloads.
34.	ls
o	Verify.
35.	ls Downloads/
o	Confirm abc is there.
36.	mv Documents/ My_files
o	Rename Documents to My_files (or move into My_files if it exists).
37.	ls
o	Verify.
38.	touch xyz
o	Create file xyz.
39.	ls
o	Verify.
40.	ls -l
o	Long listing.
41.	ll
o	Alias for long listing (with hidden).
42.	clear
o	Clear terminal screen.
43.	ls
o	List contents after clear.
44.	cat xyz
o	Show xyz contents (likely empty initially).
o	Note: * in history marks current command; it doesn’t change behavior.
45.	cat > my_file
o	Overwrite/create my_file from stdin. End with Ctrl+D.
o	Note: Be careful—overwrite destroys previous content.
46.	# Ctrl+d ---> to Save
o	Comment/note (not executed). Indicates how to end input.
47.	cat my_file
o	Display contents of my_file.
48.	cat >> my_file
o	Append via stdin. End with Ctrl+D.
49.	cat my_file
o	Verify appended content.
50.	cat > my_file
o	Overwrite my_file again.
51.	cat my_file
o	Display current contents.
52.	cat >> my_file
o	Append more text.
53.	ls
o	List directory.
54.	echo "This is my first line"
o	Prints string to stdout.
55.	echo "This is my first line" > second_file
o	Create/overwrite second_file with a line.
56.	cat second_file
o	Show contents.
57.	echo "This is my second line" >> second_file
o	Append second line.
58.	cat second_file
o	Verify.
59.	echo "This is my third line" >> second_file
o	Append third line.
60.	cat second_file
o	Verify.
61.	cat -n second_file
o	Show with line numbers.
62.	cat second_file
o	Show without line numbers.
63.	cat /etc/passwd
o	Display system accounts file (read-only).
64.	cat -n /etc/passwd
o	Numbered output of passwd.
65.	ls
o	List current directory.
66.	cp my_file Pictures/
o	Copy my_file into Pictures.
67.	ls Pictures/
o	Verify copy.
68.	cp second_file Pictures/
o	Copy second_file into Pictures.
69.	ls Pictures/
o	Verify both files exist.
70.	ls
o	List current directory.
71.	ls Pictures/
o	Inspect again.
72.	ls
o	Back to current dir list.
73.	ls Videos/
o	List Videos (may be empty).
74.	ls Pictures/
o	Recheck Pictures.
75.	tree
o	View directory tree to visualize structure.
76.	cp -r Pictures/ Videos/
o	Recursively copy Pictures into Videos.
77.	ls Videos/
o	Verify destination.
78.	ls Videos/Pictures/
o	Inspect the copied directory.
79.	tree
o	Confirm structure post-copy.
80.	ls
o	List current dir.
81.	pwd
o	Print working directory.
82.	cp -r /home/zubair/Downloads /home/zubair/Templates/
o	Copy Downloads into Templates recursively.
o	Note: Requires permissions.
83.	ls
o	Verify.
84.	cp /etc/passwd .
o	Copy passwd to current directory as passwd.
85.	ls
o	Verify.
86.	cp /etc/passwd user_info
o	Copy passwd content to user_info.
87.	ls
o	Verify.
88.	cat passwd
o	View local copy of passwd.
89.	ls
o	List.
90.	cat user_info
o	View user_info.
91.	ls
o	List.
92.	touch Passwd
o	Create file named Passwd.
93.	ls
o	List.
94.	cat passwd
o	Show passwd (lowercase).
95.	cat Passwd
o	Show Passwd (uppercase P, likely empty).
o	Note: Linux is case-sensitive; these are different files.
________________________________________
Session 4 — 14 Jun 2025 (Session 01)
1.	history
o	Show command history.
2.	ls -a
o	List including hidden files.
3.	cat .bash_history
o	Display saved Bash history file.
4.	cat > .bash_history
o	Overwrite Bash history (clears previous history).
o	Note: Generally not recommended.
5.	cat .bash_history
o	Show current (possibly replaced) history.
6.	history
o	Show in-memory history again.
7.	ls
o	List files.
8.	history
o	Repeat history display.
9.	history > my_history
o	Save history to file.
10.	cat my_history
o	View saved history.
11.	ls
o	List.
12.	ls -l
o	Long listing.
13.	ls -la
o	Long listing with hidden.
14.	ls -la > file_list
o	Save listing to file_list.
15.	cat file_list
o	View file_list.
16.	history >> file_list
o	Append history to file_list.
17.	cat file_list
o	Verify combined contents.
18.	ls
o	List.
19.	pwd
o	Print working directory.
20.	which ls
o	Path to ls executable.
21.	which pwd
o	Path to pwd.
22.	which passwd
o	Path to passwd.
23.	man ls
o	Manual page for ls.
24.	info ls
o	GNU info doc for ls.
25.	whatis ls
o	One-line description.
26.	whatis pwd
o	One-line description.
27.	cal
o	Current month calendar.
28.	cal -y
o	Calendar for current year.
29.	cal -y > cal_2025
o	Save year calendar to cal_2025.
30.	cat cal_2025
o	View saved calendar.
31.	cal -m
o	Monday as first day of week.
32.	cal 20 01 1992
o	Show a specific month/year.
o	Note: GNU cal accepts flexible args; goal is Jan 1992.
33.	cal 06 07 2047
o	Show July 2047 (arg order varies by implementation).
34.	cal -y 2026
o	Full year 2026.
35.	cal -y 2028
o	Full year 2028.
36.	cal -j
o	Julian day numbers.
37.	cal -j 2025
o	Year 2025 with Julian days.
38.	date
o	Show current system time.
39.	date -s "Fri Jun 14 09:10:33 PM PKT 2025"
o	Set system time. Requires root.
o	Note: Avoid manual set if NTP/chrony syncing.
40.	su
o	Switch user (root if unspecified). Needs password.
41.	history
o	Show history.
42.	history
o	Show history again (new shell/offset).
43.	date
o	View current time.
44.	date -s "Fri Jun 14 09:13:39 PM PKT 2025"
o	Set time.
45.	date
o	Verify.
46.	date -s "Fri Jun 13 09:13:39 PM PKT 2025"
o	Set time (day earlier).
47.	date
o	Verify.
48.	date -s "Fri Jun 13 10:30:39 PM PKT 2025"
o	Set time again.
49.	date
o	Verify.
50.	date -s "Sat Jun 14 09:15:39 PM PKT 2025"
o	Set time.
51.	date
o	Verify.
52.	man date
o	Manual for date flags/format.
53.	date
o	Show time.
54.	date +%b
o	Abbreviated month (e.g., Jun).
55.	date +%d
o	Day of month (01–31).
56.	date +%d-%m
o	Day-month.
57.	date +%d-%m-%y
o	Day-month-2-digit year.
58.	date +%d-%m-%Y
o	Day-month-4-digit year.
59.	date +%d_%m_%Y
o	Day_month_year with underscores.
60.	date +%d/%m/%Y
o	Day/month/year with slashes.
61.	date +%d%m%Y
o	Compact numeric date.
62.	date +%d%m%y
o	Compact date (2-digit year).
63.	date +%d%D%y
o	Mixed: %D is mm/dd/yy; result looks combined.
64.	date +%d%b%y
o	Day + abbreviated month + 2-digit year.
65.	date +%d-%b-%y
o	Day-abbrevMonth-2-digit year.
66.	date +%d-%b-%Y
o	Day-abbrevMonth-4-digit year.
67.	date +%Y_%b_%d_%H_%M_%s
o	Year_mon_day_hour_min_epochSeconds.
68.	date +%Y_%b_%d_%H_%M_%S
o	Year_mon_day_hour_min_sec (human-readable seconds).
69.	history
o	Show history.
________________________________________
Session 5 — 14 Jun 2025 (Session 2)
125.	whoami
o	Shows current effective username.
126.	ls
o	List files.
127.	cat passwd
o	Show contents of passwd (local copy).
128.	cat -n passwd
o	Numbered output.
129.	cat -n passwd > passwd_num
o	Save numbered output to file.
130.	cat passwd_num
o	View file.
131.	cat passwd_num | wc -l
o	Count lines.
o	Note: wc -l < passwd_num avoids a subshell.
132.	head passwd_num
o	First 10 lines.
133.	tail passwd_num
o	Last 10 lines.
134.	tail -5 passwd_num
o	Last 5 lines.
135.	tail -15 passwd_num
o	Last 15 lines.
136.	head -5 passwd_num
o	First 5 lines.
137.	head -15 passwd_num
o	First 15 lines.
138.	tail -5 passwd_num
o	Repeat last 5 lines.
139.	tail -5 passwd_num > abc_log_14_jun_2025.txt
o	Save the last 5 lines to file.
140.	cat abc_log_14_jun_2025.txt
o	View saved lines.
141.	tail -f /var/log/messages
o	Follow system messages log. Ctrl+C to stop.
142.	tail -f /var/log/secure
o	Follow auth/security log.
143.	ls
o	List.
144.	more passwd_num
o	Paginate view (forward only).
145.	less passwd_num
o	Paginate with search and navigation (/ to search, q to quit).
________________________________________
Session 6 — 15 Jun 2025
148.	lsblk
o	List block devices and topology.
149.	#block devices
o	Comment (not executed). Description: label for the topic.
150.	df
o	Filesystem disk usage.
151.	df -h
o	Human-readable sizes.
152.	lscpu
o	CPU architecture info.
153.	df -k
o	Use 1K blocks.
154.	df -m
o	Use 1M blocks.
155.	df -g
o	Use 1G blocks (support may vary).
156.	
o	(History marker with * only) No command executed.
o	Note: Blank/aborted entry.
157.	df -ka
o	1K blocks and include all filesystems (incl. pseudo).
158.	man df
o	Manual for df.
159.	df -h
o	Repeat human-readable usage.
160.	lscpu
o	Repeat CPU info.
161.	lscpu | grep Core
o	Filter lines containing “Core”.
162.	lscpu | grep Core > cpu_info.txt
o	Save filtered CPU info.
163.	ls
o	List files.
164.	cat cpu_info.txt
o	View saved CPU info.
165.	lscpu | grep zubair
o	Example grep with no expected match.
166.	ls
o	List.
167.	du anaconda-ks.cfg
o	Disk usage of a file.
168.	du /var/log/messages
o	Disk usage of a specific log file.
169.	du -h /var/log/messages
o	Human-readable file size.
170.	du -h /var/log
o	Per-directory sizes under /var/log.
171.	du -hs /var/log
o	Summary total for /var/log.
172.	ls /var/log
o	List logs to correlate with sizes.
173.	du -h /var/log
o	Repeat per-directory sizes.
174.	du -h /var/log/messages
o	Repeat file size.
175.	du -hs /var/log
o	Repeat summary.
176.	du -hs /var/
o	Summary for /var.
177.	du -hs /
o	Summary for root filesystem (can be slow).
178.	ls /var/log
o	List logs again.
179.	lsblk
o	Repeat block devices list.
180.	free
o	Memory and swap usage.
181.	free -h
o	Human-readable memory info.
182.	top
o	Interactive process viewer.
183.	ip a
o	Show all interfaces and IPs.
184.	ip a | grep inet
o	Filter address lines only.
185.	nmtui
o	NetworkManager TUI for managing connections.
186.	ifconfig
o	Legacy interface display (net-tools).
187.	uptime
o	System uptime and load averages.
188.	ping 127.0.0.1
o	Ping localhost to test networking stack.
o	Note: Default TTL depends on OS.
189.	# Default TTL Values
o	Comment/explanation line.
190.	# TTL Time TO Live
o	Comment elaboration.
191.	history
o	Show command history.
________________________________________
Session 7 — 21 Jun 2025
149.	netstat -tulpn
o	Show listening TCP/UDP sockets with program names (numeric addrs).
o	Flags: -t TCP, -u UDP, -l listening, -p program, -n numeric.
150.	netstat -tulp
o	Same as above but resolve names (no -n).
151.	netstat -tulpn
o	Repeat listening sockets (numeric).
152.	date
o	Show current system time.
153.	hwclock
o	Show hardware (RTC) clock.
154.	date
o	Show system time again.
155.	date -s "Sat Jun 21 10:40:59 PM PKT 2025"
o	Set system time. Requires root.
156.	date
o	Verify system time.
157.	hwclock
o	Read hardware clock.
158.	hwclock --hctosys
o	Set system clock from hardware clock.
159.	date
o	Verify after sync.
160.	hwclock
o	Verify hardware time.
161.	date -s "Sat Jun 21 10:40:59 PM PKT 2025"
o	Set system time again.
162.	date
o	Verify.
163.	hwclock
o	Read hardware time.
164.	hwclock --systohc
o	Set hardware clock from system time.
165.	hwclock
o	Verify.
166.	date
o	Verify system time.
167.	date -s "Sat Jun 21 08:46:59 PM PKT 2025"
o	Adjust system time.
168.	hwclock
o	Read hardware clock.
169.	hwclock --systohc
o	Sync hardware clock to system time.
170.	date
o	Verify final time.
171.	hwclock
o	Verify final hardware time.
172.	nano file_23
o	Open/create file in nano.
o	Tip: Save Ctrl+O, Exit Ctrl+X.
173.	cat file_23
o	View contents.
174.	nano file_23
o	Edit again.
175.	vim file_24
o	Open in Vim.
o	Tip: i insert, Esc, :wq save+quit.
176.	cat file_24
o	View contents.
177.	nano file_24
o	Edit in nano.
178.	vi file_24
o	Open in vi (Vim-compatible).
179.	vi file_24
o	Open again.
180.	vimtutor
o	Launch Vim tutorial (interactive).
181.	vim file1
o	Create/edit file1 in Vim.
182.	vimtutor
o	Launch tutor again for practice.

________________________________________
Session 8 — 6 Jul 2025 • Package Management — DNF
148.	# Package Manager
•	Note: Comment line; not executed.
149.	#yum yellow dog updater modified
•	Note: Yum stands for “Yellowdog Updater, Modified.”
150.	#yum yellowdog updater, modified
•	Note: Alternate phrasing; still a comment.
151.	#dnf dandified YUM
•	Note: DNF is “Dandified YUM,” the modern replacement for yum.
152.	dnf search epel-release
•	Search repositories for packages matching epel-release.
•	Note: EPEL provides extra packages for Enterprise Linux.
153.	ping google.com
•	Check network connectivity and DNS resolution.
•	Note: Use Ctrl+C to stop; requires ICMP allowed.
154.	dnf search epel-release
•	Repeat search to confirm results.
155.	dnf search nload
•	Search for the nload network monitor package.
156.	ls /etc/yum.repos.d/
•	List configured repository files.
157.	ls /etc/yum.repos.d/ -l
•	Long list repo files (permissions, timestamps).
158.	vi /etc/yum.repos.d/centos-addons.repo
•	Edit or view the centos-addons repo file.
159.	vi /etc/yum.repos.d/centos.repo
•	Edit/view the base CentOS repo file.
160.	dnf search nload
•	Re-run search for nload.
161.	dnf search epel-release
•	Re-run search for EPEL.
162.	dnf info epel-release.noarch
•	Detailed metadata for epel-release (version, repo, summary).
163.	dnf list installed
•	List all installed packages.
164.	dnf list installed > total_pkgs
•	Save the installed package list to a file.
165.	ls
•	Verify file saved.
166.	vim total_pkgs
•	View/edit the saved package list.
167.	dnf list installed | wc -l
•	Count installed packages (lines).
168.	dnf list installed | grep words.noarch
•	Check if “words.noarch” is installed.
169.	dnf list installed | grep nload
•	Check if nload is installed.
170.	dnf list installed | grep epel-release
•	Verify if EPEL release package is present.
171.	dnf info epel-release.noarch
•	Show info again to confirm.
172.	dnf install epel-release.noarch
•	Install EPEL repository release package.
•	Note: Requires sudo/root.
173.	dnf info epel-release.noarch
•	Confirm installation details.
174.	history
•	Show command history.
175.	pwd
•	Print working directory.
176.	ls yum.repos.d
•	List a relative path (works if current dir is /etc).
177.	ls
•	List current directory.
178.	ls ../../etc/yum.repos.d/
•	List repo dir via relative path.
179.	ls /etc/yum.repos.d/
•	List repo dir with absolute path.
180.	cd /etc/
•	Change directory to /etc.
181.	ls
•	List /etc contents.
182.	ls yum.repos.d/
•	List repo files within /etc.
________________________________________
Session 9 — 6 Jul 2025 • Package Management — DNF (Part 2)
184.	dnf search nlaod
•	Typo in package name; will likely return no results.
•	Note: Correct spelling is “nload.”
185.	dnf search nload
•	Search for the correct package.
186.	dnf info nload
•	Show package details for nload.
187.	dnf install nload
•	Install nload (interactive confirmation).
188.	dnf install nload -y
•	Install nload without prompting.
189.	nload
•	Run the network monitor (TUI).
•	Note: Use arrow keys/q to quit.
190.	dnf info nload
•	Verify installed version.
191.	dnf remove nload
•	Remove nload (interactive).
192.	dnf remove nload -y
•	Remove without prompt.
193.	dnf info nload
•	Show info (may indicate not installed).
194.	dnf install nload -y
•	Reinstall nload.
195.	dnf update nload
•	Update nload to latest available version.
196.	dnf update epel-release
•	Update EPEL release package.
197.	dnf info epel-release
•	Show details.
198.	dnf update epel-release
•	Repeat update command.
199.	dnf info epel-release
•	Confirm current version.
200.	dnf update
•	Update all packages to latest versions.
•	Note: Consider maintenance windows for system-wide updates.
201.	semanage
•	SELinux management tool (may not be installed).
•	Note: Provided by policycoreutils-python-utils or policycoreutils packages.
202.	whereis semanage
•	Locate binaries/man pages related to semanage.
203.	dnf provides semanage
•	Find which package supplies the “semanage” command.
204.	dnf provides nload
•	Identify which package provides nload binary.
205.	dnf provides ls
•	Query provider of “ls” (usually coreutils).
206.	dnf provides vim
•	Determine which package provides vim.
207.	gnf group list
•	Typo “gnf”; this will fail.
•	Note: Should be dnf group list.
208.	dnf group list
•	List available and installed package groups.
209.	dnf group install "Server with GUI"
•	Install a group (meta-package) for GUI server environment.
•	Note: Large download; ensure disk space.
210.	dnf group list
•	Verify group status.
211.	dnf group install ".NET Development"
•	Install .NET development group (if available).
212.	dnf group install "Security Tools"
•	Install security tools group.
213.	dnf group remove "Security Tools"
•	Remove the previously installed group.
214.	dnf info nload
•	Re-check nload details.
215.	dnf remove -y nload
•	Remove nload silently.
216.	dnf install nload --download-only
•	Download package without installing (variant flag).
217.	dnf install nload --downloadonly
•	Equivalent option (canonical spelling).
•	Note: Packages cached under /var/cache/dnf/.
218.	find /var -name nload*
•	Locate cached RPMs.
219.	cp /var/cache/dnf/epel-4b20c555de8aed94/packages/nload-0.7.4-23.el9.x86_64.rpm /home/zubair/
•	Copy downloaded RPM from cache to home.
220.	cd /home/zubair/
•	Go to home directory.
221.	ls
•	Verify copied RPM.
222.	dnf clean packages
•	Clean cached packages.
•	Note: Frees space; removes package files from cache.
223.	find /var -name nload*
•	Check cache after cleaning.
224.	find . -name nload*
•	Search current directory for matching files.
225.	find . -name nload
•	Search for exact name.
226.	find . -name nload*
•	Repeat wildcard search.
227.	ls
•	List.
228.	dnf clean packages
•	Clean cache again.
229.	ls
•	List.
230.	vimtutor
•	Launch Vim tutorial (practice).
231.	whereis vimtutor
•	Locate the vimtutor binary/man page.
232.	history
•	Show history.
________________________________________
Session 10 — 12 Jul 2025 • Session 1: RPM | Session 2: Archiving (Tar)
235.	# Redhat Package Manager RPM
•	Note: Comment; RPM is the low-level package manager.
236.	rpm -qa
•	Query all installed RPM packages.
237.	rpm -qa | wc -l
•	Count installed packages.
238.	rpm -qa | grep nload
•	Check if nload is installed via RPM.
239.	rpm -qa | wc -l
•	Repeat count.
240.	rpm -qa
•	Repeat list.
241.	rpm -qa | grep words-3.0-39.el9.noarch
•	Search for a specific version of “words.”
242.	rpm -qa | grep words*
•	Glob in grep pattern; equivalent to grep 'words*' (note: regex vs shell glob).
243.	rpm -qa | grep words
•	Match any “words” package.
244.	rpm -qi words-3.0-39.el9.noarch
•	Detailed info for the specific words package.
245.	rpm -qi words
•	Query info by name (if uniquely resolves).
246.	rpm -qi nload
•	Package info for nload.
247.	ls
•	List directory.
248.	rpm -ivh nload-0.7.4-23.el9.x86_64.rpm
•	Install RPM from local file (i=install, v=verbose, h=hash).
•	Note: Use full and correct filename.
249.	rpm -qi nload
•	Verify installation.
250.	ls
•	List.
251.	rpm -Uvh nload-0.7.4-23.el9.x86_64.rpm
•	Upgrade or install if newer (U=upgrade).
252.	rpm -evh nload-0.7.4-23.el9.x86_64
•	Erase package (e=erase; v/h optional).
•	Note: Erase uses package name, not file.
253.	rpm -qi nload
•	Check if removed.
254.	cat /etc/redhat-release
•	Show distribution release version.
255.	uname -a
•	Kernel and system info.
256.	rpm -e epel-release
•	Remove EPEL release package.
257.	rpm -e epel-next-release
•	Remove EPEL next release (if installed).
258.	rpm -evh epel-release
•	Erase with verbose/hash.
259.	rpm -ivh https://dl.fedoraproject.org/pub/epel/9/Everything/x86_64/Packag.../epel-release-9-10.el9.noarch.rpm
•	Install RPM directly from URL.
•	Note: Ensure network access and SSL.
260.	ls
•	List.
261.	mkdir archiving_compression
•	Create working directory.
262.	cd archiving_compression/
•	Enter it.
263.	ls
•	List.
264.	cp /etc/passwd .
•	Copy passwd into workspace.
265.	ls
•	List.
266.	vi passwd
•	View/edit file.
267.	ls -lh
•	List with human-readable sizes.
268.	vi passwd
•	Edit again.
269.	ls -lh
•	Verify.
270.	vi passwd
•	Edit again.
271.	ls -lh
•	Verify.
272.	cp passwd my_pass
•	Make a copy.
273.	cp passwd your_pass
•	Make another copy.
274.	ls
•	List.
275.	ll
•	Long list (alias).
276.	ls -l
•	Long list.
277.	ls -lh
•	Long list human-readable.
278.	mkdir data
•	Create data dir.
279.	ls
•	List.
280.	mv my_pass data
•	Move file into data.
281.	mv passwd data
•	Move passwd into data.
282.	mv your_pass data
•	Move the last copy.
283.	ls
•	List.
284.	tree data/
•	Show tree of data (files inside).
285.	ls
•	List.
286.	mkdir data/abc
•	Create subdirectory.
287.	ls
•	List.
288.	tree data/
•	View updated structure.
289.	tar -cvf archive.tar data
•	Create tar archive of data (no compression).
290.	ls
•	List.
291.	ls -lh
•	Check sizes.
292.	du -hs data
•	Disk usage summary for data.
293.	du -hs archive.tar
•	Disk usage for tar file.
294.	ls
•	List.
295.	rm -rf data
•	Remove data dir recursively.
296.	ls
•	List.
297.	tar -xvf archive.tar
•	Extract archive back into data/.
298.	ls
•	List.
299.	ls data/
•	Inspect extracted directory.
300.	ls data/ -lh
•	Long list.
301.	history
•	Show history.
________________________________________
Session 11 — 19 Jul 2025 • Archiving & Compression Completed
233.	vi data/19_july
•	Create/edit a file within data.
234.	ls
•	List.
235.	cat data/19_july
•	View file contents.
236.	tar -rvf archive.tar data/19_july
•	Append file to existing archive.
237.	ls
•	List.
238.	tar -tvf archive.tar
•	List contents of tar file.
239.	vi data/19_july
•	Edit file again.
240.	rm data/ -rf
•	Remove directory with flags after path (works but nonstandard order).
•	Note: Safer form is rm -rf data/.
241.	tar -uvf archive.tar data/19_july
•	Update entry if the file is newer.
242.	tar -xvf archive.tar
•	Extract archive.
243.	ls data/
•	Check extracted files.
244.	cat data/19_july
•	View updated content.
245.	tar -tvf archive.tar
•	Verify archive entries.
246.	tar --delete -f archive.tar data/19_july
•	Delete specific member from archive.
•	Note: Supported with non-compressed tar files.
247.	tar -tvf archive.tar
•	Verify deletion.
248.	ls
•	List.
249.	zip -r data.zip data/
•	Create recursive zip archive.
250.	ls data -lh
•	List contents of data.
251.	du -hs data
•	Size of data directory.
252.	du -hs data.zip
•	Size of zip archive.
253.	ls -lh
•	List with sizes.
254.	rm -rf data
•	Remove data directory.
255.	ls
•	List.
256.	ll
•	Long list.
257.	ls -lh
•	Long list.
258.	unzip data.zip
•	Extract zip archive.
259.	ls
•	List.
260.	du -hs data
•	Check size after unzip.
261.	ls
•	List.
262.	gzip compressed.gz data
•	Incorrect syntax for gzip (expects file(s) to compress).
•	Note: To create a .gz with a specific name, use gzip -c datafile > compressed.gz or tar+gzip.
263.	gzip archive.tar.gz archive.tar
•	Also incorrect: gzip doesn’t take output then input.
•	Note: Correct: gzip archive.tar produces archive.tar.gz.
264.	gzip archive.tar
•	Correctly compress archive.tar to archive.tar.gz (replaces original).
265.	ls
•	List.
266.	ls -lh
•	Verify sizes.
267.	gzip archive.tar
•	Attempt to gzip again; if already .gz, it won’t find archive.tar.
•	Note: Will error if archive.tar no longer exists.
268.	ls
•	List.
269.	gzip archive.tar
•	Repeated attempt; same note as above.
270.	ls
•	List.
271.	ls -lh
•	Long list.
272.	rm -rf data
•	Remove data dir again (if present).
273.	ls
•	List.
274.	ll
•	Long list.
275.	gunzip archive.tar.gz
•	Decompress back to archive.tar.
276.	ls
•	List.
277.	ll
•	Long list.
278.	tar -xvf archive.tar
•	Extract tar again.
279.	ls
•	List.
280.	ll
•	Long list.
281.	du -sh data
•	Human-readable size of data.
282.	ls
•	List.
283.	gzip archive.tar
•	Compress archive again to .gz.
284.	ls -lh
•	Check sizes.
285.	ls
•	List.
286.	tar -cvf archive.tar data
•	Recreate tar from data (overwrites if exists).
287.	ll
•	Long list.
288.	ls -lh
•	Long list.
289.	bzip2 archive.tar
•	Compress tar with bzip2 → archive.tar.bz2.
290.	ls -lh
•	Verify file size.
291.	rm -rf data
•	Remove data.
292.	ll
•	Long list.
293.	ls -lh
•	Long list.
294.	bunzip2 archive.tar.bz2
•	Decompress bzip2 archive to archive.tar.
295.	ls -lh
•	Verify.
296.	tar -xvf archive.tar
•	Extract again.
297.	ls
•	List.
298.	ls data -lh
•	Inspect data.
299.	ls
•	List.
300.	ll
•	Long list.
301.	bzip2 archive.tar
•	Recompress to .bz2.
302.	ls -lh
•	Verify.
303.	tar -czvf compressed.tgz data
•	Create gzip-compressed tar (tgz).
304.	ls -lh
•	Verify.
305.	tar -cjvf compressed.tbz2 data
•	Create bzip2-compressed tar (tbz2).
306.	ls -lh
•	Verify.
307.	rm -rf data
•	Remove data directory.
308.	ls -lh
•	Long list.
309.	tar -xzvf compressed.tgz
•	Extract gzipped tar.
310.	ls
•	List.
311.	ll
•	Long list.
312.	rm -rf data
•	Remove extracted data.
313.	ll
•	Long list.
314.	tar -xjvf compressed.tbz2
•	Extract bzip2 tar.
315.	ls -lh
•	Verify.
316.	du -hs data
•	Size of extracted data.
________________________________________
Session 12 — 20 Jul 2025 • Links (Soft & Hard)
233.	# Links
•	Note: Topic header.
234.	# Soft link / Symlink / Symbolic Link
•	Note: Symlinks point to a path, can cross filesystems.
235.	# file/folder
•	Note: Symlinks can target files or directories.
236.	# cross filesystem support
•	Note: Symlinks can span filesystems.
237.	# Inodes different
•	Note: Symlink has its own inode; not the same as target.
238.	# Depends upon source/ source path
•	Note: Symlink validity depends on the target path existing.
239.	df -h
•	Check mounted filesystems and space.
240.	ls /backups/
•	List backups directory.
241.	pwd
•	Show current path.
242.	df -h
•	Repeat filesystem overview.
243.	df -hi
•	Show inode usage (useful for links).
244.	ls
•	List.
245.	ls -i
•	Show inode numbers with listing.
246.	ls
•	List.
247.	ls Downloads/
•	List Downloads directory.
248.	vi Downloads/abc
•	Create/edit a file “abc”.
249.	pwd
•	Print working directory.
250.	ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc
•	Create a symlink named linked_abc pointing to file abc.
251.	ls -l
•	Show symlink arrow (linked_abc -> target).
252.	ls
•	List.
253.	cat linked_abc
•	Read via symlink (shows target contents).
254.	vi linked_abc
•	Edit target through symlink.
255.	cat Downloads/abc
•	Confirm contents.
256.	ls -id linked_abc
•	Show inode and indicate it’s a symlink.
257.	ls -i linked_abc
•	Inode of the symlink (different from target).
258.	ls -i
•	List inodes in current dir.
259.	ls -i linked_abc
•	Repeat inode for symlink.
260.	ls -i Downloads/abc
•	Inode of the target file.
261.	cd Downloads/
•	Enter Downloads.
262.	ls
•	List.
263.	mv abc Abc
•	Rename target (case change).
264.	ll
•	Long list.
265.	cd ..
•	Up to home.
266.	ls -l
•	linked_abc now broken (points to old path/name).
•	Note: Symlinks do not auto-update on rename.
267.	cat linked_abc
•	Likely error (No such file) due to broken link.
268.	cd Downloads/
•	Go back in.
269.	ls
•	List.
270.	ls -i
•	Show inodes.
271.	mv Abc abc
•	Rename back to original.
272.	ls -i
•	Inode may remain the same; path restored.
273.	ls ..
•	List parent.
274.	ls -l ..
•	Long list parent; linked_abc should work again.
275.	cat ../linked_abc
•	Reading via symlink works again.
276.	ls
•	List.
277.	mv ..
•	Invalid usage (mv requires src and dst).
•	Note: Likely produced an error.
278.	mv abc ..
•	Move file out to parent directory.
279.	ls
•	List (abc gone from Downloads).
280.	cd ..
•	Up to home.
281.	ls
•	List (abc now here).
282.	ll
•	Long list.
283.	mv abc Downloads/
•	Move file back to Downloads.
284.	ll
•	Verify.
285.	ls
•	List.
286.	unlink linked_abc
•	Remove the symlink only (target untouched).
287.	ll
•	Verify symlink removal.
288.	ls Downloads/
•	Target file remains.
289.	ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc
•	Recreate symlink.
290.	ll
•	Verify symlink.
291.	ls -i /home/zubair/Downloads/abc
•	Inode of target.
292.	rm /home/zubair/Downloads/abc
•	Remove target file.
293.	ll
•	Symlink now broken.
294.	touch /home/zubair/Downloads/abc
•	Recreate a new empty target file.
295.	ll
•	Symlink now points to a (new) file (same path).
296.	ls -i /home/zubair/Downloads/abc
•	Inode changed (new file).
297.	ls
•	List.
298.	ll
•	Verify.
299.	file linked_abc
•	Identify type (symbolic link).
300.	file /dev/null
•	Identify device file.
301.	file /dev/sda1
•	Identify block device.
302.	file Downloads/
•	Identify directory.
303.	ls
•	List.
304.	file 28_jun_2025
•	Identify type of that path (may not exist).
305.	stat linked_abc
•	Detailed metadata for symlink (and target).
306.	stat /home/zubair/Downloads/abc
•	Detailed metadata for target file.
307.	ls
•	List.
308.	stat file_21
•	Show stats (file may or may not exist).
309.	cd archiving_compression/
•	Enter earlier working dir.
310.	stat archive.tar.gz
•	Stats for compressed tar.
311.	df -h
•	Filesystem usage overview.
312.	vi /backups/shared_file
•	Edit shared_file in /backups (create if needed).
313.	ln -s /backups/shared_file /home/zubair/imp_file
•	Create symlink imp_file to shared_file.
314.	cd ..
•	Up to home.
315.	ll
•	List and verify symlink.
316.	cat imp_file
•	Read through symlink.
317.	ls
•	List.
318.	ln -s /home/zubair/archiving_compression /home/zubair/Archiving_compression
•	Symlink to a directory (capitalization differs).
319.	ll
•	Verify directory symlink.
320.	cat imp_file
•	Read via symlink again.
321.	# HardLink
•	Note: Start of hard link section.
322.	# Within filesystem
•	Note: Hard links require same filesystem.
323.	# Does not depend upon source/ both copies are orignal
•	Note: Hard links are peer names to same inode.
324.	# hardlink is for files only
•	Note: Cannot hard link directories (typically prohibited).
325.	# both linked files have same inode number
•	Note: Key property of hard links.
326.	ls
•	List.
327.	ln /backups/shared_file /home/zubair/hard_link
•	Create hard link to shared_file (must be same filesystem).
328.	ls
•	List.
329.	ls Downloads/
•	List.
330.	ln /home/zubair/Downloads/abc /home/zubair/hard_link
•	Overwrite attempt; if hard_link exists, this fails unless -f and same FS.
331.	ls -l
•	Review links.
332.	cat Downloads/abc
•	Read target.
333.	vi Downloads/abc
•	Edit file (changes visible via all hard links).
334.	cat hard_link
•	Read via hard link (should match).
335.	ll
•	Long list.
336.	ls -i hard_link
•	Inode number for hard_link.
337.	ls -i Downloads/abc
•	Inode number should match hard_link.
338.	stat hard_link
•	Stats for the hard link.
339.	stat Downloads/abc
•	Stats for the original name (same inode).
340.	ln /home/zubair/Downloads/abc /home/zubair/hard_link
•	Another attempt to link to existing name; likely error unless removed first.
341.	rm /home/zubair/Downloads/abc
•	Remove one name; data persists via hard_link.
342.	cat hard_link
•	Contents still accessible (inode still referenced).
343.	ln /home/zubair/hard_link /home/zubair/Downloads/abc
•	Recreate another hard link back in Downloads.
344.	ls -i /home/zubair/Downloads/abc
•	Verify inode.
345.	cat /home/zubair/Downloads/abc
•	Contents present.
346.	find / -samefile hard_link
•	Find all hard links to the same inode (system-wide; slow; requires perms).
347.	find /home -samefile hard_link
•	Restrict search to /home.
348.	ls -i /home/zubair/Downloads/abc
•	Inode verification.
349.	ls -i /home/zubair/hard_link
•	Inode verification (should match).
350.	ls
•	List.
351.	ln /home/zubair/archiving_compression /home/zubair/arc
•	Attempt hard link to a directory; generally not permitted.
•	Note: Expect “Operation not permitted.”
352.	stat hard_link
•	Check link count and metadata.
________________________________________
Session 13 — 26 Jul 2025 • User Management (Part 1)
355.	# /etc/passwd Users' info
•	Note: Contains user accounts (name, UID, GID, home, shell).
356.	# /etc/shadow users' password
•	Note: Has hashed passwords; root-readable only.
357.	# /etc/gshadow Group password
•	Note: Group security file (root-only).
358.	# /etc/group Group info
•	Note: Group names and memberships.
359.	# /var/log/secure User login log file
•	Note: Authentication logs (distribution-dependent path).
360.	ls /etc/login.defs
•	Verify defaults file exists (user creation policies).
361.	ls -ld /etc/login.defs
•	Show permissions/ownership of login.defs.
362.	#/etc/login.defs this file contains new user defaults
•	Note: Documents UID ranges, password policies, etc.
363.	# /etc/skel/ contains required files and folders necsssory for a user
•	Note: Skeleton files copied to new user home.
364.	# /home/zubair User home direcctory
•	Note: Example home directory.
365.	#Types of user in Linux
•	Note: Header for classification.
366.	# 1 root -> Admin/Super/Power user
•	Note: UID 0.
367.	# 2 zubair,umair,ahmed -> General User
•	Note: Regular human users.
368.	# 3 apache,mysql,named -> System User
•	Note: Service accounts.
369.	# 4 zubair,umair,umais -> sudo User
•	Note: Regular users granted sudo privileges.
370.	# root UID 0
•	Note: Confirms root’s UID.
371.	# 0 < uid < 1000 = User ID (UID) 1->999 System Users
•	Note: Typical RHEL/CentOS range for system users.
372.	# User ID (UID) 1000 > General Users
•	Note: Human users typically start at 1000.
373.	vi /etc/passwd
•	View/edit user list (read-only unless root; caution).
374.	vi /etc/group
•	View/edit groups.
375.	vi /etc/passwd
•	Reopen passwd.
376.	vi /etc/group
•	Reopen group.
377.	vi /etc/shadow
•	View shadow (root only).
378.	vi /etc/gshadow
•	View group shadow (root only).
379.	tail /var/log/secure
•	Show auth log tail (logins, sudo, ssh, etc.).
380.	vi /etc/login.defs
•	Inspect user defaults (UID ranges, password expiration).
381.	ls /etc/skel/
•	List skeleton directory.
382.	ls -a /etc/skel/
•	Include hidden files (e.g., .bashrc).
383.	ls -A /etc/skel/
•	Like -a but omit . and ...
384.	ls -Al /etc/skel/
•	Long list including hidden.
385.	ls -Al /home/zubair/
•	Long list home dir (including hidden files).
386.	ls -Al /etc/skel/
•	Re-list skeleton dir.
387.	vi /etc/skel/.bash_profile
•	Inspect default shell profile.
388.	vi /etc/skel/.bashrc
•	Inspect default shell rc file.
389.	vi /etc/skel/.bash_logout
•	Inspect default logout script.

________________________________________
🗓️ Session 14 — 2 Aug 2025 • User and Group Management
354.	useradd -s /usr/bin/false umair 
• Create user umair with shell disabled to prevent login.
355.	passwd umair 
• Assign a password to umair.
356.	tail -2 /etc/passwd 
• Display last two user entries in the passwd file.
357.	su umair 
• Switch to user umair (will fail due to false shell).
358.	usermod -s /bin/bash umair 
• Change umair’s shell to /bin/bash to allow login.
359.	tail -2 /etc/passwd 
• Verify shell change for umair.
360.	su umair 
• Login as umair.
361.	usermod -s /usr/sbin/nologin umair 
• Change shell again to disallow interactive login.
362.	tail -2 /etc/passwd 
• Confirm updated shell entry.
363.	su umair 
• Login fails due to nologin shell.
364.	useradd -u 1010 -g 1010 salman 
• Create user salman with specified UID and GID.
365.	useradd -u 1010 -g 1004 salman 
• Attempt to reassign salman to different GID (will fail if user exists).
366.	tail -3 /etc/passwd 
• Check latest user additions.
367.	useradd -c "Zahid Ali" zahid 
• Create zahid with a custom comment.
368.	passwd zahid 
• Set zahid’s password.
369.	tail -4 /etc/passwd 
• Display recent user entries.
370.	usermod -c "Salman Khan" salman 
• Update salman’s comment field.
371.	tail -4 /etc/passwd 
• Verify updated comment.
372.	ls /home/ 
• View home directories of users.
373.	ls /var/ 
• List contents of /var.
374.	useradd -d /var/ifra ifra 
• Create user ifra with custom home directory /var/ifra.
375.	tail /etc/passwd 
• Confirm user ifra added.
376.	ls /var/ 
• Check if custom home directory exists.
377.	su - ifra 
• Login as ifra with full environment.
378.	ls -l /var/ 
• View permissions and ownership of /var.
379.	mkdir /var/dev 
• Create new directory for user dev.
380.	useradd -d /var/dev dev 
• Assign /var/dev as home for new user dev.
381.	ls -l /var/ 
• Confirm that /var/dev exists.
382.	passwd dev 
• Set password for dev.
383.	su dev 
• Switch to dev user.
384.	tail /etc/passwd 
• Confirm dev added to passwd.
385.	usermod -l zahidali zahid 
• Rename user zahid to zahidali.
386.	tail /etc/passwd 
• Confirm rename worked.
387.	usermod -l zahid zahidali 
• Rename zahidali back to zahid.
388.	tail /etc/passwd 
• Reconfirm username.
389.	su salman 
• Switch to user salman.
390.	usermod -L salman 
• Lock account salman.
391.	su salman 
• Login blocked due to account lock.
392.	su zubair 
• Switch to another user.
393.	passwd salman 
• Reset password for salman.
394.	su zubair 
• Return to zubair.
395.	usermod -L salman 
• Lock salman again.
396.	su zubair 
• Stay in current shell.
397.	usermod -U salman 
• Unlock account salman.
398.	su zubair 
• Continue session.
399.	tail /etc/shadow 
• View last entries in shadow file.
400.	tail -5/etc/shadow 
• Likely typo: missing space.
401.	tail -5 /etc/shadow 
• Proper syntax to view last 5 lines.
402.	usermod -L salman 
• Lock salman account again.
403.	grep -r salman /etc/shadow 
• Search for salman’s entry in shadow.
404.	usermod -U salman 
• Unlock salman.
405.	grep -r salman /etc/shadow 
• Confirm changes.
406.	man chage 
• Open manual for chage command.
407.	grep -r salman /etc/shadow 
• Monitor salman’s entry again.
408.	chage -m 3 salman 
• Set minimum password age to 3 days.
409.	grep -r salman /etc/shadow 
• Check shadow file to verify.
410.	su salman 
• Login as salman.
411.	chage -m 0 salman 
• Remove minimum age restriction.
412.	su salman 
• Re-login.
413.	grep -r salman /etc/shadow 
• Recheck shadow entry.
414.	chage -M 90 salman 
• Set max password age to 90 days.
415.	grep -r salman /etc/shadow 
• Verify expiration policy.
416.	chage -W 10 salman 
• Set warning 10 days before password expiration.
417.	grep -r salman /etc/shadow 
• Confirm warning policy.
418.	chage -E 2025-10-30 salman 
• Set account expiration date.
419.	grep -r salman /etc/shadow 
• Final verification.
420.	ls /home/ 
• Check home directories.
421.	userdel ali 
• Delete user ali.
422.	vi /etc/passwd 
• Inspect passwd file.
423.	useradd ali 
• Recreate user ali.
424.	vi /etc/passwd 
• Confirm user entry.
425.	userdel -r ali 
• Delete user and home directory.
426.	ls 
• List current directory contents.
427.	ls /home/ -l 
• Check home directory with permissions.
428.	userdel -r wali 
• Delete user wali and home directory.
429.	ls /home/ -l 
• Confirm deletion.
430.	cat /etc/group 
• View all system groups.
431.	groupadd stag 
• Create new group stag.
432.	cat /etc/group 
• Confirm group creation.
433.	useradd -g stag arshad 
• Create user arshad with primary group stag.
434.	id arshad 
• Show UID and GID for arshad.
435.	cat /etc/passwd 
• Confirm user added.
436.	id ifra 
• View groups assigned to ifra.
437.	usermod -aG stag ifra 
• Append ifra to group stag.
438.	id ifra 
• Confirm multiple group membership.
439.	groupadd qa 
• Create group qa.
440.	usermod -G qa ifra 
• Set qa as exclusive group for ifra.
441.	id ifra 
• View updated group list.
442.	usermod -G qa,stag ifra 
• Assign ifra to both qa and stag.
443.	id ifra 
• Confirm both group assignments.
444.	usermod -G stag ifra 
• Set stag as only supplementary group.
445.	id ifra 
• View final group membership.
________________________________________

