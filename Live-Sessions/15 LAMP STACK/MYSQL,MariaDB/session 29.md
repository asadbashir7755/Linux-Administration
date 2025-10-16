# 📅 Session 29 — MariaDB Day-4 • SQL Queries & Data Operations

## 🔹 Introduction
This session focuses on SQL SELECT queries, data filtering, database management operations, and cross-database queries. Learn essential SQL syntax for data retrieval and database manipulation.

---

## 🔍 Basic SELECT Queries

### Database and Table Exploration

```sql
show databases;
use ztb_db;
show tables;
```
Navigate to working database and explore available tables.

### Column Selection

```sql
select * from users;
select id from users;
select name from users;
select name,age from users;
select age,name from users;
```
Retrieve all columns or specific columns from the users table. Column order in SELECT determines output order.

---

## 🎯 Data Filtering with WHERE Clause

### String Matching

```sql
select * from users where name="Asad";
```
Filter records by exact string match (use quotes for string values).

### Numeric Filtering

```sql
select * from users where id=4;
select * from users where age=33;
```
Filter records by exact numeric values.

### Comparison Operators

```sql
select * from users where age>=28;
select * from users where age<30;
```
Use comparison operators for range-based filtering:
- `>=` Greater than or equal
- `<` Less than
- `>` Greater than
- `<=` Less than or equal
- `!=` or `<>` Not equal

---

## 🗄️ Database Management Operations

### Database Recreation

```sql
drop database ztb_db;
show databases;
create database ztb_db;
show databases;
```
Remove and recreate database (data will be lost).

```sql
use ztb_db;
show tables;
```
Switch to recreated database and check for tables (will be empty).

### Multiple Database Creation

```sql
create database zero_trust_bytes;
create database ztb_new_db;
show databases;
```
Create additional databases for different purposes.

---

## 🔗 Cross-Database Queries

### Fully Qualified Table Names

```sql
select * from zero_trust_bytes.users;
select user,host from mysql.user;
```
Access tables from other databases using `database.table` syntax without switching databases.

### System Database Queries

```sql
select host,user from mysql.user;
show grants for 'dba'@'192.168.8.200';
```
Query MySQL system database for user management information.

---

## 🛠️ Table Management

### Table Operations

```sql
drop table users;
show tables;
```
Remove tables from current database.

```sql
desc users;
```
Describe table structure (columns, data types, constraints).

---

## 🔐 Permission Management

### Granting Database-Specific Privileges

```sql
grant all privileges on ztb_db.* to 'dba'@'192.168.8.200';
flush privileges;
```
Grant full access to specific database and reload privilege tables.

---

## 💡 SQL Query Best Practices

### Performance Tips
- Use specific column names instead of `SELECT *` when possible
- Add WHERE clauses to limit result sets
- Use indexes on frequently queried columns
- Avoid functions in WHERE clauses when possible

### Security Considerations
- Always use quotes for string values
- Validate input data before queries
- Use parameterized queries in applications
- Limit user privileges to necessary operations only

### Query Optimization
```sql
-- Good: Specific columns
select name, age from users where age > 25;

-- Avoid: Unnecessary wildcard
select * from users;

-- Good: Indexed column filtering
select * from users where id = 1;
```

---

## 🔍 Common Query Patterns

### Data Exploration
```sql
show databases;                    -- List all databases
use database_name;                -- Switch to database
show tables;                      -- List tables in current database
desc table_name;                  -- Show table structure
select count(*) from table_name;  -- Count total records
```

### Filtering Examples
```sql
-- Numeric comparisons
select * from users where age between 25 and 35;
select * from users where id in (1,3,5);

-- String patterns
select * from users where name like 'A%';    -- Starts with 'A'
select * from users where name like '%man';  -- Ends with 'man'
```

---

## 🔧 Troubleshooting Common Issues

### Syntax Errors
- Missing quotes around string values
- Incorrect table or column names
- Missing semicolons at statement end

### Permission Issues
- User lacks SELECT privileges on table
- Database doesn't exist or user can't access it
- Need to flush privileges after grant changes

---