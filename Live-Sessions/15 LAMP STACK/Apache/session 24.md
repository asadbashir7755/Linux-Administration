# 📅 Session 24 — 13 Sep 2025 • Apache: Single Site & Virtual Hosting

## 🔹 Introduction
This session covers Apache web server setup for single site hosting and multi-site (virtual hosting) on Linux as part of the LAMP stack.

---

## 🖥️ LAMP Stack Overview

```bash
# LAMP Stack
# L Linux
# A Apache
# M Mysql/MariaDB
# P PHP
# Apache Web Server used for website hosting
# Single site hosting
# XAMP WAMP
```
LAMP stands for Linux, Apache, MySQL/MariaDB, PHP. Apache is the web server component. XAMPP/WAMP are similar stacks for Windows.

---

## 🖥️ Single Site Hosting Steps

```bash
dnf install httpd
```
Install Apache web server.

```bash
systemctl enable httpd --now
```
Enable and start Apache service immediately.

```bash
systemctl status httpd
```
Verify Apache is running.

```bash
ip a
```
Check server IP address.

```bash
vi /var/www/html/index.html
```
Edit default website homepage.

```bash
systemctl reload httpd
```
Reload Apache to apply config changes.

```bash
curl http://192.168.8.120
```
Test website using curl (replace with your server IP or domain).

```bash
vi /etc/hosts
ping www.ztb.com
curl http://www.ztb.com
```
Edit local hosts file for DNS resolution and test site.

```bash
tail -f /var/log/httpd/access_log
tail -f /var/log/httpd/error_log
```
Monitor Apache access and error logs.

---

## 🖥️ Virtual Hosting (Multi-Site Hosting)

Virtual hosting allows hosting multiple websites on a single Apache server.

### Types:
- **Name-Based Virtual Hosting**: Multiple domains on one IP.
- **IP-Based Virtual Hosting**: Multiple IPs for different domains.

#### Example Domains:
- ztb.com, abc.com, zubair.com (all on 192.168.8.120)

```bash
cd /etc/httpd/conf.d/
vi vhosts.conf
```
Create/edit virtual hosts configuration file.

```bash
cd /var/www/
mkdir abc
cp html/index.html abc/
vi abc/index.html
```
Create document root for new site and add content.

```bash
mkdir zubair
cp abc/index.html zubair/
vi zubair/index.html
```
Create another site and add content.

```bash
systemctl restart httpd
```
Restart Apache to apply changes.

```bash
journalctl -xeu httpd.service
```
Check Apache logs for errors.

---

## 📝 Virtual Host Configuration Example

Add the following to `/etc/httpd/conf.d/vhosts.conf` for each site:

```apache
<VirtualHost *:80>
    ServerAdmin webmaster@ztb.com
    ServerName abc.com
    ServerAlias www.abc.com
    DocumentRoot /var/www/abc/
    ErrorLog logs/abc_error.log
    CustomLog logs/abc_access.log combined

    <Directory /var/www/abc/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin webmaster@ztb.com
    ServerName ztb.com
    ServerAlias www.ztb.com
    DocumentRoot /var/www/html/
    ErrorLog logs/ztb_error.log
    CustomLog logs/ztb_access.log combined

    <Directory /var/www/html/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin webmaster@ztb.com
    ServerName zubair.com
    ServerAlias www.zubair.com
    DocumentRoot /var/www/zubair/
    ErrorLog logs/zubair_error.log
    CustomLog logs/zubair_access.log combined

    <Directory /var/www/zubair/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

- `ServerName` and `ServerAlias` define the domain names.
- `DocumentRoot` is the directory for website files.
- `ErrorLog` and `CustomLog` specify log files.
- `<Directory ...>` sets permissions for the site directory.

---

## 🖥️ Additional Management Commands

```bash
vi /etc/httpd/conf.d/welcome.conf
vi /usr/share/httpd/noindex/index.html
cat /usr/share/testpage/index.html
ls /var/log/httpd/
curl http://ztb.com
curl http://zubair.com
```
Useful commands for managing configuration, viewing logs, and testing sites.

---

## 📝 Steps to Enable Virtual Hosting
1. Create a directory for each site in `/var/www/` and add content.
2. Edit `/etc/httpd/conf.d/vhosts.conf` and add a `<VirtualHost>` block for each site.
3. Update `/etc/hosts` on your client machine for local DNS resolution (if not using real DNS).
4. Restart Apache: `systemctl restart httpd`
5. Test each site using `curl http://yoursite.com` or a browser.
6. Monitor logs in `/var/log/httpd/` for troubleshooting.

---

# End of Session 24