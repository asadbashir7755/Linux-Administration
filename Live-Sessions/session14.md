# 📅 Session 14 — 2 Aug 2025 • User and Group Management

## 🖥️ Commands Learned

### 1. Create user with shell disabled

```bash
useradd -s /usr/bin/false umair
```

Creates user `umair` with shell disabled to prevent login.

### 2. Assign password to user

```bash
passwd umair
```

Sets password for `umair`.

### 3. Display last two user entries

```bash
tail -2 /etc/passwd
```

Shows the last two entries in the passwd file.

### 4. Attempt to switch to user (login will fail)

```bash
su umair
```

Attempts to switch to `umair` (will fail due to false shell).

### 5. Change user shell to allow login

```bash
usermod -s /bin/bash umair
```

Changes `umair`'s shell to `/bin/bash` to allow login.

### 6. Verify shell change

```bash
tail -2 /etc/passwd
```

Verifies the shell change for `umair`.

### 7. Login as user

```bash
su umair
```

Logs in as `umair`.

### 8. Change shell to disallow login

```bash
usermod -s /usr/sbin/nologin umair
```

Changes shell to disallow interactive login.

### 9. Confirm updated shell entry

```bash
tail -2 /etc/passwd
```

Confirms the updated shell entry.

### 10. Login fails due to nologin shell

```bash
su umair
```

Login fails due to nologin shell.

### 11. Create user with specific UID and GID

```bash
useradd -u 1010 -g 1010 salman
```

Creates user `salman` with specific UID and GID.

### 12. Attempt to reassign user to different GID

```bash
useradd -u 1010 -g 1004 salman
```

Attempts to reassign `salman` to a different GID (fails if user exists).

### 13. Check latest user additions

```bash
tail -3 /etc/passwd
```

Checks the latest user additions.

### 14. Create user with custom comment

```bash
useradd -c "Zahid Ali" zahid
```

Creates `zahid` with a custom comment field.

### 15. Set password for user

```bash
passwd zahid
```

Sets password for `zahid`.

### 16. Display recent user entries

```bash
tail -4 /etc/passwd
```

Shows recent user entries.

### 17. Update user's comment field

```bash
usermod -c "Salman Khan" salman
```

Updates `salman`'s comment field.

### 18. Verify updated comment

```bash
tail -4 /etc/passwd
```

Verifies the updated comment.

### 19. View home directories of users

```bash
ls /home/
```

Lists user home directories.

### 20. List contents of /var

```bash
ls /var/
```

Lists contents of `/var`.

### 21. Create user with custom home directory

```bash
useradd -d /var/ifra ifra
```

Creates user `ifra` with custom home directory `/var/ifra`.

### 22. Confirm user added

```bash
tail /etc/passwd
```

Confirms user `ifra` added.

### 23. Check if custom home directory exists

```bash
ls /var/
```

Checks if custom home directory exists.

### 24. Login as user with full environment

```bash
su - ifra
```

Logs in as `ifra` with full environment.

### 25. View permissions and ownership of /var

```bash
ls -l /var/
```

Shows permissions and ownership of `/var`.

### 26. Create new directory for user

```bash
mkdir /var/dev
```

Creates new directory for user `dev`.

### 27. Assign custom home for new user

```bash
useradd -d /var/dev dev
```

Assigns `/var/dev` as home for new user `dev`.

### 28. Confirm /var/dev exists

```bash
ls -l /var/
```

Confirms `/var/dev` exists.

### 29. Set password for dev

```bash
passwd dev
```

Sets password for `dev`.

### 30. Switch to user dev

```bash
su dev
```

Switches to user `dev`.

### 31. Confirm dev added to passwd

```bash
tail /etc/passwd
```

Confirms `dev` added to passwd.

### 32. Rename user zahid to zahidali

```bash
usermod -l zahidali zahid
```

Renames user `zahid` to `zahidali`.

### 33. Confirm rename worked

```bash
tail /etc/passwd
```

Confirms rename worked.

### 34. Rename zahidali back to zahid

```bash
usermod -l zahid zahidali
```

Renames `zahidali` back to `zahid`.

### 35. Reconfirm username

```bash
tail /etc/passwd
```

Reconfirms username.

### 36. Switch to user salman

```bash
su salman
```

Switches to user `salman`.

### 37. Lock account salman

