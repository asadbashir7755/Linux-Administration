# 📋 Linux Practice Interview Questions

## 📌 Session 4 – 30 Interview-Based Questions

This section provides scenario-based questions to help you master Linux command history, command location, documentation, and calendar utilities. Use these for interview preparation and self-assessment.

---

### 🔹 Command History

1. How does the `history` command differ from viewing `.bash_history` directly?
2. Why might `.bash_history` not immediately contain your most recent commands?
3. What is the risk of using `cat > .bash_history`?
4. How can you clear your history securely so no previous commands are visible?
5. If you need to save your history to a file before logging out, how would you do it?
6. What’s the difference between `>` and `>>` when redirecting history output?
7. How would a system administrator investigate what commands were executed by a user in the past?
8. How can you search your history for a specific command like `ssh`?
9. What environment variable controls the size of the history file?
10. How can you prevent a sensitive command (like a password) from being stored in history?

---

### 🔹 Locating Commands & Documentation

11. What is the difference between `which`, `type`, and `whereis` when locating commands?
12. How would you find out whether `ls` is a shell builtin or an external binary?
13. If you run `which ls` and get `/bin/ls`, what does that tell you?
14. What is the difference between `man ls` and `info ls`?
15. How can you find out in one line what the `pwd` command does without opening the full manual?
16. If a command is not found in `which`, what could be the reasons?
17. How do you check the man page section for `passwd` when it has multiple entries?
18. Why might a command not have a man page but still have an info page?
19. How do you check which section of the man pages a command belongs to?
20. What is the purpose of the `whatis` database, and how can it become outdated?

---

### 🔹 Calendar Commands

21. How do you display the calendar for the current year in Linux?
22. If you run `cal -y 2028`, what will be shown?
23. How do you save a full-year calendar into a file called `calendar.txt`?
24. What does `cal -j` do, and why might Julian days be useful?
25. How do you display the calendar for a specific month and year, for example July 2047?
26. How would you quickly check which day of the week your birthday falls on?
27. How do you display calendars in Monday-first format instead of Sunday?
28. If `cal` is not installed, what package provides it on most Linux distributions?
29. How can you check leap years using the `cal` command?
30. How could `cal` be useful in a scripting or scheduling context?

---

*Use these questions for self-assessment and interview preparation. Good luck!*