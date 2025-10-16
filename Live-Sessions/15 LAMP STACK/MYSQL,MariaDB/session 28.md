# 📅 Session 28 — 28 Sep 2025 • LAMP Stack Final

## 🔹 Introduction
This final session completes the LAMP Stack by covering database backup and restore operations, and PHP integration. Learn comprehensive backup strategies, restoration procedures, and PHP configuration for web applications.

**🎉 LAMP Stack Completed - Alhamdulillah**

---

## 💾 Database Backup Operations

### Full Database Backup

```bash
mysqldump -u root -p ztb_db > ztb_db.sql
ls -ltrh
```
Create complete backup of specific database including structure and data.

```bash
mysqldump -u root -p --all-databases > all_dbs.sql
ls -ltrh
```
Backup all databases on the server (comprehensive backup strategy).

### Table-Specific Backup

```bash
mysqldump -u root -p ztb_db users > ztb_db_users_tbl.sql
```
Backup specific table from database for targeted restore operations.

### Schema-Only Backup

```bash
mysqldump -u root -p --no-data ztb_db > ztb_db_schema.sql
ls -lhtr
```
Create schema-only backup (structure without data) for development environments.

---

## 🔄 Database Restore Operations

### Standard Database Restore

```bash
mysql -u root -p ztb_db < ztb_db.sql
```
Restore database from backup file to existing database.

### Cross-Database Restore

```bash
mysql -u root -p zero_trust_bytes < ztb_db.sql
```
Restore backup to different database name.

### Table Restore

```bash
mysql -u root -p ztb_db < ztb_db_users_tbl.sql
```
Restore specific table from backup.

### Schema Restore to New Database

```bash
mysql -u root -p ztb_new_db < ztb_db_schema.sql
```
Create new database structure from schema backup.

---

## ⚙️ MariaDB Configuration

### Server Configuration

```bash
vi /etc/my.cnf.d/mariadb-server.cnf
```
Edit MariaDB server configuration file for performance tuning and security settings.

Common configuration sections:
- `[mysqld]` - Server settings
- `[mysql]` - Client settings  
- `[client]` - Default client options

---

## 🐘 PHP Installation & Configuration

### Core PHP Installation

```bash
dnf install php
php -v
```
Install PHP and verify version.

### PHP Extensions Installation

```bash
dnf install php-mysqlnd php-cli php-gd php-curl php-mbstring php-xml php-opcache php-zip php-pdo
```
Install essential PHP extensions:
- **php-mysqlnd**: MySQL Native Driver for database connectivity
- **php-cli**: Command line interface
- **php-gd**: Graphics library for image processing
- **php-curl**: HTTP client library
- **php-mbstring**: Multi-byte string handling
- **php-xml**: XML processing
- **php-opcache**: Performance enhancement
- **php-zip**: Archive handling
- **php-pdo**: Database abstraction layer

### Service Integration

```bash
systemctl restart httpd
```
Restart Apache to load PHP modules.

---

## 🌐 Web Application Setup

### Virtual Host Configuration

```bash
cat /etc/httpd/conf.d/vhosts.conf
cd /var/www/zubair/
```
Check virtual host configuration and navigate to web directory.

### PHP Test File

```bash
vi hello.php
cat hello.php
```
Create and verify PHP test file for functionality testing.

Sample PHP test content:
```php
<?php
phpinfo();
// Database connection test
$connection = new mysqli("localhost", "username", "password", "database");
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
echo "Connected successfully";
?>
```

---

## 🔧 Advanced PHP Configuration

### Alternative PHP Repositories

```bash
dnf install https://rpms.remirepo.net/enterprise/remi-release-9.rpm
dnf module list php
```
Add Remi repository for additional PHP versions and modules.

### PHP Module Management

```bash
# dnf module enable php:8.5
# dnf module disable php:8.5
```
Enable/disable specific PHP versions (commented for reference).

---

## 💡 Best Practices

### Backup Strategy
- **Regular Backups**: Schedule daily/weekly automated backups
- **Multiple Locations**: Store backups in different locations
- **Test Restores**: Regularly test backup restoration procedures
- **Incremental Backups**: Use for large databases to save space

### PHP Security
- Keep PHP updated to latest stable version
- Configure proper error reporting for production
- Use secure database connections
- Implement input validation and sanitization

### Performance Optimization
- Enable PHP OPcache for better performance
- Configure appropriate memory limits
- Use connection pooling for database access
- Monitor PHP-FPM processes

---

## 🔍 Verification Commands

```bash
# Database Operations
mysql -u root -p                    # Access MariaDB
show databases;                     # List databases
mysqldump --version                 # Check mysqldump version

# PHP Operations  
php -v                             # Check PHP version
php -m                             # List loaded modules
php -i | grep mysql                # Check MySQL connectivity

# Service Status
systemctl status mariadb           # MariaDB status
systemctl status httpd             # Apache status
```

---

## 🎊 LAMP Stack Components Summary

✅ **Linux** - CentOS/RHEL 9 (Base OS)  
✅ **Apache** - Web server with virtual hosts  
✅ **MariaDB** - Database server with user management  
✅ **PHP** - Server-side scripting with extensions  

**🚀 Ready for Web Application Development!**

---
# End of Session 28 - LAMP Stack Complete