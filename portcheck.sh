echo -e "\033[1;36m🔍 PortCheck - Legal Port Scanner\033[0m"
echo "============================================="
echo

read -p "Enter an IP address or domain to scan: " target

if ! command -v nmap &> /dev/null; then
  echo -e "\033[1;31m❌ Error: 'nmap' is not installed. Please install it with 'sudo apt install nmap'.\033[0m"
  exit 1
fi

echo
echo -e "⏳ Scanning top 100 ports on $target ...\n"
nmap_output=$(nmap -Pn -T4 --top-ports 100 "$target")
echo "$nmap_output" | grep "^PORT" -A 100

echo
open_ports=$(echo "$nmap_output" | grep "open" | awk '{print $1}' | cut -d'/' -f1)

safe_ports=(22 80 443)
echo -e "\033[1;33m\n📊 Evaluation of open ports:\033[0m"
echo "-----------------------------------"
for port in $open_ports; do
  if [[ " ${safe_ports[*]} " =~ " ${port} " ]]; then
    echo "✅ Port $port: Safe (commonly used service)"
  else
    echo "⚠️  Port $port: Uncommon - Consider closing"
  fi
done

echo -e "\033[1;36m\n📘 How to close dangerous ports on Linux (UFW):\033[0m"
echo "------------------------------------------------"
echo -e "1. Install UFW (if not installed):\n   sudo apt install ufw"
echo -e "2. Allow SSH (port 22):\n   sudo ufw allow OpenSSH"
echo -e "3. Enable firewall:\n   sudo ufw enable"
echo -e "4. Deny a port (example: 5000):\n   sudo ufw deny 5000"
echo -e "5. Check firewall status:\n   sudo ufw status"
echo
echo -e "\033[1;32m✅ Scan complete. Stay secure!\033[0m"
