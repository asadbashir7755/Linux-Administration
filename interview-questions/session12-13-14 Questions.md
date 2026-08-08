# 🔐 Linux User & Group Management Interview Questions

## 📌 Sessions 12, 13 & 14 – User, Group, and Scenario-Based Questions

This section covers practical and scenario-based questions on user and group management, permissions, and troubleshooting in Linux. Use these for interview preparation and self-assessment.

---

### 👤 User Creation and Management

1. How would you create a user named `john` with a specific user ID (UID) of 1500 and assign them to the group `developers`?
2. Explain the process of creating a user without a home directory. What command would you use?
3. If a user `alice` is created with the command `useradd -M -u 1286 alice`, what does each option signify?
4. Describe how to create a user with a specific comment field and set their password to never expire.
5. What command would you use to change a user's shell to `/bin/bash`?

---

### 🔑 User Permissions and Access

6. A user reports they cannot log in via SSH. How would you troubleshoot and resolve this issue?
7. Explain the difference between `/bin/bash`, `/usr/bin/false`, and `/usr/sbin/nologin` as user shells.
8. How can you lock and unlock a user account? Provide the commands and explain their functions.
9. What is the purpose of the `/etc/login.defs` file?
10. How would you set a minimum password age of 3 days for a user named `bob`?

---

### 🗑️ User Deletion and Modification

11. What is the difference between `userdel` and `userdel -r`?
12. How would you rename a user from `oldname` to `newname`?
13. If a user `charlie` has been deleted, how can you recreate the user with the same UID and GID?
14. Explain how to change a user's primary group.

---

### 👥 Group Management Interview Questions

#### Group Creation and Management

15. How would you create a group named `admins` with a specific group ID (GID) of 2000?
16. Describe the process of adding a user to a group. What command would you use?
17. Explain the difference between primary and secondary groups in Linux.
18. How can you assign a user to multiple groups?
19. What command would you use to remove a user from a group?

#### Group Permissions and Access

20. What is the purpose of the `/etc/group` file?
21. How would you set a group password?
22. Explain the significance of the GID in group management.
23. What is the role of the `/etc/gshadow` file?
24. How can you view all groups a user belongs to?

#### Advanced Group Management

25. Describe how to create a group with a specific GID and assign it to a user.
26. How would you change a user's supplementary groups?
27. Explain the process of deleting a group. What precautions should be taken?
28. If a user `dave` is assigned to multiple groups, how can you ensure they have exclusive access to a specific group?

---

### 🧪 Scenario-Based Questions

29. A user `eve` is unable to access their home directory after login. How would you diagnose and fix the issue?
30. You need to create 10 users with usernames `user1` to `user10`, all with the same password and assigned to the group `staff`. Write a script to automate this process.
31. A user `frank` reports that they cannot execute a script located in a directory owned by a group `scripts`. How would you resolve this issue?
32. Explain how you would set up a system where users in the `admins` group have sudo privileges, but only for specific commands.

---

*Use these questions for self-assessment and interview preparation. Good luck!*