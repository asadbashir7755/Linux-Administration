# Fdisk and Disk Partitioning Guide for DevOps

This README provides a detailed guide on understanding disks, partitions, and using `fdisk` to manage partitions in Linux. This is essential knowledge for any DevOps engineer working on infrastructure and system administration.

---

## ✅ What Are Disks?

A **disk** is a storage device used to store data permanently. It can be a physical hard disk (HDD/SSD) or a virtual one in cloud or VM environments.

---

## ✅ What Are Partitions?

A **partition** is a logically divided section of a disk that acts like a separate disk.

### Types of Partitions:

1. **Primary Partition**:

   * Max 4 per disk
   * Can be used to boot the OS

2. **Extended Partition**:

   * Only one allowed per disk
   * Used as a container for logical partitions

3. **Logical Partition**:

   * Exists inside an extended partition
   * Used to bypass the 4-partition limit

### Example:

* Disk `/dev/sda`

  * `/dev/sda1` - Primary
  * `/dev/sda2` - Primary
  * `/dev/sda3` - Extended

    * `/dev/sda5` - Logical
    * `/dev/sda6` - Logical

---

## ✅ How to View Disks

### 1. Using `lsblk`

```bash
lsblk
```

Shows disk and partition tree structure.

### 2. Using `fdisk -l`

```bash
sudo fdisk -l
```

Lists all disks and partition details.

---

## ✅ Creating Fake Disks for Practice

You can simulate additional disks using loop devices.

### Step 1: Create a file to act as a disk

```bash
fallocate -l 1G disk1.img
```

### Step 2: Associate it with a loop device

```bash
sudo losetup /dev/loop10 disk1.img
```

### Step 3: Verify

```bash
lsblk
```

---

## ✅ Partitioning with `fdisk`

### Step 1: Launch `fdisk` on your loop device

```bash
sudo fdisk /dev/loop10
```

### Inside fdisk:

* `n` to create new partition
* `p` for primary, `e` for extended
* `w` to write and save changes

### Step 2: Format the new partition

```bash
sudo mkfs.ext4 /dev/loop10p1
```

---

## ✅ What If We Add New Disk Manually?

You can attach a new physical or virtual disk to your machine and follow the same steps using `fdisk` to partition and format it.

---

## ✅ Mounting Disks

### Step 1: Create a mount point

```bash
sudo mkdir /mnt/disk1
```

### Step 2: Mount the partition

```bash
sudo mount /dev/loop10p1 /mnt/disk1
```

### Step 3: Verify mount

```bash
df -h
```

Or

```bash
mount | grep loop10
```

---

## ✅ Mount on Reboot (Persistent Mount)

### Step 1: Get UUID

```bash
sudo blkid /dev/loop10p1
```

### Step 2: Edit `/etc/fstab`

```bash
sudo nano /etc/fstab
```

Add:

```
UUID=<your-uuid> /mnt/disk1 ext4 defaults 0 2
```

### Step 3: Test fstab

```bash
sudo mount -a
```

Check again:

```bash
df -h
```

---

## ✅ Summary

| Task             | Command                    |
| ---------------- | -------------------------- |
| View Disks       | `lsblk` / `fdisk -l`       |
| Create Disk      | `fallocate -l 1G file.img` |
| Attach Disk      | `losetup`                  |
| Partition        | `fdisk`                    |
| Format           | `mkfs.ext4`                |
| Mount            | `mount`                    |
| Persistent Mount | `fstab`                    |

Mastering these tools is a foundational DevOps skill for working with storage at the OS level.
