#!/bin/sh
echo "[+] Installing Xfce, this will take a while"
apt-get update
apt-get dist-upgrade -y
apt-get install -y kali-desktop-xfce xrdp

echo "[+] Configuring XRDP to listen to port 3390 (but not starting the service)..."
# これ別にやらなくてもdocker側でポートフォワーディングすれば3389のままでもいい。
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini
