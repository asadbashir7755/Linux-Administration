# 📋 Linux Practice Interview Questions

## 📌 Session 6 – 30 Interview-Style Questions

This section covers practical and scenario-based questions on disk, CPU, memory, file size, network, and troubleshooting for Linux system administration interviews.

---

### 1. Disk & Block Device Insights

- How would you determine which disks and partitions are present on a Linux server and their mount points? (Hint: use `lsblk`)
- When diagnosing disk space issues, how do `df -h` and `du -sh /path` differ in their reported values?
- How would you check the disk usage across all partitions and get a combined total? (Hint: `df --total`)
- Explain why the `df` command historically reports in 512-byte blocks by default. What options allow human-readable or kilobyte formats?
- How would you present the disk usage of a large directory `/var/log` in a summarized, human-readable format?

---

### 2. CPU & Memory Analysis

- Describe how you would view CPU architecture details like number of cores, threads, and model using a command.
- How would you extract only the lines containing "Core" from the CPU information and save them to a file?
- You suspect memory usage issues. Which command will quickly show total, used, and available memory in human-readable form?
- How can the `free` command be used to recognize if a system is swapping heavily?
- Compare `top` with `htop` in terms of monitoring live CPU and memory usage. (Hint: `top` is mentioned in reliable reference sources)

---

### 3. Disk Usage & File Size

- Given that a file grows unexpectedly large, which command would you use to find out its current size versus the entire directory's size?
- How can you display folder sizes under `/var/log` to identify which folder consumes the most space?
- Explain how to get a quick summary of `/var` disk usage without walking through all subdirectories.
- When a partition shows as full, how would you use system tools to identify if deleted but held-open files are still using space?
- How can disk usage reporting help in planning capacity and cleanup for log directories?

---

### 4. Network Interfaces & Uptime

- What command can you use to display all network interfaces and their assigned IP addresses?
- How do you filter the `ip a` output to include only lines showing IP addresses?
- If older tools are unavailable (e.g., `ip` is missing), what legacy command would you try?
- Why is `ifconfig` now considered a legacy tool compared to `ip` commands?
- How would you use `uptime` to assess system load and its implications on performance?

---

### 5. Real-World Troubleshooting & Scenario Questions

- A server is reporting full disk usage on `/var`. Walk through your diagnostic steps using `df`, `du`, and other tools.
- You want to find processes using the most memory to identify potential memory leaks. How do you approach this?
- Your CPU usage appears to spike frequently. Which commands would you use to analyze core count, load, and per-process breakdown?
- You need to monitor multiple servers’ disk, memory, and CPU usage over time. Which tools or scripts would you consider?
- A hidden system process is consuming space—how would you detect that using block and disk usage commands?
- You're tasked with auditing disk and memory across several nodes. Describe an automated approach.
- A server’s network seems misconfigured. How would you confirm interface configuration, IP assignment, and link status?
- What metrics would you check if user complaints indicate slowness—load, memory swap, CPU saturation, or disk I/O?
- Explain how to interpret the load average in `uptime` output when you have a multi-core CPU.
- How would you use block device listing, disk usage, and CPU/memory checks in concert to diagnose a performance issue?

---

*Use these questions for self-assessment and interview preparation. Good luck!*