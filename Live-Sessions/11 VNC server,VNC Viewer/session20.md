# 📅 Session 20 — 30 Aug 2025 • VNC Server + VNC Viewer

## 🔹 Introduction
VNC (Virtual Network Computing) allows remote GUI access to Linux systems using the RFB (Remote Frame Buffer) protocol.

---

```bash
# VNC service
```
Session topic: VNC server and viewer setup.

```bash
# Virtual Network Computing - GUI interface
# RFB - Remote Frame Buffer
```
VNC provides remote desktop access; RFB is the protocol used.

```bash
systemctl disable firewalld -now
```
⚠️ Typo: should be `systemctl disable firewalld --now`. Disables firewalld immediately.

```bash
systemctl disable firewalld --now
```
Disable firewalld and stop it now.

```bash
#systemctl enable firewalld --now
```
Enable and start firewalld (commented out).

```bash
getenforce
```
Check SELinux enforcement status.

```bash
# disable selinux
```
Comment: next steps disable SELinux.

```bash
vi /etc/sysconfig/selinux
```
Edit SELinux config file.

```bash
getenforce
```
Check SELinux status.

```bash
setenforce 0
```
Set SELinux to permissive mode.

```bash
getenforce
```
Check SELinux status.

```bash
setenforce 1
```
Set SELinux to enforcing mode.

```bash
getenforce
```
Check SELinux status.

```bash
setenforce 0
```
Set SELinux to permissive mode.

```bash
getenforce
```
Check SELinux status.

```bash
dnf search vnc
```
Search for VNC packages.

```bash
dnf install tigervnc-server
```
Install TigerVNC server.

```bash
# VNC port 5901 .. 5902 5903
# VNC Base Port 5900 + instance number(1) = vnc service port + 5901 
# VNC Base Port 5900 + instance number(2) = vnc service port + 5902/tcp
```
VNC uses ports 5901, 5902, etc. (base port 5900 + display number).

```bash
cp /lib/systemd/system/vncserver@.service /etc/systemd/system/
```
Copy template VNC systemd service file.

```bash
rm -rf /etc/systemd/system/vncserver@.service
```
Remove old VNC systemd service file.

```bash
cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:1.service
```
Create VNC service for display :1.

```bash
vi /etc/systemd/system/vncserver@:1.service
```
Edit VNC service file for display :1.

```bash
vi /etc/tigervnc/vncserver.users
```
Edit VNC users configuration.

```bash
su - zubair
```
Switch to user zubair.

```bash
systemctl status vncserver@:1.service
```
Check status of VNC server for display :1.

```bash
systemctl enable vncserver@:1.service --now
```
Enable and start VNC server for display :1.

```bash
journalctl -xeu vncserver@:1.service
```
View logs for VNC server :1.

```bash
vi /etc/tigervnc/vncserver.users
```
Edit VNC users configuration.

```bash
systemctl enable vncserver@:1.service --now
```
Enable and start VNC server for display :1.

```bash
systemctl status vncserver@:1.service
```
Check status of VNC server for display :1.

```bash
ps aux |grep vnc
```
List running VNC processes.

```bash
cat /home/zubair/.config/tigervnc/passwd
```
View VNC password file for user zubair.

```bash
tail /etc/passwd
```
Show last lines of /etc/passwd (user accounts).

```bash
cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:2.service
```
Create VNC service for display :2.

```bash
vi /etc/tigervnc/vncserver.users
```
Edit VNC users configuration.

```bash
su - arshad
```
Switch to user arshad.

```bash
systemctl enable vncserver@:2.service --now
```
Enable and start VNC server for display :2.

```bash
systemctl status vncserver@:2.service
```
Check status of VNC server for display :2.

```bash
pwd
```
Print working directory.

```bash
ls -A
```
List all files, including hidden.

```bash
ls -A .config/
```
List all files in .config directory.

```bash
ls -A .config/tigervnc/
```
List all files in .config/tigervnc directory.

```bash
ls -A /home/arshad/
```
List all files in arshad's home directory.

```bash
find  /home/arshad/ -name vnc
```
Find files named 'vnc' in arshad's home.

```bash
find  /home/arshad/ -name .vnc
```
Find files/directories named '.vnc' in arshad's home.

```bash
find  /home/arshad/ -name .vnc*
```
Find files/directories starting with '.vnc' in arshad's home.

```bash
ps aux |grep vnc
```
List running VNC processes.

```bash
cat /home/arshad/.Xauthority
```
View Xauthority file for user arshad.

```bash
ip a
```
Show network interfaces and IP addresses.

```bash
ip a |grep inet
```
Show IP addresses only.

---

## 📝 Notes
- VNC allows remote desktop access using ports 5901, 5902, etc.
- SELinux and firewalld may need to be disabled or configured for VNC to work.
- Each VNC display (:1, :2) has its own systemd service.
- Passwords for VNC are stored in user config directories.
- Use `systemctl enable ... --now` to start and enable services immediately.
- Use `journalctl -xeu <service>` for troubleshooting.

---

# End of Session 20