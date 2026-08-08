# 📅 Session 33 — 16 Nov 2025 • GRUB Password Protection

## 🔹 Introduction

This session covers how to secure your Linux system by setting a password for GRUB. Password-protecting GRUB prevents unauthorized users from editing boot parameters or accessing rescue mode, enhancing system security.

**🛡️ Goal: Secure GRUB with password protection**

---

## 🔐 Setting a GRUB Password

### Step 1: Log in as root

Ensure you have root privileges to modify GRUB configuration.

```bash
su - root
```

### Step 2: Generate Encrypted Password

```bash
grub2-setpassword
```

* You will be prompted to enter and confirm a password.
* The encrypted password will be saved in:

```text
/boot/grub2/user.cfg
```

### Step 3: Update GRUB Configuration

```bash
grub2-mkconfig -o /boot/grub2/grub.cfg
```

* This rebuilds the GRUB configuration with the new password.

### Step 4: Verification

* Attempt to edit a GRUB entry or access rescue mode.
* You should now be prompted for the GRUB password.

```text
# Unauthorized users will need the password to edit boot options or access rescue mode
```

---

## 🔄 Removing GRUB Password

### Step 1: Delete Password File

```bash
rm -f /boot/grub2/user.cfg
```

### Step 2: Rebuild GRUB Configuration

```bash
grub2-mkconfig -o /boot/grub2/grub.cfg
```

* GRUB will no longer prompt for a password.

---

## 💡 Best Practices

* Use a strong, unique password for GRUB.
* Keep backups of `/boot/grub2/user.cfg` if recovery is needed.
* Combine with BIOS/UEFI password for layered security.
* Test password functionality before leaving the system unattended.

---

## 🔍 Verification Commands

```bash
# Check if GRUB password file exists
cat /boot/grub2/user.cfg

# Test GRUB password prompt by rebooting
reboot
```

---

## 🛠️ Troubleshooting

### Common Issues

* GRUB still allows editing without password
* Password not saved correctly
* Forgotten password

### Quick Fixes

* Ensure `user.cfg` exists and contains encrypted password
* Re-run `grub2-setpassword` to reset password
* Rebuild GRUB configuration using `grub2-mkconfig`

---

# End of Session 33 — GRUB Password Protection Mastery
