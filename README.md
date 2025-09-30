# windows-update.ps1
Automated Windows Update script using PowerShell and PSWindowsUpdate. Checks, lists, and installs updates with optional logging.

# Windows Update Automation with PowerShell

This repository provides a simple PowerShell script to **check for and install Windows Updates** using the [PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate) module.  
It’s designed for system administrators, lab environments, or anyone who wants a repeatable way to manage updates from the command line.

---

## 📋 Features
- Automatically ensures the `PSWindowsUpdate` module is installed
- Temporarily bypasses execution policy (safe for the current session only)
- Lists available updates in a clean table
- Prompts before installing updates
- Supports exporting results to a log file for auditing

---

## 🚀 Usage

1. **Clone this repository**:
   ```powershell
   git clone https://github.com/juliailic-hub/windows-update.ps1.git
   cd windows-update.ps1

