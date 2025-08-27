# 📅 Session 17 — 23 Aug 2025 • Process Management

## 🔹 Introduction
This session demonstrates basic Linux process management: running, listing, backgrounding, foregrounding, and killing processes.

---

```bash
sleep
```
Run sleep (waits for default time or until interrupted).

```bash
sleep 1
```
Sleep for 1 second.

```bash
sleep 120
```
Sleep for 2 minutes.

```bash
jobs
```
List current jobs in this shell.

```bash
bg
```
Move most recent stopped job to background.

```bash
jobs
```
List jobs again.

```bash
ps aux | grep sleep
```
Show all running processes, filter for 'sleep'.

```bash
jobs
```
List jobs.

```bash
kill -9 2070
```
Force kill process with PID 2070.

```bash
jobs
```
List jobs.

```bash
sleep 180 &
```
Start sleep for 3 minutes in background.

```bash
ps aux | grep sleep
```
Check for running sleep processes.

```bash
sleep 180
```
Sleep for 3 minutes.

```bash
jobs
```
List jobs.

```bash
sleep 180
```
Sleep for 3 minutes.

```bash
jobs
```
List jobs.

```bash
sleep 180
```
Sleep for 3 minutes.

```bash
jobs
```
List jobs.

```bash
bg 4
```
Move job 4 to background.

```bash
jobs
```
List jobs.

```bash
bg 2
```
Move job 2 to background.

```bash
jobs
```
List jobs.

```bash
bg 3
```
Move job 3 to background.

```bash
jobs
```
List jobs.

```bash
ps aux |grep sleep
```
Check for sleep processes.

```bash
jobs
```
List jobs.

```bash
ps aux |grep sleep
```
Check for sleep processes.

```bash
jobs
```
List jobs.

```bash
sleep 180
```
Sleep for 3 minutes.

```bash
jobs
```
List jobs.

```bash
bg
```
Move most recent stopped job to background.

```bash
sleep 170
```
Sleep for 2 minutes 50 seconds.

```bash
sleep 160
```
Sleep for 2 minutes 40 seconds.

```bash
jobs
```
List jobs.

```bash
bg
```
Move most recent stopped job to background.

```bash
jobs
```
List jobs.

```bash
bg
```
Move most recent stopped job to background.

```bash
jobs
```
List jobs.

```bash
fg 1
```
Bring job 1 to foreground.

```bash
jobs
```
List jobs.

```bash
sleep 160
```
Sleep for 2 minutes 40 seconds.

```bash
jobs
```
List jobs.

```bash
bg
```
Move most recent stopped job to background.

```bash
jobs
```
List jobs.

```bash
fg 1
```
Bring job 1 to foreground.

```bash
jobs
```
List jobs.

```bash
bg
```
Move most recent stopped job to background.

```bash
jobs
```
List jobs.

```bash
history
```
Show command history.

---

## 📝 Notes
- `sleep N` pauses for N seconds.
- `jobs` lists background/foreground jobs in the shell.
- `bg [job#]` resumes a stopped job in the background.
- `fg [job#]` brings a background job to the foreground.
- `ps aux | grep <name>` finds running processes.
- `kill -9 <PID>` forcefully kills a process.
- Use `&` to start a process in the background.

---

# End of Session 17