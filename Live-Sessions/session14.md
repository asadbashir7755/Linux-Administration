# 📅 Session 14 — 2 Aug 2025 • User and Group Management

354. `useradd -s /usr/bin/false umair`
      Create user *umair* with shell disabled to prevent login.

355. `passwd umair`
      Assign password to *umair*.

356. `tail -2 /etc/passwd`
      Display last two user entries in passwd file.

357. `su umair`
      Attempt to switch to user *umair* (will fail due to false shell).

358. `usermod -s /bin/bash umair`
      Change *umair*’s shell to `/bin/bash` to allow login.

359. `tail -2 /etc/passwd`
      Verify shell change for *umair*.

360. `su umair`
      Login as *umair*.

361. `usermod -s /usr/sbin/nologin umair`
      Change shell again to disallow interactive login.

362. `tail -2 /etc/passwd`
      Confirm updated shell entry.

363. `su umair`
      Login fails due to nologin shell.

364. `useradd -u 1010 -g 1010 salman`
      Create user *salman* with specific UID and GID.

365. `useradd -u 1010 -g 1004 salman`
      Attempt to reassign *salman* to different GID (fails if user exists).

366. `tail -3 /etc/passwd`
      Check latest user additions.

367. `useradd -c "Zahid Ali" zahid`
      Create *zahid* with a custom comment field.

368. `passwd zahid`
      Set password for *zahid*.

369. `tail -4 /etc/passwd`
      Display recent user entries.

370. `usermod -c "Salman Khan" salman`
      Update *salman*’s comment field.

371. `tail -4 /etc/passwd`
      Verify updated comment.

372. `ls /home/`
      View home directories of users.

373. `ls /var/`
      List contents of `/var`.

374. `useradd -d /var/ifra ifra`
      Create user *ifra* with custom home directory `/var/ifra`.

375. `tail /etc/passwd`
      Confirm user *ifra* added.

376. `ls /var/`
      Check if custom home directory exists.

377. `su - ifra`
      Login as *ifra* with full environment.

378. `ls -l /var/`
      View permissions and ownership of `/var`.

379. `mkdir /var/dev`
      Create new directory for user *dev*.

380. `useradd -d /var/dev dev`
      Assign `/var/dev` as home for new user *dev*.

381. `ls -l /var/`
      Confirm `/var/dev` exists.

382. `passwd dev`
      Set password for *dev*.

383. `su dev`
      Switch to user *dev*.

384. `tail /etc/passwd`
      Confirm *dev* added to passwd.

385. `usermod -l zahidali zahid`
      Rename user *zahid* to *zahidali*.

386. `tail /etc/passwd`
      Confirm rename worked.

387. `usermod -l zahid zahidali`
      Rename *zahidali* back to *zahid*.

388. `tail /etc/passwd`
      Reconfirm username.

389. `su salman`
      Switch to user *salman*.

390. `usermod -L salman`
      Lock account *salman*.

391. `su salman`
      Login blocked due to account lock.

392. `su zubair`
      Switch to another user.

393. `passwd salman`
      Reset password for *salman*.

394. `su zubair`
      Return to user *zubair*.

395. `usermod -L salman`
      Lock *salman* again.

396. `su zubair`
      Stay in current shell.

397. `usermod -U salman`
      Unlock account *salman*.

398. `su zubair`
      Continue session.

399. `tail /etc/shadow`
      View last entries in shadow file.

400. `tail -5/etc/shadow`
      (Incorrect syntax, missing space.)

401. `tail -5 /etc/shadow`
      Proper syntax to view last 5 lines.

402. `usermod -L salman`
      Lock *salman* account again.

403. `grep -r salman /etc/shadow`
      Search for *salman*’s entry in shadow.

404. `usermod -U salman`
      Unlock *salman*.

405. `grep -r salman /etc/shadow`
      Confirm changes.

406. `man chage`
      Open manual for `chage` command.

407. `grep -r salman /etc/shadow`
      Monitor *salman*’s entry again.

408. `chage -m 3 salman`
      Set minimum password age to 3 days.

409. `grep -r salman /etc/shadow`
      Verify change in shadow file.

410. `su salman`
      Login as *salman*.

411. `chage -m 0 salman`
      Remove minimum password age restriction.

412. `su salman`
      Re-login as *salman*.

413. `grep -r salman /etc/shadow`
      Recheck shadow entry.

414. `chage -M 90 salman`
      Set maximum password age to 90 days.

415. `grep -r salman /etc/shadow`
      Verify password expiration policy.

416. `chage -W 10 salman`
      Set warning period to 10 days before password expiration.

417. `grep -r salman /etc/shadow`
      Confirm warning policy.

418. `chage -E 2025-10-30 salman`
      Set account expiration date.

419. `grep -r salman /etc/shadow`
      Final verification.

420. `ls /home/`
      Check home directories.

421. `userdel ali`
      Delete user *ali*.

422. `vi /etc/passwd`
      Inspect passwd file.

423. `useradd ali`
      Recreate user *ali*.

424. `vi /etc/passwd`
      Confirm user entry.

425. `userdel -r ali`
      Delete user and home directory.

426. `ls`
      List current directory contents.

427. `ls /home/ -l`
      Check home directory with permissions.

428. `userdel -r wali`
      Delete user *wali* and home directory.

429. `ls /home/ -l`
      Confirm deletion.

430. `cat /etc/group`
      View all system groups.

431. `groupadd stag`
      Create new group *stag*.

432. `cat /etc/group`
      Confirm group creation.

433. `useradd -g stag arshad`
      Create user *arshad* with primary group *stag*.

434. `id arshad`
      Show UID and GID for *arshad*.

435. `cat /etc/passwd`
      Confirm user added.

436. `id ifra`
      View groups assigned to *ifra*.

437. `usermod -aG stag ifra`
      Append *ifra* to group *stag*.

438. `id ifra`
      Confirm multiple group memberships.

439. `groupadd qa`
      Create group *qa*.

440. `usermod -G qa ifra`
      Set *qa* as exclusive group for *ifra*.

441. `id ifra`
      View updated group list.

442. `usermod -G qa,stag ifra`
      Assign *ifra* to both *qa* and *stag*.

443. `id ifra`
      Confirm both group assignments.

444. `usermod -G stag ifra`
      Set *stag* as only supplementary group.

445. `id ifra`
      View final group membership.


