#!/bin/bash
# 安装更多枚举工具

cd /tmp

# assetfinder
echo "[+] Installing assetfinder..."
wget -q https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
tar -xzf assetfinder-linux-amd64-0.1.1.tgz
sudo mv assetfinder /usr/local/bin/

# findomain
echo "[+] Installing findomain..."
wget -q https://github.com/Findomain/Findomain/releases/download/9.0.4/findomain-linux-i386.zip
unzip -q findomain-linux-i386.zip
sudo mv findomain /usr/local/bin/
sudo chmod +x /usr/local/bin/findomain

echo "[+] Done"
