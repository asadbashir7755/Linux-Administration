# Linux System Administration

Eighteen sessions of Linux administration written up as I worked through them:
commands, what they do, and session by session interview questions. Also includes
shell scripting, networking and storage practice that used to live in a separate
repo.

This is the base everything else in my DevOps work sits on. If you cannot debug a
service on one box, running a thousand of them is not going to go well.

Portfolio: [committodeploy.dev](https://committodeploy.dev)

## Layout

```
live-sessions/        18 sessions with commands and explanations
interview-questions/  questions per session
shell-scripting/      bash: conditionals, loops, functions, cron
networking/           commands, monitoring tools, reading htop
storage-and-lvm/      LVM, fdisk, disk management
resources/            reference PDFs
assets/               diagrams
```

## Sessions

| # | Topic |
|---|---|
| 01 | [Linux commands for regular system operations](live-sessions/01%20Linux%20commands%20for%20regular%20system%20operations/) |
| 02 | [Editors, nano and vim](live-sessions/02%20Editors%28nano%2Cvim%29/) |
| 03 | [Installing packages](live-sessions/03%20installation%20of%20packages%20in%20linux/) |
| 04 | [Data compression](live-sessions/04%20Data%20compression/) |
| 05 | [Soft and hard links](live-sessions/05%20soft%20and%20hard%20links%20in%20linux/) |
| 06 | [Managing user accounts and groups](live-sessions/06%20Managing%20user%20account%20and%20groups/) |
| 07 | [Permissions](live-sessions/07%20All%20Permissions%20in%20linux/) |
| 08 | [Process management](live-sessions/08%20process%20management/) |
| 09 | [Aliases](live-sessions/09%20aliases/) |
| 10 | [systemd targets](live-sessions/10%20systemd%20Targets/) |
| 11 | [VNC server and viewer](live-sessions/11%20VNC%20server%2CVNC%20Viewer/) |
| 12 | [NFS server](live-sessions/12%20NFS%20SEVER/) |
| 13 | [Remote data management](live-sessions/13%20RemoteDataManagment/) |
| 14 | [vsFTPd](live-sessions/14%20vsFTPD%20service/) |
| 15 | [LAMP stack](live-sessions/15%20LAMP%20STACK/) |
| 16 | [Host based firewall with firewalld](live-sessions/16%20Manage%20Host%20Based%20Firewalld%28FirewallD%29/) |
| 17 | [System recovery](live-sessions/17%20System%20recovery/) |
| 18 | [Password protected GRUB](live-sessions/18%20Passwod%20protected%20Grub/) |

## Shell scripting

Built up over three days in `shell-scripting/`.

| Day | Covers |
|---|---|
| Day 1 | Variables, input, if and else, for, while and until loops, a server reachability check |
| Day 2 | Functions, positional arguments, exit statuses, special variables, a root privilege check |
| Day 3 | Scheduling with cron |

```bash
cd shell-scripting/Day1/loops
chmod +x checkserver.sh
./checkserver.sh
```

## Networking and storage

`networking/` covers the diagnostic commands and monitoring tools, including how
to actually read htop: priority, nice values, and the difference between virtual,
resident and shared memory.

`storage-and-lvm/` covers partitioning with fdisk and LVM: physical volumes,
volume groups, logical volumes, and resizing a filesystem without taking the
system down.

## Interview questions

`interview-questions/` has questions covering sessions 1 to 16. Good for checking
whether you actually took a session in rather than just followed along.

## Environment

Written against both RHEL family and Debian family systems. Where a command
differs between them, like dnf against apt or firewalld against ufw, the session
notes say so.

## Tech stack

Linux, Bash, systemd, firewalld, LVM, NFS, vsFTPd, Apache, MySQL, VNC, cron
