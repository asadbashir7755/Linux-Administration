# Advanced Monitoring Tools in Linux (DevOps)

This document explains powerful system and network monitoring tools used in DevOps, including their usage, output interpretation, and relevance.

---

## 1. `htop`

### ✅ Why use it in DevOps?

`htop` is an interactive, real-time process monitoring tool that allows DevOps engineers to analyze system performance and diagnose resource-related issues quickly.

### 🔧 Installation:

```bash
sudo apt install htop
```

### 📌 Launching:

```bash
htop
```

### 🧠 Key Features Overview:

* Real-time CPU, memory, and swap usage (top section)
* Load average and system uptime
* List of all running processes
* Interactive search and filter
* Tree view of process hierarchy

### 🔼 Top Section:

* **CPU%**: Percentage of CPU usage
* **MEM%**: RAM usage
* **SWAP**: Swap memory used
* **Tasks**: Total processes (running, sleeping, etc.)
* **Load Average**: 1, 5, 15-minute system load
* **Uptime**: System running time since last boot

### 📊 Table Explanation:

| Column  | Meaning                                     |
| ------- | ------------------------------------------- |
| PID     | Process ID                                  |
| USER    | User who started the process                |
| PRI     | Process priority                            |
| NI      | Nice value (affects priority)               |
| VIRT    | Virtual memory used                         |
| RES     | Resident memory used (RAM)                  |
| SHR     | Shared memory                               |
| S       | Process state (e.g., S=sleeping, R=running) |
| CPU%    | CPU usage                                   |
| MEM%    | RAM usage                                   |
| TIME+   | Total CPU time used                         |
| COMMAND | Name/command of the process                 |

### ⌨️ Important Keys:

| Key     | Function                                  |
| ------- | ----------------------------------------- |
| `F3`    | Search for process                        |
| `F4`    | Filter processes                          |
| `F5`    | Tree view                                 |
| `F6`    | Sort columns                              |
| `F9`    | Kill a process                            |
| `F10`   | Quit `htop`                               |
| `Space` | Mark process                              |
| `U`     | Show only processes owned by current user |

---

## 2. `iftop`

### ✅ Why use it?

Displays real-time bandwidth usage by host.

### 🔧 Installation:

```bash
sudo apt install iftop
```

### 📌 Launching:

```bash
sudo iftop
```

### 🧠 What it shows:

* Source and destination IPs
* Data rate in/out over time
* Total bandwidth consumption

**Note:** Use arrow keys to navigate, `q` to quit.

---

## 3. `atop`

### ✅ Why use it?

Advanced system & process-level monitoring, logs performance over time.

### 🔧 Installation:

```bash
sudo apt install atop
```

### 📌 Launching:

```bash
sudo atop
```

### 🧠 Features:

* CPU, memory, disk, network stats
* Logging support
* Resource usage per process

**Note:** Extremely useful for historical performance analysis.

---

## 4. `nload`

### ✅ Why use it?

Console-based network traffic analyzer.

### 🔧 Installation:

```bash
sudo apt install nload
```

### 📌 Launching:

```bash
sudo nload
```

### 🧠 What it shows:

* Incoming/outgoing traffic
* Transfer rates
* Total transferred data

**Note:** Very handy for quick bandwidth checks.

---

✅ These tools are essential in the DevOps workflow for resource tracking, system diagnostics, and ensuring infrastructure health.

➡️ [Back to Linux Commands](../Linux/Networking/Networking%20Commands.md)
