# 📅 Session 8 — 6 Jul 2025 • Package Management — DNF

## 🖥️ Commands Learned

### 1. Search for EPEL release package

```bash
dnf search epel-release
```
Searches repositories for packages matching `epel-release`.  
EPEL provides extra packages for Enterprise Linux.

### 2. Check network connectivity

```bash
ping google.com
```
Checks network connectivity and DNS resolution. Use `Ctrl+C` to stop.

### 3. Search for nload package

```bash
dnf search nload
```
Searches for the `nload` network monitor package.

### 4. List configured repository files

```bash
ls /etc/yum.repos.d/
```
Lists configured repository files.

### 5. Long list repo files

```bash
ls /etc/yum.repos.d/ -l
```
Shows permissions, timestamps, and details for repo files.

### 6. Edit centos-addons repo file

```bash
vi /etc/yum.repos.d/centos-addons.repo
```
Edit or view the centos-addons repo file.

### 7. Edit base CentOS repo file

```bash
vi /etc/yum.repos.d/centos.repo
```
Edit or view the base CentOS repo file.

### 8. Show detailed metadata for epel-release

```bash
dnf info epel-release.noarch
```
Displays detailed metadata for the `epel-release` package.

### 9. List all installed packages

```bash
dnf list installed
```
Lists all installed packages.

### 10. Save installed package list to a file

```bash
dnf list installed > total_pkgs
```
Saves the installed package list to `total_pkgs`.

### 11. View/edit the saved package list

```bash
vim total_pkgs
```
View or edit the saved package list in Vim.

### 12. Count installed packages

```bash
dnf list installed | wc -l
```
Counts the number of installed packages.

### 13. Check if a package is installed

```bash
dnf list installed | grep words.noarch
```
Checks if `words.noarch` is installed.

### 14. Check if nload is installed

```bash
dnf list installed | grep nload
```
Checks if `nload` is installed.

### 15. Verify if EPEL release package is present

```bash
dnf list installed | grep epel-release
```
Checks if `epel-release` is installed.

### 16. Install EPEL repository release package

```bash
dnf install epel-release.noarch
```
Installs the EPEL repository release package (requires sudo/root).

### 17. Show command history

```bash
history
```
Displays the command history.

### 18. Print working directory

```bash
pwd
```
Prints the current working directory.

### 19. List repo files (relative path)

```bash
ls yum.repos.d
```
Lists repo files using a relative path (if in `/etc`).

### 20. List repo dir via relative path

```bash
ls ../../etc/yum.repos.d/
```
Lists the repo directory using a relative path.

### 21. List repo dir with absolute path

```bash
ls /etc/yum.repos.d/
```
Lists the repo directory with an absolute path.

### 22. Change directory to /etc

```bash
cd /etc/
```
Changes directory to `/etc`.

### 23. List /etc contents

```bash
ls
```
Lists contents of `/etc`.

### 24. List repo files within /etc

```bash
ls yum.repos.d/
```
Lists repo files within `/etc`.

---

# 📅 Session 9 — 6 Jul 2025 • Package Management — DNF (Part 2)

## 🖥️ Commands Learned

### 1. Typo in package name (will fail)

```bash
dnf search nlaod
```
Typo in package name; correct spelling is `nload`.

### 2. Search for nload

```bash
dnf search nload
```
Searches for the correct package.

### 3. Show package details for nload

```bash
dnf info nload
```
Displays details for the `nload` package.

### 4. Install nload (interactive)

```bash
dnf install nload
```
Installs `nload` with interactive confirmation.

### 5. Install nload without prompting

```bash
dnf install nload -y
```
Installs `nload` without prompting.

### 6. Run the network monitor

```bash
nload
```
Runs the `nload` network monitor (TUI).

### 7. Remove nload (interactive)

```bash
dnf remove nload
```
Removes `nload` interactively.

### 8. Remove nload without prompt

```bash
dnf remove nload -y
```
Removes `nload` without prompting.

### 9. Update nload to latest version

```bash
dnf update nload
```
Updates `nload` to the latest available version.

### 10. Update EPEL release package

```bash
dnf update epel-release
```
Updates the EPEL release package.

### 11. Update all packages

```bash
dnf update
```
Updates all packages to the latest versions.

### 12. SELinux management tool

```bash
semanage
```
SELinux management tool (may not be installed).

### 13. Locate semanage

```bash
whereis semanage
```
Locates binaries/man pages related to `semanage`.

