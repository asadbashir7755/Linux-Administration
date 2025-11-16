# 📅 Session 32 — 16 Nov 2025 • System Recovery & Rescue Mode

## 🔹 Introduction

This session covers system recovery using rescue mode in Linux. Learn how to boot into emergency shell, repair system issues, reset passwords, and handle SELinux relabeling. Mastering these steps ensures you can recover from boot failures or misconfigurations.

**🛡️ Goal: Safely recover a Linux system using rescue mode**

---

## 🚨 Rescue System Access

### Booting into Rescue Mode

1. Restart your system.
2. Press the **Esc** key to access the **GRUB menu**.
3. GRUB menu options:

   * **Old kernel version**
   * **Latest kernel version**
   * **Rescue option**
4. Steps to enter rescue for the latest kernel:

   * Highlight the latest kernel version.
   * Press **e** to edit the boot parameters.
   * Focus on the line starting with `linux`.

### Adding Emergency Shell

1. Move to the end of the line (`Shift + &` to reach line end).
2. Add the parameter:

```text
rd.break
```

This enables the **Dracut emergency shell**.
3. Press **Ctrl + X** or **F10** to boot.

---

## 🔧 Emergency Shell Operations

### Initial Checks

```bash
pwd      # Show current directory
ls       # List files
```

* You will be in a **temporary filesystem**.

### Mounting Root Filesystem

```bash
ls /sysroot/                     # List all OS files (read-only)
mount -o remount,rw /sysroot     # Make filesystem read-write
```

### Switching Root

```bash
chroot /sysroot/
ls                                  # Verify OS files accessible
```

Now you are in the real system environment and can fix issues.

---

## 🔄 Fixing System Issues

### SELinux Relabeling

1. Check SELinux status:

```bash
getenforce
```

2. Create autorelabel file if enforcing:

```bash
touch /.autorelabel
```

3. Reboot system to relabel files.

> **Note:** If SELinux is disabled, relabeling is not necessary.

---

### Resetting Root Password

```bash
passwd
```

* Enter the new password for the root user.
* Confirm the password.

```bash
reboot
```

---

## 💡 Best Practices

* Always mount `/sysroot` as read-write before making changes.
* Use `chroot` to ensure you operate within the real system environment.
* Verify SELinux mode before performing critical changes.
* Backup important data if possible before performing system recovery.

---

## 🔍 Verification Commands

```bash
# Check root filesystem
ls /

# Check SELinux status
getenforce

# Verify root password works
su - root
```

---

## 🛠️ Troubleshooting

### Common Issues

* Cannot remount filesystem read-write
* Changes not persistent after reboot
* SELinux preventing boot
* Root password not updating

### Quick Fixes

```bash
# Ensure /sysroot is mounted rw
mount -o remount,rw /sysroot

# Force SELinux relabel
touch /.autorelabel
```

---

# End of Session 32 — System Recovery & Rescue Mastery
