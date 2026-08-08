## 📁 `README.md` — LVM (Logical Volume Manager)

### 📌 What is LVM?

**LVM (Logical Volume Manager)** is a system used to manage disk storage in a more flexible and powerful way compared to traditional partitioning. Instead of creating fixed-size partitions, LVM allows you to create logical volumes (LVs) on top of physical volumes (PVs), grouped into volume groups (VGs).

---

### ✅ Why use LVM?

* Resize storage (increase/decrease) dynamically without unmounting.
* Combine multiple physical disks into a single logical storage pool.
* Create snapshots for backups.
* Separate workloads logically even on the same disk.

---

### 🧱 Key LVM Components

| Term                     | Meaning                                              |
| ------------------------ | ---------------------------------------------------- |
| **PV (Physical Volume)** | The actual disk or partition added to LVM.           |
| **VG (Volume Group)**    | A pool of storage made by combining one or more PVs. |
| **LV (Logical Volume)**  | A logical partition created from the VG.             |

---

### 🧪 Practice LVM with Fake Disk (Using Loop Devices)

We will simulate a disk using a file and create an LVM structure on top of it.

---

### 🔧 Step-by-Step: Creating LVM with a Fake Disk

#### 1. 📂 Create a 1GB fake disk file in `/tmp`:

```bash
fallocate -l 1G /tmp/fake-disk.img
```

#### 2. 🖀 Associate the file with a loop device:

```bash
sudo losetup -fP /tmp/fake-disk.img
```

Check which loop device was assigned (e.g., `/dev/loop10`):

```bash
losetup -a
```

---

### 3. 🧱 Create a Physical Volume (PV)

```bash
sudo pvcreate /dev/loop10
```

Verify:

```bash
sudo pvdisplay
```

---

### 4. 📦 Create a Volume Group (VG)

```bash
sudo vgcreate myvg /dev/loop10
```

Verify:

```bash
sudo vgdisplay
```

---

### 5. 📁 Create a Logical Volume (LV)

```bash
sudo lvcreate -L 500M -n mylv myvg
```

Verify:

```bash
sudo lvdisplay
```

---

### 6. 📄 Format the Logical Volume with ext4

```bash
sudo mkfs.ext4 /dev/myvg/mylv
```

---

### 7. 🔗 Mount the LV to a folder (e.g., `/mnt/mylv`)

```bash
sudo mkdir /mnt/mylv
sudo mount /dev/myvg/mylv /mnt/mylv
```

---

### 8. 🔄 Make it Persistent After Reboot (`/etc/fstab`)

Find the UUID:

```bash
sudo blkid /dev/myvg/mylv
```

Add entry to `/etc/fstab`:

```
UUID=your-uuid-here /mnt/mylv ext4 defaults 0 0
```

Save and test:

```bash
sudo mount -a
```

---

### 📏 Extend the Logical Volume Later (Optional)

#### 1. Add More Space to Fake Disk (or attach new disk in real scenario)

#### 2. Extend VG (if adding new PV)

Example if new loop device `/dev/loop11`:

```bash
sudo pvcreate /dev/loop11
sudo vgextend myvg /dev/loop11
```

---

### 3. Extend the Logical Volume:

```bash
sudo lvextend -L +200M /dev/myvg/mylv
```

---

### 4. Resize the Filesystem:

```bash
sudo resize2fs /dev/myvg/mylv
```

---

### 🧠 Notes:

* LVM helps simulate cloud-like dynamic storage on Linux.
* Useful in DevOps to simulate scenarios like volume resizing, scaling, and automation scripting.
* Great for labs and interviews.

---

✅ **Now you have a full working LVM setup using a fake disk — just like working with real disks!**
