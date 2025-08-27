# 📋 Linux Practice Interview Questions

## 📌 Session 1 – 30 Interview-Based Questions

This section contains practical, scenario-based questions to help you prepare for Linux system administration interviews. Topics include hostname management, metadata, manuals, command history, and directory listings.

---

### 🔹 Hostname & Metadata

1. Your server hostname is showing as localhost.localdomain after reboot. How would you set a persistent hostname?
2. What is the difference between hostname and hostnamectl commands?
3. If you update hostname with hostname, why might it not persist across reboots?
4. How do you set a system hostname along with deployment environment details (e.g., production or development)?
5. Your manager asks you to tag servers with metadata like chassis type and location. Which command would you use?
6. A developer mistakenly runs hostnamectl Chassis server with incorrect syntax. What will happen and how do you correct it?
7. You need to confirm whether the chassis type of your server is properly set to “server.” Which command will you use?
8. How do you differentiate between static, pretty, and transient hostnames in Linux?
9. Suppose you moved a server to a new datacenter rack. How would you update and verify its physical location in metadata?
10. If you wanted to script hostname changes across 100 servers, what would be the best approach?

---

### 🔹 Manuals & Documentation

11. A junior admin doesn’t know the syntax of hostnamectl. How would you help him without using Google?
12. What is the purpose of the man command and how do you exit once inside it?
13. If man hostnamectl doesn’t open, what could be the issue and how do you fix it?
14. How can you find only the description section of a manual page without scrolling?
15. Apart from man, which other commands can provide documentation on Linux utilities?

---

### 🔹 Command History

16. You typed a very long command yesterday and want to find it again. Which command would you use?
17. How do you rerun the last command from history without retyping it?
18. If you want to prevent sensitive commands (like passwords) from being stored in history, how can you do it?
19. How do you clear command history for the current user?
20. A team lead asks you to check what commands were executed by a user in the last hour. How would you check?

---

### 🔹 Directory Listings (ls)

21. What is the difference between ls -l and ls -lh?
22. How can you list files in /var/log sorted by modification time, most recent first?
23. Which option with ls shows hidden files like .bashrc?
24. What is the difference between ls -a and ls -A?
25. If you want to view file sizes in KB/MB/GB format, which option will you use?
26. A user wants to see files in reverse order of modification time. Which command will achieve this?
27. How can you view directory contents sorted in “natural” numeric order (e.g., file1, file2 … file10)?
28. Your server has hundreds of log files. How can you display only the last 10 files sorted by time?
29. How do you distinguish between a file, directory, and symbolic link in ls -l output?
30. If a directory has restricted access, what error will ls -l return and how do you overcome it?

---

*Use these questions for self-assessment and interview preparation. Good luck!*

