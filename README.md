# 🔍 PortCheck – Legal Port Scanner

A simple bash-based tool to scan a public IP or domain for open TCP ports and give recommendations on which ports should be closed for better security.

> ✅ Use this **only for scanning systems you own or have explicit permission to scan.**  
> ❌ Unauthorized scanning of third-party servers is illegal.

## ✨ Features

- Scans the **top 100 TCP ports** using `nmap`
- Evaluates which ports are safe (22, 80, 443)
- Flags uncommon ports with ⚠️
- Offers Linux firewall (UFW) instructions for port blocking
- CLI-based, easy to use

## 🧪 Usage

```bash
bash portcheck.sh
