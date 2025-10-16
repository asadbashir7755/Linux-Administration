# 📅 Session 27 — 21 Sep 2025 • MariaDB Day-3

## 🔹 Introduction
This session covers MariaDB user roles for better privilege management and Data Manipulation Language (DML) operations. Learn how to create reusable roles, assign them to users, and perform table operations including CREATE, INSERT, ALTER, and data management.

---

## 🎭 Role-Based Access Control (RBAC)

### Creating Common Database Roles

```sql
create role 'dba';
create role 'analyst';
create role 'backup';
create role 'ztb_usr';
```
Create standard database roles for different user types:
- **DBA**: Database administrators with full access
- **Analyst**: Read-only users for data analysis
- **Backup**: Users with backup-specific permissions
- **ztb_usr**: Application users with limited access

### Configuring Role Permissions

```sql
grant all privileges on *.* to 'dba';
grant select on *.* to 'analyst';
grant select,insert,update,delete on ztb_db.* to 'ztb_usr';
grant select,reload,show view,lock tables,trigger on *.* to 'backup';
```
Assign appropriate privileges to each role based on their function.

---

## 👤 User-Role Assignment

### Creating Users and Assigning Roles

```sql
create user 'dba'@'192.168.8.200' identified by 'abc@123';
grant 'dba' to 'dba'@'192.168.8.200';
```
Create DBA user and assign DBA role.

```sql
create user 'salman'@'127.0.0.1' identified by 'abc@123';
grant 'analyst' to 'salman'@'127.0.0.1';
```
Create analyst user with read-only access.

```sql
create user 'arshad'@'127.0.0.1' identified by 'abc@123';
grant 'ztb_usr' to 'arshad'@'127.0.0.1';
```
Create application user with database-specific permissions.

```sql
create user 'umair'@'localhost' identified by 'abc@123';
grant 'analyst' to 'umair'@'localhost';
grant 'backup' to 'umair'@'localhost';
```
Create user with multiple roles (analyst + backup capabilities).

### Managing Role Assignments

```sql
show grants for 'salman'@'127.0.0.1';
show grants for 'analyst';
```
View user grants and role permissions.

```sql
revoke 'ztb_usr' from 'arshad'@'127.0.0.1';
grant 'dba' to 'arshad'@'127.0.0.1';
```
Change user role assignments as needed.

---

## 🗃️ Table Creation & Structure

### Creating Tables

```sql
use ztb_db;
create table users (
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50) NOT NULL, 
    age int(3)
);
```
Create users table with auto-incrementing ID, required name field, and age.

```sql
show tables;
desc users;
```
List tables and describe table structure.

---

## 📝 Data Manipulation Language (DML)

### Inserting Data

```sql
insert into users (id, name, age) values(1,'Zubair',37);
insert into users values(2,'Salman',27);
insert into users values(3,'Umair',28);
```
Insert single records with different syntax variations.

```sql
insert into users values(4,'Zahid',30),(5,'Asad',35),(6,'Umair',33);
```
Insert multiple records in a single statement.

```sql
select * from users;
```
View all inserted data.

---

## 🔧 Table Structure Modifications

### Adding Columns

```sql
alter table users add column email varchar(50);
desc users;
```
Add new email column to existing table.

### Modifying Columns

```sql
alter table users modify column email varchar(60);
alter table users modify column email varchar(60) NOT NULL;
```
Change column size and add NOT NULL constraint.

```sql
alter table users modify column age int(3) NOT NULL;
```
Add NOT NULL constraint to existing column.

### Removing Columns

```sql
alter table users drop column email;
desc users;
```
Remove unwanted columns from table structure.

---

## 🗑️ Data Management Operations

### Clearing Table Data

```sql
truncate table users;
select * from users;
desc users;
```
Remove all data while preserving table structure (faster than DELETE).

### Repopulating Data

```sql
insert into users (id, name, age) values(1,'Zubair',37);
insert into users values(2,'Salman',27);
insert into users values(3,'Umair',28);
insert into users values(4,'Zahid',30),(5,'Asad',35),(6,'Umair',33);
select * from users;
```
Add sample data back to the table for testing.

---

## 💡 Best Practices

- **Role-Based Access**: Use roles instead of granting privileges directly to users
- **Principle of Least Privilege**: Grant only necessary permissions for each role
- **Data Types**: Choose appropriate data types and sizes for columns
- **Constraints**: Use NOT NULL and other constraints to maintain data integrity
- **Batch Operations**: Use multi-row INSERT statements for better performance
- **Regular Maintenance**: Use TRUNCATE for fast table clearing when appropriate

---

## 🔍 Verification Commands

```sql
show grants for 'username'@'host';  -- Check user privileges
show grants for 'rolename';         -- Check role privileges
desc tablename;                     -- View table structure
select * from tablename;            -- View table data
flush privileges;                   -- Apply privilege changes
```

---
# End of Session 27