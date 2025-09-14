# 📅 Session 25 — 14 Sep 2025 • MariaDB Day-1

## 🔹 Introduction
MariaDB is a popular open-source relational database, compatible with MySQL. This session covers installation, securing MariaDB, and basic user/database management.

---

## 🖥️ Installation & Service Management

```bash
# Mysql / MariaDB
```
MariaDB is a drop-in replacement for MySQL.

```bash
dnf install mariadb-server
```
Install MariaDB server package.

```bash
mysql
```
Try to access MariaDB shell (may fail if service not started).

```bash
systemctl status mariadb
systemctl status mysqld
```
Check status of MariaDB and MySQL services.

```bash
systemctl enable mariadb --now
```
Enable and start MariaDB service immediately.

```bash
systemctl status mariadb
```
Verify MariaDB is running.

```bash
mysql
mariadb
mysql
```
Try accessing MariaDB/MySQL shell.

---

## 🛡️ Securing MariaDB

```bash
mysql_secure_installation
```
Run secure installation script to set root password, remove anonymous users, disallow remote root login, remove test database, and reload privileges.

Follow the prompts:
- Enter current root password (press Enter if none)
- Set root password
- Remove anonymous users
- Disallow remote root login
- Remove test database
- Reload privilege tables

All steps are recommended for production use.

---

## 🗄️ Database & User Management

```bash
mysql
```
Access MariaDB shell.

```bash
su zubair
mysql
```
Switch user and access MariaDB shell.

```bash
ip a |grep inet
```
Check IP address (useful for remote user setup).

```bash
mysql -u ztb_user -p
mysql
mysql -u ztb_user -p
mysql
```
Login as specific user.

---

## 📝 DB Queries: DDL & DML

```bash
# 1- DDL Data Definition Language
# 2- DML Data Manipulation Language
```
DDL: create/drop databases, tables. DML: insert/update/delete/select data.

```sql
show databases;
create database ztb_db;
show databases;
drop database ztb_db;
show databases;
create database ztb_db;
show databases;
```
Show, create, and drop databases.

---

## 👤 User Management

```sql
create user 'ztb_user'@'192.168.8.200' identified by 'abc@123';
flush privileges;
exit
mysql -u ztb_user -p
```
Create user for remote access and test login.

```sql
create user 'ztb_user'@'localhost' identified by 'c@123';
flush privileges;
mysql -u ztb_user -p
exit
```
Create user for local access and test login.

```sql
drop user 'ztb_user'@'192.168.8.200';
drop user 'ztb_user'@'localhost';
exit
```
Drop users when no longer needed.

---

# End of Session 25