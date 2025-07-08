# 🔍 PortCheck – Legal Port Scanner

A simple bash-based tool to scan a public IP or domain for open TCP ports and give recommendations on which ports should be closed for better security.

> ✅ **Use this only for scanning systems you own or have explicit permission to scan.**  
> ❌ **Unauthorized scanning of third-party servers is illegal.**

---

## ✨ Features

- Scans the **top 100 TCP ports** using `nmap`
- Evaluates which ports are safe (22, 80, 443)
- Flags uncommon ports with ⚠️
- Offers Linux firewall (UFW) instructions for port blocking
- CLI-based, simple and effective

---

## 🧪 Usage

```bash
bash portcheck.sh
```

Then follow the on-screen instructions.

---

## 🛠 Requirements

To run this script successfully, you need the following:

- ✅ **nmap installed**

  You can install it via APT:

  ```bash
  sudo apt install nmap
  ```

- ✅ **A Bash-compatible environment**

  This script works on:
  - Linux distributions (Debian, Ubuntu, Arch, etc.)
  - macOS (if `nmap` is installed via Homebrew)

---

## 📘 Legal Disclaimer

This tool is intended **only for legal and educational purposes**.

By using this script, you confirm that:
- You own the systems or have **explicit permission** to scan them.
- You will **not use this tool for unauthorized scanning**, penetration testing, or intrusion attempts.

> ⚠️ Unauthorized use may be a **criminal offense** in your jurisdiction  
> (e.g., §202c StGB in Germany or similar laws internationally).

---

## ❗ Legal Use Only – Important Notice

This tool is intended strictly for **educational and ethical use only**.

By using this tool, you agree to the following:
- You are the owner or have explicit authorization to scan the target system
- You will not use this software for unauthorized intrusion or reconnaissance
- You accept full responsibility for how you use this tool

**The author assumes no liability for misuse or damage resulting from this software.**

Use responsibly – stay ethical. ✅

---
