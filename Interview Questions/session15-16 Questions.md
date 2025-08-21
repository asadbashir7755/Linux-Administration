# 🧑‍💻 Linux Ownership & Group Ownership Interview Questions

## 📌 Sessions 15 & 16 – Ownership, Group Management, and Permissions

This section provides practical and scenario-based questions on Linux file/directory ownership, group management, permissions, and troubleshooting. Use these for interview preparation and self-assessment.

---

### 🔹 Basic Ownership

1. How do you check the owner and group of a file or directory? Which commands can you use?
2. Explain the difference between file owner, group owner, and others.
3. By default, when a user creates a file, who becomes the owner and what determines the group ownership?
4. How would you change the owner of a file `report.txt` to user `arshad`?
5. How would you change both owner and group of a directory `project/` to `zubair:qa` recursively?

---

### 🔹 Changing Group Ownership

6. What command is used to change the group ownership of a file or directory?
7. How would you add a user to a group and verify they belong to that group?
8. Explain the difference between `usermod -aG groupname username` and `gpasswd -a username groupname`.
9. How do you remove a user from a group?

---

### 🔹 Recursive Ownership Changes

10. You have a directory `/var/www/html` with nested files and directories. How would you change the owner to `www-data` and group to `web` for all nested items?
11. Explain the difference between `chown user:group folder/ -R` and changing ownership without `-R`.

---

### 🔹 Permissions & Path Inspection

12. How do you check permissions and ownership along a path for a nested directory?
13. What is the difference between `ls -l`, `ll`, and `namei -l`?
14. Explain how permissions propagate when using `chown -R` on nested directories.

---

### 🔹 Advanced Ownership Scenarios

15. If a directory’s group is `qa` and a user `ifra` is in both `qa` and `stag`, which group will own newly created files inside that directory?
16. What is a sticky bit and how does it affect permissions in a shared directory?
17. Explain the implications of changing a directory’s ownership to `root` while users still need write access.

---

### 🔹 Troubleshooting & Scenario-Based

18. A user complains they cannot access `folder1/fol_1/nested/`. How would you diagnose the issue using `ls`, `namei`, and permissions checks?
19. After deleting a group, how do you handle files that were owned by that group?
20. Explain a situation where using `chown -R user:group folder/` could break access for other users.

---

### 🔹 Commands Understanding

21. What is the difference between `chown user folder/` and `chown user.group folder/`?
22. Explain the purpose of `groupmod -n newgroup oldgroup`.
23. When would you use `gpasswd -a username groupname` vs `usermod -G groupname username`?

---

*Use these questions for self-assessment and interview preparation. Good luck!*