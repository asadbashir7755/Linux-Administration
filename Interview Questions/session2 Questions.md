# 📋 Linux Practice Interview Questions

## 📌 Session 2 – 30 Interview-Based Questions

This section contains practical, scenario-based questions to help you prepare for Linux system administration interviews. Topics include navigation, path management, directory operations, and file listing.

---

### 🔹 Navigation & Paths

1. What is the difference between an absolute path and a relative path in Linux? Give an example of each.
2. If you are in `/var/log/audit/` and you want to go directly to `/etc/ssh/`, how would you do it using both absolute and relative paths?
3. What happens if you run `cd` with no arguments?
4. How would you return to your previous working directory quickly without typing the full path?
5. You are in `/var/log/audit/`. How do you move two levels up to `/var/`?
6. If you run `cd ../../..` repeatedly, what will happen once you reach `/`?
7. How can you confirm your current directory at any time?
8. If you type `cd non_existing_dir`, what error will you see, and why?
9. How can you navigate to the home directory of another user (e.g., asad) directly from anywhere?
10. How do you quickly switch between two directories you are working in?

---

### 🔹 Directory Management

11. How do you create a single directory vs a nested directory path in one command?
12. If you run `mkdir a/b/c` without `-p` and `a` doesn’t exist, what will happen?
13. How do you create a directory with the name `test dir` (with a space in it)?
14. What is the purpose of the `-p` option in `mkdir`?
15. Can Linux directories be case-sensitive? For example, is `abc` the same as `ABC`?
16. How do you create a hidden directory and how can you check if it exists?
17. If you accidentally created a hidden directory called `.config`, how would you remove it?
18. How can you view directory structure in a tree format if the `tree` command is not installed?
19. Why would a system administrator use hidden directories?
20. What is the maximum depth `tree` command shows by default, and how can you control it?

---

### 🔹 Listing & Viewing Files

21. What is the difference between `ls`, `ls -l`, and `ll`?
22. How do you list files with their permissions, owner, size, and modification date?
23. How do you show all files, including hidden files, in your current directory?
24. What is the difference between `ls -a` and `ls -A`?
25. How would you display files in `/home` sorted by time of modification?
26. If you want to list files in human-readable format (KB, MB, GB), which option do you use?
27. How would you distinguish between files and directories in `ls -l` output?
28. Why might the command `ll` not work on some Linux systems?
29. How can you set up a permanent alias for `ls -l` so you don’t need to type it every time?
30. How would you find only directories inside `/var/log` using `ls` options?

---

*Use these questions for self-assessment and interview preparation. Good luck!*