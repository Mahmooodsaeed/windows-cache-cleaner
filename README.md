# 🧹 Windows Cache Cleaner Script

This is a simple but powerful **batch script** that clears various types of cache and temporary files in Windows, resets DNS, and performs a deep clean to free up disk space and improve system performance.

> ⚠️ **Warning:** This script deletes system cache and temporary files. Use it with administrator privileges and at your own risk.

---

## ⚙️ Features

This script performs the following tasks:

- 🚫 Clears user and system temporary files
- 📂 Deletes contents of:
  - `%TEMP%`
  - `C:\Windows\Temp`
  - `C:\Windows\Prefetch`
  - `%APPDATA%\Microsoft\Windows\Recent`
- 🌐 Flushes DNS cache: `ipconfig /flushdns`
- 🔧 Resets Windows Update cache:
  - Stops `wuauserv` and `bits`
  - Deletes `C:\Windows\SoftwareDistribution`
  - Restarts services
- 🪟 Kills and restarts `explorer.exe`
- 🧽 Runs Disk Cleanup silently with pre-configured settings (`cleanmgr /sagerun:1`)
- 🛒 Clears Microsoft Store cache: `wsreset`
- 🧠 Clears clipboard contents
- 🧭 Clears ARP cache: `arp -d *`

---

## 🚀 How to Use

1. Download or copy the contents of [`cleanup.bat`](./cleanup.bat).
2. Save it to your Desktop or another easy-to-access location.
3. **Right-click** the file and select **Run as Administrator**.
4. Follow the prompts in the command window.

---

## 📝 Requirements

- Windows 10, 11, or Server (Admin rights required)
- Cleanmgr must be pre-configured if using `/sagerun:1`

To configure `cleanmgr`:

```bash
cleanmgr /sageset:1