```bash
usermod -L salman
```

Locks account `salman`.

### 38. Login blocked due to account lock

```bash
su salman
```

Login blocked due to account lock.

### 39. Switch to another user

```bash
su zubair
```

Switches to another user.

### 40. Reset password for salman

```bash
passwd salman
```

Resets password for `salman`.

### 41. Lock salman again

```bash
usermod -L salman
```

Locks `salman` again.

### 42. Unlock account salman

```bash
usermod -U salman
```

Unlocks account `salman`.

### 43. View last entries in shadow file

```bash
tail /etc/shadow
```

Views last entries in the shadow file.

### 44. Proper syntax to view last 5 lines

```bash
tail -5 /etc/shadow
```

Views last 5 lines of the shadow file.

### 45. Lock salman account again

```bash
usermod -L salman
```

Locks `salman` account again.

### 46. Search for salman’s entry in shadow

```bash
grep -r salman /etc/shadow
```

Searches for `salman` in the shadow file.

### 47. Unlock salman

```bash
usermod -U salman
```

Unlocks `salman`.

### 48. Open manual for chage command

```bash
man chage
```

Opens the manual for the `chage` command.

### 49. Set minimum password age

```bash
chage -m 3 salman
```

Sets minimum password age to 3 days for `salman`.

### 50. Remove minimum password age restriction

```bash
chage -m 0 salman
```

Removes minimum password age restriction for `salman`.

### 51. Set maximum password age

```bash
chage -M 90 salman
```

Sets maximum password age to 90 days for `salman`.

### 52. Set warning period before password expiration

```bash
chage -W 10 salman
```

Sets warning period to 10 days before password expiration.

### 53. Set account expiration date

```bash
chage -E 2025-10-30 salman
```

Sets account expiration date for `salman`.

### 54. Check home directories

```bash
ls /home/
```

Checks user home directories.

### 55. Delete user ali

```bash
userdel ali
```

Deletes user `ali`.

### 56. Inspect passwd file

```bash
vi /etc/passwd
```

Inspects the passwd file.

### 57. Recreate user ali

```bash
useradd ali
```

Recreates user `ali`.

### 58. Delete user and home directory

```bash
userdel -r ali
```

Deletes user `ali` and their home directory.

### 59. List current directory contents

```bash
ls
```

Lists current directory contents.

### 60. Check home directory with permissions

```bash
ls /home/ -l
```

Checks home directory with permissions.

### 61. Delete user wali and home directory

```bash
userdel -r wali
```

Deletes user `wali` and their home directory.

### 62. Confirm deletion

```bash
ls /home/ -l
```

Confirms deletion.

### 63. View all system groups

```bash
cat /etc/group
```

Views all system groups.

### 64. Create new group stag

```bash
groupadd stag
```

Creates new group `stag`.

### 65. Confirm group creation

```bash
cat /etc/group
```

Confirms group creation.

### 66. Create user with primary group stag

```bash
useradd -g stag arshad
```

Creates user `arshad` with primary group `stag`.

### 67. Show UID and GID for arshad

```bash
id arshad
```

Shows UID and GID for `arshad`.

### 68. Confirm user added

```bash
cat /etc/passwd
```

Confirms user added.

### 69. View groups assigned to ifra

```bash
id ifra
```

Views groups assigned to `ifra`.

### 70. Append ifra to group stag

```bash
usermod -aG stag ifra
```

Appends `ifra` to group `stag`.

### 71. Confirm multiple group memberships

```bash
id ifra
```

Confirms multiple group memberships.

### 72. Create group qa

```bash
groupadd qa
```

Creates group `qa`.

### 73. Set qa as exclusive group for ifra

```bash
usermod -G qa ifra
```

Sets `qa` as exclusive group for `ifra`.

### 74. View updated group list

```bash
id ifra
```

Views updated group list.

### 75. Assign ifra to both qa and stag

```bash
usermod -G qa,stag ifra
```

Assigns `ifra` to both `qa` and `stag`.

### 76. Confirm both group assignments

```bash
id ifra
```

Confirms both group assignments.

### 77. Set stag as only supplementary group

```bash
usermod -G stag ifra
```

Sets `stag` as only supplementary group for `ifra`.

### 78. View final group membership

```bash
id ifra
```

Views final group membership.

---

*End of Session 14 — 2 Aug 2025*


