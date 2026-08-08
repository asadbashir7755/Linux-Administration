# 📅 Session 30 — 5 Oct 2025 • Production Web Hosting

## 🔹 Introduction
This session demonstrates hosting a complete PHP application with developer access via FTP and database management through phpMyAdmin. Learn production-ready web hosting setup including user management, file permissions, and database integration.

**🎯 Goal: Host Employee Leave Management System with FTP + phpMyAdmin**

---

## 🌐 Virtual Host Configuration

### Apache Virtual Host Setup

```bash
vi /etc/httpd/conf.d/vhosts.conf
vi /etc/hosts
```
Configure virtual host for the new application and update local DNS resolution.

Sample virtual host configuration:
```apache
<VirtualHost *:80>
    ServerName elms.local
    DocumentRoot /var/www/elms
    ErrorLog /var/log/httpd/elms_error.log
    CustomLog /var/log/httpd/elms_access.log combined
</VirtualHost>
```

---

## 👤 Developer User Management

### Creating FTP User

```bash
cd /var/www/
mkdir elms
useradd -d /var/www/elms -s /sbin/nologin elms_user
```
Create application directory and user with restricted shell access.

```bash
passwd elms_user
chown elms_user:elms_user elms
```
Set password and assign ownership of web directory to developer user.

```bash
vi /etc/shells
```
Verify available shells (elms_user has /sbin/nologin for security).

---

## 📁 Application Deployment

### File Extraction and Setup

```bash
cd elms/
unzip Employee-Leave-Management-System-PHP.zip
mv Employee-Leave-Management-System-PHP.zip ..
cd Employee-Leave-Management-System-PHP/
ls
```
Extract application files from zip archive.

```bash
cp -r elms/* ../elms/
cd ..
chown elms_user.elms_user elms/ -R
chmod 755 /var/www/elms/ -R
```
Copy application files to web directory and set proper ownership and permissions.

---

## 🗄️ Database Setup

### Database Import

```bash
cd Employee-Leave-Management-System-PHP/SQL\ File/
ls
mysql -u root
```
Navigate to SQL files and access database.

```bash
mysql -u elms_user -p elms_db < /var/www/Employee-Leave-Management-System-PHP/SQL\ File/elmsdb.sql
```
Import database schema and data for the application.

---

## ⚙️ Application Configuration

### Database Connection Setup

```bash
cd /var/www/elms/
grep -r "localhost"
grep -r "DB_HOST"
```
Search for database configuration files.

```bash
vi admin/includes/config.php
vi includes/config.php
```
Update database connection parameters:
```php
<?php
define('DB_HOST', 'localhost');
define('DB_NAME', 'elms_db');
define('DB_USER', 'elms_user');
define('DB_PASS', 'password');
?>
```

### Apache Configuration

```bash
vi /etc/httpd/conf/httpd.conf
systemctl restart httpd
```
Adjust Apache settings if needed and restart service.

---

## 🔧 PHP Module Installation

### Required PHP Extensions

```bash
php -m
dnf search pdo
dnf install php-mysqlnd
```
Check installed PHP modules and install MySQL Native Driver.

```bash
systemctl restart httpd
systemctl restart mariadb
```
Restart services to load new PHP modules.

---

## 📊 phpMyAdmin Installation

### Package Installation

```bash
yum install phpmyadmin
```
Install phpMyAdmin for web-based database management.

### Configuration

```bash
vim /etc/httpd/conf.d/phpMyAdmin.conf
```
Configure phpMyAdmin access permissions:

```apache
<Directory /usr/share/phpMyAdmin/>
   AddDefaultCharset UTF-8
   Require all granted
   # Comment out restrictive IP directives for development
</Directory>
```

```bash
systemctl restart httpd mysqld
```
Restart services to apply configuration changes.

---

## 🔍 Troubleshooting & Monitoring

### Log Monitoring

```bash
tail -f /var/log/httpd/elms_error.log
tail -f /var/log/httpd/elms_access.log
tail -f /var/log/httpd/error_log
```
Monitor Apache logs for errors and access patterns.

### Common Issues Resolution

```bash
# Check file permissions
ll /var/www/elms/
chmod 755 /var/www/elms/ -R

# Verify database connectivity
mysql -u elms_user -p

# Check PHP modules
php -m | grep mysql
```

---

## 🔐 Security Considerations

### File Permissions
- **Web files**: 755 for directories, 644 for files
- **Owner**: elms_user for FTP access
- **Group**: elms_user or apache group

### Database Security
- Dedicated database user with limited privileges
- Strong passwords for all accounts
- Regular backup procedures

### FTP Security
- Restricted shell (/sbin/nologin) for FTP-only users
- Proper directory ownership and permissions
- Consider SFTP over traditional FTP

---

## 💡 Best Practices

### Production Deployment
- Use environment-specific configuration files
- Implement proper error handling and logging
- Regular security updates for all components
- Database connection pooling for performance

### Developer Access
- Separate FTP users for different projects
- Version control integration (Git hooks)
- Staging environment for testing
- Automated deployment pipelines

### Monitoring
- Set up log rotation for Apache logs
- Monitor disk space usage
- Database performance monitoring
- Regular security audits

---

## 🔗 Access URLs

- **Application**: http://elms.local/
- **phpMyAdmin**: http://server-ip/phpmyadmin/
- **FTP Access**: ftp://server-ip (user: elms_user)

---

## 📋 Verification Checklist

- [ ] Virtual host responds correctly
- [ ] FTP user can upload/modify files
- [ ] Database connection works
- [ ] phpMyAdmin accessible
- [ ] Application functions properly
- [ ] Logs show no critical errors

---
# End of Session 30 - Production Hosting Complete