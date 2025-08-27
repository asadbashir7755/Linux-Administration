# 📋 Linux Practice Interview Questions

## 📌 Session 8 & 9 – 30 Interview-Style Questions (DNF & Package Management)

This section covers essential and scenario-based questions on DNF, repositories, package management, troubleshooting, and system history. Use these for interview preparation and self-assessment.

---

### 🔹 Repository & EPEL

1. Why do we use the EPEL repository in CentOS/RHEL systems?
2. How do you check if the `epel-release` package is already installed?
3. What’s the difference between `dnf search epel-release` and `dnf info epel-release.noarch`?
4. What happens if you try to install `epel-release` without internet connectivity?
5. Why is it important to check repositories under `/etc/yum.repos.d/` before package installation?

---

### 🔹 Connectivity & Troubleshooting

6. How would you confirm network connectivity before running `dnf install`?
7. Why is `ping google.com` preferred over `ping 8.8.8.8` when testing DNS resolution?
8. If ping works but `dnf install` fails, what are possible causes?
9. What’s the purpose of editing `.repo` files inside `/etc/yum.repos.d/`?
10. Why is it risky to disable base repos in CentOS?

---

### 🔹 Package Management & Installed Packages

11. How do you list all installed packages in your system?
12. Why would you redirect installed package output to a file (`dnf list installed > total_pkgs`)?
13. How do you count the number of installed packages quickly?
14. What’s the significance of `.noarch` in package names like `words.noarch` or `epel-release.noarch`?
15. How would you verify if a specific package (e.g., `nload`) is installed?

---

### 🔹 Installation & Verification

16. What’s the difference between `dnf search nload` and `dnf info nload`?
17. Why would you use `dnf install epel-release.noarch` before searching for certain packages?
18. What does `dnf list installed | grep nload` return if the package is not present?
19. What is the purpose of `dnf install -y` compared to `dnf install` without `-y`?
20. How do you differentiate between dependencies installed with a package vs. manually installed ones?

---

### 🔹 Repo & File Management

21. What’s the difference between absolute and relative paths when listing repo files? (`ls /etc/yum.repos.d/` vs `ls yum.repos.d`)
22. Why is it recommended to use `pwd` before running relative path commands?
23. What information do you get from `ls -l /etc/yum.repos.d/` compared to a simple `ls`?
24. If a repo file is corrupted, how can you recover or re-enable it?
25. Why might you need to add third-party repos manually?

---

### 🔹 System & History

26. How does `history` help in troubleshooting package installation issues?
27. If a package installation fails, which logs or files would you check?
28. Why is package version control important in production environments?
29. Explain how `dnf` differs from `yum`.
30. If `dnf` is unavailable, what alternative methods exist to install software in CentOS?

---

*Use these questions for self-assessment and interview preparation. Good luck!*