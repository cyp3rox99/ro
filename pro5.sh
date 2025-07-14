#!/bin/bash

# تنظيف القوائم الطفولية
echo "[+] Removing kids menus..."
sudo rm -rf /usr/share/applications/*game* /usr/share/applications/*edu* /usr/share/applications/*science*

# إنشاء مجلد التصنيفات
sudo mkdir -p /usr/share/desktop-directories

# قائمة بأسماء التصنيفات الهجومية
menus=(
  "Information Gathering"
  "Vulnerability Analysis"
  "Web Application Attacks"
  "Password Attacks"
  "Wireless Attacks"
  "Reverse Engineering"
  "Exploitation Tools"
  "Privilege Escalation"
  "Post Exploitation"
  "Sniffing & Spoofing"
  "Social Engineering"
  "Anonymity Tools"
  "Maintaining Access"
  "Hardware Hacking"
  "Digital Forensics"
  "Mobile Attacks"
  "Reporting Tools"
  "Malware Development"
)

echo "[+] Creating custom hacking menus..."

# إنشاء ملفات التصنيفات
for name in "${menus[@]}"; do
  id=$(echo "$name" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
  sudo tee /usr/share/desktop-directories/${id}.directory > /dev/null << EOF
[Desktop Entry]
Name=$name
Comment=$name category
Icon=utilities-terminal
Type=Directory
EOF
done

echo "[+] Done! Now you can assign .desktop apps to these categories."