### 14. Find which package supplies a command

```bash
dnf provides semanage
```
Finds which package supplies the `semanage` command.

### 15. Identify which package provides nload

```bash
dnf provides nload
```
Identifies which package provides the `nload` binary.

### 16. Query provider of "ls"

```bash
dnf provides ls
```
Queries which package provides `ls` (usually coreutils).

### 17. Determine which package provides vim

```bash
dnf provides vim
```
Determines which package provides `vim`.

### 18. Typo in group list command (will fail)

```bash
gnf group list
```
Typo: should be `dnf group list`.

### 19. List available and installed package groups

```bash
dnf group list
```
Lists available and installed package groups.

### 20. Install Server with GUI group

```bash
dnf group install "Server with GUI"
```
Installs the GUI server environment group.

### 21. Install .NET Development group

```bash
dnf group install ".NET Development"
```
Installs the .NET development group (if available).

### 22. Install Security Tools group

```bash
dnf group install "Security Tools"
```
Installs the security tools group.

### 23. Remove Security Tools group

```bash
dnf group remove "Security Tools"
```
Removes the previously installed security tools group.

### 24. Remove nload silently

```bash
dnf remove -y nload
```
Removes `nload` without prompting.

### 25. Download package without installing

```bash
dnf install nload --download-only
```
Downloads the package without installing.

### 26. Equivalent download-only option

```bash
dnf install nload --downloadonly
```
Equivalent to the above; packages are cached under `/var/cache/dnf/`.

### 27. Locate cached RPMs

```bash
find /var -name nload*
```
Locates cached RPMs.

### 28. Copy downloaded RPM from cache to home

```bash
cp /var/cache/dnf/epel-4b20c555de8aed94/packages/nload-0.7.4-23.el9.x86_64.rpm /home/zubair/
```
Copies the downloaded RPM to the home directory.

### 29. Go to home directory

```bash
cd /home/zubair/
```
Changes to the home directory.

### 30. Verify copied RPM

```bash
ls
```
Verifies the copied RPM.

### 31. Clean cached packages

```bash
dnf clean packages
```
Cleans cached packages to free space.

### 32. Check cache after cleaning

```bash
find /var -name nload*
```
Checks the cache after cleaning.

### 33. Search current directory for matching files

```bash
find . -name nload*
```
Searches the current directory for matching files.

### 34. Search for exact name

```bash
find . -name nload
```
Searches for files named exactly `nload`.

### 35. List files in current directory

```bash
ls
```
Lists files in the current directory.

### 36. Check DNF logs for package installation issues

```bash
cat /var/log/dnf.log
```
Displays DNF log file (useful for troubleshooting package installation failures on CentOS/RHEL 8/9).

### 37. Launch Vim tutorial

```bash
vimtutor
```
Launches the Vim tutorial for practice.

### 38. Locate vimtutor

```bash
whereis vimtutor
```
Locates the `vimtutor` binary or man page.

---

### 📝 Note: Why google.com doesn’t resolve to 8.8.8.8

When you type `ping google.com`:
- Your system asks a DNS server: “What is the IP of google.com?”
- DNS responds with one of Google’s web server IPs, e.g., 142.250.202.78.
- 8.8.8.8 is just a DNS server, not a web server for google.com.
- That’s why google.com resolves to a different IP, not 8.8.8.8.

---

### 39. Show history

```bash
history
```
Displays the command history.

---

*End of Sessions 8 & 9 — 6 Jul 2025*
### 34. Search for exact name

```bash
find . -name nload
```

Searches for files named exactly `nload`.

### 35. List

```bash
ls
```
/var/log/dnf.log       # For CentOS/RHEL 8/9 for logs check if package installation fails
Lists files in the current directory.

### 36. Launch Vim tutorial

```bash
vimtutor
```

Launches the Vim tutorial for practice.

### 37. Locate vimtutor

```bash
whereis vimtutor
```

Locates the `vimtutor` binary or man page.

Why google.com doesn’t resolve to 8.8.8.8

When you type ping google.com:

Your system asks a DNS server: “What is the IP of google.com?”

DNS responds with one of Google’s web server IPs, e.g., 142.250.202.78.

8.8.8.8 is just a DNS server, not a web server for google.com.

That’s why google.com resolves to a different IP, not 8.8.8.8.
### 38. Show history

```bash
history
```

Displays the command history.

---

*End of Sessions 8 & 9 — 6 Jul 2025*
