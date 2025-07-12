#!/bin/bash

===============================

🛡️ EREBUX X - Phantom Overlord

Arch + Cinnamon + BlackArch Full Integration

By: Majed

===============================

clear figlet "EREBUX X" | lolcat

echo -e "\n🔥 Starting full system upgrade..." | lolcat sudo pacman -Syu --noconfirm

1. Add BlackArch Repos

if [ ! -f strap.sh ]; then echo -e "\n🔗 Downloading BlackArch strap.sh..." | lolcat curl -O https://blackarch.org/strap.sh chmod +x strap.sh fi

sudo ./strap.sh sudo pacman -Syyu --noconfirm

2. Install all BlackArch tools

echo -e "\n🛠 Installing ALL BlackArch tools (2800+)..." | lolcat sudo pacman -S blackarch --noconfirm

3. Install required GUI tool

sudo pacman -S yad --noconfirm

4. Clone essential tools manually

mkdir -p /opt/hacktools cd /opt/hacktools

echo -e "\n📦 Cloning special tools..." | lolcat

git clone https://github.com/thewhiteh4t/seeker.git chmod +x seeker/seeker.sh sudo ln -s /opt/hacktools/seeker/seeker.sh /usr/local/bin/seeker

git clone https://github.com/htr-tech/zphisher.git chmod +x zphisher/zphisher.sh sudo ln -s /opt/hacktools/zphisher/zphisher.sh /usr/local/bin/zphisher

Add more custom tools here as needed

5. Create GUI Launcher

cat << EOF > /usr/local/bin/phantom-launcher #!/bin/bash CHOICE=$(yad --width=400 --height=300 
--title "EREBUX X LAUNCHER" 
--list --column "Tool Category" 
"OSINT Tools" "Exploitation" "Social Engineering" "WiFi / Network" "RATs" "Exit")

case $CHOICE in "OSINT Tools") x-terminal-emulator -e seeker ;; "Social Engineering") x-terminal-emulator -e zphisher ;; *) exit ;; esac EOF

chmod +x /usr/local/bin/phantom-launcher

echo -e "\n✅ GUI Launcher installed: type 'phantom-launcher' to open it" | lolcat

6. Add hacktools to PATH

if ! grep -q "/opt/hacktools" ~/.bashrc; then echo 'export PATH=$PATH:/opt/hacktools/' >> ~/.bashrc fi source ~/.bashrc

7. Done!

echo -e "\n✅ INSTALLATION COMPLETE. Reboot recommended." | lolcat

