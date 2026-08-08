# Basic Networking Commands in Linux (DevOps)

This file contains essential Linux networking commands every DevOps engineer must know. Each command is described with its purpose, usage, and notes for clarity.

---

## 1. `ping`

**Purpose:** Check connectivity to another host (IP or domain).

**Syntax:**

```bash
ping <hostname or IP>
```

**Example:**

```bash
ping google.com
```

**Explanation:** Sends ICMP echo requests and receives replies. Useful for verifying internet or network connectivity.

**Note:** Press `Ctrl + C` to stop the ping process.

---

## 2. `ifconfig` *(Deprecated but still used)*

**Purpose:** Display or configure network interfaces.

**Syntax:**

```bash
ifconfig
```

**Explanation:** Shows IP address, MAC address, and interface status.

**Install if missing:**

```bash
sudo apt install net-tools
```

---

## 3. `ip a` / `ip address`

**Purpose:** Recommended alternative to `ifconfig` for showing IP addresses.

**Syntax:**

```bash
ip a
```

**Explanation:** Lists all network interfaces with assigned IP addresses.

---

## 4. `ss` (Socket Statistics)

**Purpose:** Display detailed information about network sockets.

### Common Options:

* `ss -a`: Show all sockets.
* `ss -l`: Show listening sockets.
* `ss -t`: Show TCP sockets.
* `ss -u`: Show UDP sockets.
* `ss -s`: Summary of socket usage.
* `ss -p`: Show processes using the sockets.
* `ss -tuln`: Common combo to list TCP/UDP ports that are listening.

**Example:**

```bash
ss -tuln
```

**Explanation:** Displays all TCP and UDP ports in listening state.

---

## 5. `hostname`

**Purpose:** Display the hostname of the system.

```bash
hostname
```

---

## 6. `nmcli`

**Purpose:** Command-line tool to manage NetworkManager.

```bash
nmcli device status
```

---

## 7. `ip link`

**Purpose:** Display all network interfaces.

```bash
ip link show
```

---

## 8. `ip route`

**Purpose:** Show or manipulate the routing table.

```bash
ip route
```

---

## 9. `traceroute`

**Purpose:** Shows the path packets take to a destination.

```bash
traceroute google.com
```

**Install if missing:**

```bash
sudo apt install traceroute
```

---

## 10. `netstat` *(Deprecated but informative)*

**Purpose:** Displays network connections, routing tables, etc.

```bash
netstat -tuln
```

**Install if missing:**

```bash
sudo apt install net-tools
```

---

## 11. `dig` (Domain Information Groper)

**Purpose:** Query DNS name servers.

```bash
dig google.com
```

**Install if missing:**

```bash
sudo apt install dnsutils
```

---

## 12. `nslookup`

**Purpose:** DNS query tool.

```bash
nslookup google.com
```

---

## 13. `curl`

**Purpose:** Transfer data to/from a server using HTTP, FTP, etc.

```bash
curl https://example.com
```

---

## 14. `wget`

**Purpose:** Download files from the web.

```bash
wget https://example.com/file.zip
```

---

## 15. `ethtool`

**Purpose:** Display or modify Ethernet device settings.

```bash
sudo ethtool eth0
```

---

## 16. `tcpdump`

**Purpose:** Network packet analyzer.

```bash
sudo tcpdump -i eth0
```

**Install if missing:**

```bash
sudo apt install tcpdump
```

---

## 17. `whois`

**Purpose:** Retrieve domain registration information.

```bash
whois google.com
```

**Install if missing:**

```bash
sudo apt install whois
```

---

## 18. `nmap`

**Purpose:** Network scanner used for host discovery and port scanning.

```bash
nmap -sT localhost
```

**Install if missing:**

```bash
sudo apt install nmap
```

---

## 19. `arp`

**Purpose:** View and manipulate the ARP cache.

```bash
arp -a
```

**Note:** May require `net-tools` package.

---

## 20. `route`

**Purpose:** Show or manipulate the IP routing table.

```bash
route -n
```

**Note:** Also part of `net-tools`. Deprecated in favor of `ip route`.

---

## Tips:

* Use `man <command>` to learn more about any command.
* Combine with `grep` to filter outputs:

```bash
ip a | grep inet
```

---

✅ **All these commands are critical for troubleshooting, configuration, and understanding the Linux network stack in DevOps.**

➡️ [Back to Networking Concepts](../Networking/Networking.md)
