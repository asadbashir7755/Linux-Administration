# 📅 Session 31 — 12 Oct 2025 • Host-Based Firewall Management

## 🔹 Introduction
This session covers comprehensive FirewallD management including zones, ports, services, and rich rules. Learn how to configure host-based firewall security for different network environments and traffic types.

**🛡️ Goal: Master FirewallD for Network Security**

---

## 🔥 FirewallD Installation & Service Management

### Package Installation

```bash
dnf install firewalld
rpm -qi firewalld
```
Install FirewallD and verify package information.

### Service Management

```bash
systemctl status firewalld
systemctl start firewalld
systemctl status firewalld
```
Check status, start, and verify FirewallD service is running.

---

## 🌐 Zone Management

### Understanding Zones

```bash
firewall-cmd --get-zones
firewall-cmd --get-active-zone
firewall-cmd --get-default-zone
```
List all available zones, active zones, and default zone.

**Common FirewallD Zones:**
- **drop**: Drop all incoming packets without reply
- **block**: Reject all incoming packets with icmp-host-prohibited
- **public**: For public areas, only selected incoming connections accepted
- **external**: For external networks with masquerading enabled
- **dmz**: For computers in DMZ with limited access
- **work**: For work areas, trust most computers in network
- **home**: For home areas, trust most computers in network
- **internal**: For internal networks, trust most computers
- **trusted**: All network connections accepted

### Zone Configuration

```bash
firewall-cmd --list-all
firewall-cmd --zone=drop --list-all
firewall-cmd --zone=dmz --list-all
```
Display configuration for default zone and specific zones.

---

## 🚪 Service Management

### Available Services

```bash
firewall-cmd --get-services
```
List all predefined services (http, https, ssh, ftp, etc.).

### Adding/Removing Services

```bash
firewall-cmd --add-service=http
firewall-cmd --list-all
firewall-cmd --remove-service=http
firewall-cmd --list-all
```
Add and remove services temporarily (runtime only).

```bash
firewall-cmd --add-service=https --permanent
firewall-cmd --reload
firewall-cmd --list-all
```
Add service permanently and reload configuration.

### Zone-Specific Services

```bash
firewall-cmd --add-service=https --zone=dmz
firewall-cmd --list-all --zone=dmz
firewall-cmd --add-service=https --zone=dmz --permanent
firewall-cmd --reload
```
Add services to specific zones temporarily and permanently.

```bash
firewall-cmd --remove-service=https --zone=dmz --permanent
firewall-cmd --reload
firewall-cmd --list-all --zone=dmz
```
Remove services from specific zones permanently.

---

## 🔌 Port Management

### Adding Custom Ports

```bash
firewall-cmd --add-port=4444/tcp --zone=public
firewall-cmd --list-all
```
Add custom TCP port temporarily.

```bash
firewall-cmd --add-port=53/udp --zone=trusted
firewall-cmd --list-all --zone=trusted
```
Add UDP port to trusted zone.

### Permanent Port Configuration

```bash
firewall-cmd --add-port=4444/tcp --zone=public --permanent
firewall-cmd --reload
firewall-cmd --list-all
```
Add port permanently and reload configuration.

```bash
firewall-cmd --add-port=53/udp --zone=trusted --permanent
firewall-cmd --reload
firewall-cmd --list-all --zone=trusted
```
Add UDP port permanently to trusted zone.

### Removing Ports

```bash
firewall-cmd --remove-port=53/udp --zone=trusted
firewall-cmd --list-all --zone=trusted
firewall-cmd --reload
firewall-cmd --list-all --zone=trusted
```
Remove ports temporarily (changes lost after reload).

---

## 🔄 Interface Management

### Interface Assignment

```bash
ip a
firewall-cmd --get-active-zone
```
Check network interfaces and current zone assignments.

```bash
firewall-cmd --zone=internal --add-interface=lo
firewall-cmd --get-active-zone
```
Add interface to specific zone.

```bash
firewall-cmd --zone=trusted --change-interface=lo
firewall-cmd --get-active-zone
firewall-cmd --list-all --zone=trusted
```
Move interface to different zone.

---

## 🎯 Rich Rules for Advanced Control

### SSH Port Configuration

```bash
vi /etc/ssh/sshd_config
semanage port -a -t ssh_port_t -p tcp 4444
systemctl restart sshd
```
Configure SSH to use custom port 4444 and set SELinux context.

### Rich Rule Examples

```bash
firewall-cmd --add-rich-rule='rule family="ipv4" source address="192.168.8.200" accept' --permanent --zone=public
```
Allow all traffic from specific IP address using rich rules.

**Rich Rule Components:**
- **family**: IPv4 or IPv6
- **source**: Source IP/network
- **destination**: Destination IP/network  
- **service/port**: Specific service or port
- **action**: accept, reject, drop

---

## 🔄 Configuration Persistence

### Runtime vs Permanent

```bash
# Runtime changes (lost on reload/restart)
firewall-cmd --add-service=http

# Permanent changes (survive reboots)
firewall-cmd --add-service=http --permanent
firewall-cmd --reload
```

### Reload Operations

```bash
firewall-cmd --reload        # Load permanent configuration
firewall-cmd --complete-reload  # Restart firewalld completely
```

---

## 🛡️ Security Concepts

### Traffic Direction
```bash
# Firewall's interface level -> Outbound Traffic
# Firewall's interface level <- Inbound Traffic
```
FirewallD primarily controls inbound traffic by default.

### Advanced Firewall Types
```bash
# WAF Web Application Firewall
# ALG Application Level Gateways  
# DDoS Attack Protection
```
Different firewall technologies for various security needs.

---

## 💡 Best Practices

### Security Configuration
- Use restrictive zones (drop/block) for untrusted networks
- Apply principle of least privilege - open only necessary ports
- Use rich rules for granular access control
- Regularly audit firewall rules

### Zone Selection Guidelines
- **Public**: Internet-facing interfaces
- **DMZ**: Web servers, mail servers (limited access)
- **Internal**: Corporate network interfaces
- **Trusted**: Management networks, secure connections
- **Home**: Personal/home network environments

### Operational Best Practices
- Always test rules before making permanent
- Use `--permanent` for production rules
- Keep rule sets simple and documented
- Monitor logs for blocked connections

---

## 🔍 Verification Commands

```bash
# Zone Information
firewall-cmd --get-zones                    # List all zones
firewall-cmd --get-active-zone             # Show active zones
firewall-cmd --list-all                    # Show default zone config
firewall-cmd --list-all --zone=zonename    # Show specific zone

# Service and Port Management
firewall-cmd --get-services                # List available services
firewall-cmd --list-services              # List enabled services
firewall-cmd --list-ports                 # List open ports

# Rule Testing
firewall-cmd --query-service=servicename   # Check if service enabled
firewall-cmd --query-port=port/protocol   # Check if port open
```

---

## 🚨 Troubleshooting

### Common Issues
- Service not accessible after firewall changes
- SSH lockout due to port changes
- Rules not persistent after reboot
- Zone interface assignments not working

### Quick Fixes
```bash
# Emergency disable firewall
systemctl stop firewalld

# Check rule syntax
firewall-cmd --check-config

# Reset to defaults
firewall-cmd --complete-reload
```

---
# End of Session 31 - FirewallD Mastery Complete