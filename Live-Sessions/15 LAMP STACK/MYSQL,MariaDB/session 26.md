# 📅 Session 26 — 20 Sep 2025 • MariaDB Day-2

## 🔹 Introduction
This session focuses on advanced MariaDB user management, privilege systems, and security. Learn how to create users with specific access levels, grant and revoke permissions, and manage database security effectively.

---

## 👥 Advanced User Creation

```sql
show databases;
```
Display all available databases.

```sql
create user 'ztb_user'@'127.0.0.1' identified by 'abc@123';
create user 'ztb_user'@'192.168.8.200' identified by 'abc@123';
```
Create users for local (127.0.0.1) and specific remote IP access.

```sql
use mysql;
show tables;
```
Switch to MySQL system database to examine user management tables.

```sql
select * from user;
select Host,user from user;
select user,host from user;
```
Query user table to view all users and their allowed hosts.

---

## 🔐 Privilege Management System

MariaDB privileges follow a 3-part structure:
1. **Privileges** - What actions are allowed
2. **Database.Table** - Which resources can be accessed  
3. **User@Host** - Who gets the access

```sql
grant all privileges on *.* to 'ztb_user'@'127.0.0.1';
```
Grant full global privileges to local user (access to all databases and tables).

```sql
show grants for 'ztb_user'@'127.0.0.1';
```
Display current privileges for specified user.

```sql
revoke all privileges on *.* from 'ztb_user'@'127.0.0.1';
flush privileges;
```
Remove global privileges and reload privilege tables.

---

## 🎯 Database-Specific Permissions

```sql
grant all privileges on ztb_db.* to 'ztb_user'@'192.168.8.0/24';
grant all privileges on ztb_db.* to 'ztb_user'@'127.0.0.1';
flush privileges;
```
Grant full access to specific database (ztb_db) for subnet and local users.

```sql
use ztb_db;
show tables;
```
Switch to target database and list tables.

---

## 📖 Read-Only User Management

```sql
create user 'ztb_readonly'@'192.168.8.0/24' identified by 'abc@123';
create user 'ztb_global'@'%' identified by 'abc@123';
```
Create read-only user for subnet access and global user for any host (%).

```sql
grant select on ztb_db.* to 'ztb_readonly'@'192.168.8.0/24';
show grants for 'ztb_readonly'@'192.168.8.0/24';
```
Grant SELECT permission only and verify the privileges.

```sql
grant select,insert,update on ztb_db.* to 'ztb_readonly'@'192.168.8.0/24';
show grants for 'ztb_readonly'@'192.168.8.0/24';
```
Add INSERT and UPDATE permissions to the read-only user.

---

## ❌ Revoking Privileges

```sql
revoke insert,update on ztb_db.* from 'ztb_readonly'@'192.168.8.0/24';
flush privileges;
show grants for 'ztb_readonly'@'192.168.8.0/24';
```
Remove specific privileges (INSERT, UPDATE) while keeping SELECT.

```sql
revoke select on ztb_db.* from 'ztb_readonly'@'192.168.8.0/24';
flush privileges;
show grants for 'ztb_readonly'@'192.168.8.0/24';
```
Remove remaining SELECT privilege from the user.

---

## 💡 Best Practices

- Always run `flush privileges;` after privilege changes
- Use specific IP addresses or subnets instead of '%' when possible
- Follow principle of least privilege - grant only necessary permissions
- Regularly audit user privileges with `show grants`
- Test user access after privilege changes

---
# End of Session 26