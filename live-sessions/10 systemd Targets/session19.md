# 📅 Session 19 — 24 Aug 2025 • Systemd Targets and SSH Service

## 🔹 Introduction
This session covers systemd targets, runlevels, and managing services like SSH and crond.

---

```bash
# Systemd Targets
```
Session topic: systemd targets and service management.

```bash
# SysVinit
# init 0 poweroff, init 1 single user mode
# init 2 multiuser without networking
# init 3 multiuser with networking
# init 4 unused
# init 5 GUI
# init 6 reboot
```
SysVinit runlevels and their meanings.

```bash
# Systemd Targets
# service/unit
# poweroff.target = runlevel 0 = init 0
# rescue.target   = runlevel 1 = init 1 =single user mode
#multi-user.target = runlevel 3 = init 3
#graphical.target = runlevel 5 = init 5
#reboot.target  = runlevel 6 = init 6
#emergency.target =  no equivalent runlevel
# each target defines a group of services/units
```
Mapping of systemd targets to legacy runlevels.

```bash
systemctl get-defult
```
⚠️ Typo: should be `systemctl get-default`. Shows the current default target.

```bash
systemctl get-default
```
Show the current default systemd target.

```bash
ls /etc/systemd/system
```
List custom and systemd unit files.

```bash
ls /etc/systemd/system/graphical.target.wants
```
List services wanted by the graphical target.

```bash
ls /etc/systemd/system/multi-user.target.wants/
```
List services wanted by the multi-user target.

```bash
ls /etc/systemd/system/network-online.target.wants
```
List services wanted by the network-online target.

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl set-defsault multi-user.target
```
⚠️ Typo: should be `systemctl set-default multi-user.target`. Sets default target to multi-user.

```bash
systemctl set-default multi-user.target
```
Set default target to multi-user (non-GUI).

```bash
ls /usr/lib/systemd/system/multi-user.target
```
Show the multi-user target unit file.

```bash
ls /usr/lib/systemd/system/multi-user.target.wants/
```
Show services linked to multi-user target.

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl list-dependancies  graphical.target
```
⚠️ Typo: should be `systemctl list-dependencies graphical.target`. List dependencies of graphical target.

```bash
systemctl list-dependencies  graphical.target
```
List dependencies of graphical target.

```bash
systemctl list-dependencies  poweroff.target
```
List dependencies of poweroff target.

```bash
systemctl list-dependencies  multi-user.target
```
List dependencies of multi-user target.

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl set-defsault graphical.target
```
⚠️ Typo: should be `systemctl set-default graphical.target`. Sets default target to graphical.

```bash
systemctl set-default graphical.target
```
Set default target to graphical (GUI).

```bash
systemctl get-default
```
Show the current default target.

```bash
kahan
```
Try using custom alias (prints working directory if defined).

```bash
su zubair
```
Switch user to zubair.

```bash
history
```
Show command history.

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl set-default multi-user
```
Set default target to multi-user (should be multi-user.target).

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl isolate reboot.target
```
Switch immediately to reboot target (reboots system).

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl set-default graphical
```
Set default target to graphical (should be graphical.target).

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl set-defsault multi-user.target
```
⚠️ Typo: should be `systemctl set-default multi-user.target`.

```bash
systemctl set-desault multi-user.target
```
⚠️ Typo: should be `systemctl set-default multi-user.target`.

```bash
systemctl set-default multi-user.target
```
Set default target to multi-user.

```bash
systemctl get-default
```
Show the current default target.

```bash
systemctl isolate graphical.target
```
Switch immediately to graphical target.

```bash
systemctl set-default graphical.target
```
Set default target to graphical.

```bash
systemctl list-dependencies graphical.target
```
List dependencies of graphical target.

```bash
systemctl disable crond.service
```
Disable crond service.

```bash
systemctl list-dependencies graphical.target
```
List dependencies of graphical target.

```bash
systemctl enable crond.service
```
Enable crond service.

```bash
systemctl list-dependencies graphical.target
```
List dependencies of graphical target.

```bash
systemctl stop crond
```
Stop crond service.

```bash
systemctl list-dependencies graphical.target
```
List dependencies of graphical target.

```bash
systemctl start crond
```
Start crond service.

```bash
systemctl status crond
```
Show status of crond service.

```bash
systemctl disable crond.service
```
Disable crond service.

```bash
systemctl status crond
```
Show status of crond service.

```bash
systemctl enable crond.service
```
Enable crond service.

```bash
systemctl start crond.service
```
Start crond service.

```bash
systemctl stop crond.service
```
Stop crond service.

```bash
systemctl status crond.service
```
Show status of crond service.

```bash
systemctl enable crond.service --now
```
Enable and start crond service immediately.

```bash
systemctl status crond.service
```
Show status of crond service.

```bash
systemctl restart crond.service
```
Restart crond service.

```bash
systemctl status crond.service
```
Show status of crond service.

```bash
systemctl reload crond.service
```
Reload crond service configuration.

```bash
systemctl reload NetworkManager
```
Reload NetworkManager service.

```bash
systemctl reload  sshd
```
Reload SSH daemon.

```bash
systemctl restart  sshd
```
Restart SSH daemon.

```bash
systemctl reload-or-restart  sshd
```
Reload or restart SSH daemon.

```bash
systemctl status firewalld
```
Show status of firewalld.

```bash
# SSH Service
# Program/software/daemon running in background
# Port Number = Service identifiers
# Default Port 22
# port tcp(transmission control protocol)/udp(user datagram protocol)
# Default Port 22/tcp
# Secure SHell - Encrypted tunnel
```
SSH service notes.

```bash
vi /etc/ssh/sshd_config
```
Edit SSH daemon configuration.

```bash
systemctl restart sshd
```
Restart SSH daemon.

```bash
journalctl -xeu sshd.service
```
View SSH daemon logs.

```bash
vi /etc/ssh/sshd_config
```
Edit SSH daemon configuration.

```bash
semanage port -a -t ssh_port_t -p tcp 4444
```
Add new port for SSH in SELinux.

```bash
systemctl restart sshd
```
Restart SSH daemon.

```bash
vi /etc/ssh/sshd_config
```
Edit SSH daemon configuration.

```bash
ip a
```
Show network interfaces and IP addresses.

```bash
vi /etc/ssh/sshd_config
```
Edit SSH daemon configuration.

```bash
systemctl restart sshd
```
Restart SSH daemon.

---

## 📝 Notes
- Use `systemctl get-default` to check the default target.
- Use `systemctl set-default <target>` to set the default target.
- Use `systemctl isolate <target>` to switch targets immediately.
- Use `systemctl enable/disable/start/stop/restart/status <service>` to manage services.
- SSH configuration is in `/etc/ssh/sshd_config`.
- Use `journalctl -xeu <service>` for logs.

---

# End of Session 19