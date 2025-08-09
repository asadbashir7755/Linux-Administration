# 📅 Session 13 — 26 Jul 2025 • User Management (Part 1)

355. `# /etc/passwd Users' info`
      Note: Contains user accounts (name, UID, GID, home directory, shell).

356. `# /etc/shadow users' password`
      Note: Has hashed passwords; root-readable only.

357. `# /etc/gshadow Group password`
      Note: Group security file (root-only).

358. `# /etc/group Group info`
      Note: Group names and memberships.

359. `# /var/log/secure User login log file`
      Note: Authentication logs (distribution-dependent path).

360. `ls /etc/login.defs`
      Verify defaults file exists (user creation policies).

361. `ls -ld /etc/login.defs`
      Show permissions/ownership of login.defs.

362. `# /etc/login.defs this file contains new user defaults`
      Note: Documents UID ranges, password policies, etc.

363. `# /etc/skel/ contains required files and folders necessary for a user`
      Note: Skeleton files copied to new user home directories.

364. `# /home/zubair User home directory`
      Note: Example home directory.

365. `# Types of user in Linux`
      Note: Header for classification.

366. `# 1 root -> Admin/Super/Power user`
      Note: UID 0.

367. `# 2 zubair, umair, ahmed -> General User`
      Note: Regular human users.

368. `# 3 apache, mysql, named -> System User`
      Note: Service accounts.

369. `# 4 zubair, umair, umais -> sudo User`
      Note: Regular users granted sudo privileges.

370. `# root UID 0`
      Note: Confirms root’s UID.

371. `# 0 < UID < 1000 = System Users`
      Note: Typical RHEL/CentOS range for system users.

372. `# UID >= 1000 General Users`
      Note: Human users typically start at 1000.

373. `vi /etc/passwd`
      View/edit user list (read-only unless root; caution advised).

374. `vi /etc/group`
      View/edit groups.

375. `vi /etc/passwd`
      Reopen passwd.

376. `vi /etc/group`
      Reopen group.

377. `vi /etc/shadow`
      View shadow file (root only).

378. `vi /etc/gshadow`
      View group shadow (root only).

379. `tail /var/log/secure`
      Show authentication log tail (logins, sudo, ssh, etc.).

380. `vi /etc/login.defs`
      Inspect user defaults (UID ranges, password expiration).

381. `ls /etc/skel/`
      List skeleton directory.

382. `ls -a /etc/skel/`
      Include hidden files (e.g., `.bashrc`).

383. `ls -A /etc/skel/`
      Like `-a` but omit `.` and `..`.

384. `ls -Al /etc/skel/`
      Long list including hidden files.

385. `ls -Al /home/zubair/`
      Long list home directory (including hidden files).

386. `ls -Al /etc/skel/`
      Re-list skeleton directory.

387. `vi /etc/skel/.bash_profile`
      Inspect default shell profile.

388. `vi /etc/skel/.bashrc`
      Inspect default shell rc file.

389. `vi /etc/skel/.bash_logout`
      Inspect default logout script.

