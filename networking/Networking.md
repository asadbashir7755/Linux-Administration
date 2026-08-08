# Networking in Linux for DevOps

## Overview

This document summarizes the key networking concepts and Linux configurations that are essential for DevOps engineers. It includes both theoretical understanding and practical command-line usage to monitor and manage network settings.

---

## 🔹 What is Networking?

Networking refers to the practice of connecting computers and other devices to share resources and information. It is the backbone of communication in IT systems.

### 🔸 Why Networking is Important in DevOps

* Enables communication between services and applications.
* Allows remote server management and monitoring.
* Essential for setting up CI/CD pipelines, load balancers, and infrastructure automation.

---

## 🔹 IP Addressing Concepts

### 🔸 IPv4 vs IPv6

* **IPv4**: 32-bit address (e.g., 192.168.1.1)
* **IPv6**: 128-bit address (e.g., 2001:0db8:85a3:0000:0000:8a2e:0370:7334)

### 🔸 Public vs Private IPs

* **Public IP**: Routable over the internet.
* **Private IP**: Used within internal networks.

### 🔸 Static vs Dynamic IPs

* **Static IP**: Manually assigned, does not change.
* **Dynamic IP**: Automatically assigned by DHCP server.

---

## 🔹 Subnetting & Subnet Mask

* **Subnetting**: Dividing a network into smaller logical segments.
* **Subnet Mask**: Defines the network and host portions of an IP address.

  * Example: `255.255.255.0`

---

## 🔹 IPv4 Address Classes

### Why Classes?

To efficiently allocate IP addresses based on organization size.

| Class | Starting Bits | IP Range                    | Hosts per Network | Used For            | Network Bits | Host Bits |
| ----- | ------------- | --------------------------- | ----------------- | ------------------- | ------------ | --------- |
| A     | 0             | 1.0.0.0 – 126.255.255.255   | \~16 million      | Very large networks | 8 bits       | 24 bits   |
| B     | 10            | 128.0.0.0 – 191.255.255.255 | \~65,000          | Medium networks     | 16 bits      | 16 bits   |
| C     | 110           | 192.0.0.0 – 223.255.255.255 | 254               | Small networks      | 24 bits      | 8 bits    |
| D     | 1110          | 224.0.0.0 – 239.255.255.255 | N/A               | Multicasting        | -            | -         |
| E     | 1111          | 240.0.0.0 – 255.255.255.254 | N/A               | Reserved (research) | -            | -         |

### Private IP Ranges

| Class | Private IP Range              |
| ----- | ----------------------------- |
| A     | 10.0.0.0 – 10.255.255.255     |
| B     | 172.16.0.0 – 172.31.255.255   |
| C     | 192.168.0.0 – 192.168.255.255 |

---

## 🔹 CIDR (Classless Inter-Domain Routing)

* Example: `192.168.1.0/24`
* CIDR notation allows more efficient allocation than class-based addressing.

---

## 🔹 Network Interfaces in Linux

* **Check all interfaces**:

  ```bash
  ip a
  ifconfig  # May require installation
  ```

---

## 🔹 Linux Network Configuration Files

### 1. `/etc/hosts`

* Maps hostnames to IP addresses.
* Example:

  ```bash
  cat /etc/hosts
  ```

### 2. `/etc/resolv.conf`

* Specifies DNS servers.
* View DNS settings:

  ```bash
  cat /etc/resolv.conf
  ```

### 3. Netplan (for Ubuntu systems)

* Configuration files typically in `/etc/netplan/`
* Used for defining IP settings in YAML format.
* Commands:

  ```bash
  cd /etc/netplan/
  ls
  cat <file>.yaml
  sudo netplan apply
  ```

---

## 🔗 Next File

For basic networking command-line tools and usage, please refer to the file:
[Basic Networking Commands.md](../Basic%20Networking%20Commands.md)
