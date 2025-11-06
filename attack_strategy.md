# 攻击策略分析

## 当前态势

### 当前系统 (172.16.22.206)
- **权限**: IIS AppPool\DefaultAppPool (低权限)
- **环境**: WORKGROUP (非域环境)
- **系统**: Windows Server 2019
- **AV**: Windows Defender (严格，已拦截PrintSpoofer)
- **提权尝试**: 多次失败（PrintSpoofer被拦截，JuicyPotato失败）

### 网络环境
- **当前主机**: 172.16.22.206
- **数据库服务器**: 172.16.22.208 (可达，ping通)
- **其他主机**: 172.16.22.207, 172.16.22.1
- **网段**: 172.16.22.0/24

### 已获得凭证
- **MSSQL**: sa / Sys@dmin2021 (高权限)
- **邮件**: it@bpi.mail.go.th / It@bpi123
- **Web**: X-Token (webshell访问)

---

## 策略对比

### 选项1: 继续在当前机器提权 ❌
**劣势**:
- 之前多次尝试都失败
- Windows Defender检测严格
- 权限太低，很多操作受限
- SeImpersonatePrivilege存在但无法利用

**优势**:
- 已有webshell，操作方便

**结论**: 不推荐，成功率低

---

### 选项2: 横向移动到数据库服务器 ✅ **推荐**
**优势**:
- ✅ 已有sa凭证（SQL Server最高权限）
- ✅ 可通过xp_cmdshell执行系统命令
- ✅ 数据库服务器可能AV策略不同
- ✅ 可能更容易提权（sa权限通常对应高权限系统账户）
- ✅ 可以扫描内网，发现更多目标
- ✅ 数据库服务器可能连接域控或其他高价值系统

**劣势**:
- 需要先启用xp_cmdshell（可能需要权限）
- 需要建立MSSQL连接

**结论**: **强烈推荐**，成功率高

---

## 推荐攻击路径

### 阶段1: 横向移动到数据库服务器 (172.16.22.208)

#### 1.1 测试MSSQL连接
```sql
-- 通过当前webshell执行
sqlcmd -S 172.16.22.208 -U sa -P "Sys@dmin2021" -d BPIHR_PRD -Q "SELECT @@VERSION"
```

#### 1.2 启用xp_cmdshell
```sql
EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
EXEC sp_configure 'xp_cmdshell', 1;
RECONFIGURE;
```

#### 1.3 执行系统命令
```sql
EXEC xp_cmdshell 'whoami';
EXEC xp_cmdshell 'systeminfo';
EXEC xp_cmdshell 'net user';
```

#### 1.4 下载并执行提权工具
- 在数据库服务器上尝试PrintSpoofer/JuicyPotato
- AV策略可能不同，成功率更高

---

### 阶段2: 在数据库服务器上提权

#### 2.1 信息收集
- 检查权限和特权
- 检查服务
- 检查补丁情况
- 检查AV策略

#### 2.2 提权尝试
- PrintSpoofer (如果SeImpersonatePrivilege存在)
- JuicyPotato
- 服务劫持
- 未修补的CVE

---

### 阶段3: 内网扫描和横向移动

#### 3.1 内网扫描
```powershell
# 扫描172.16.22.0/24网段
1..254 | ForEach-Object { Test-Connection -ComputerName "172.16.22.$_" -Count 1 -ErrorAction SilentlyContinue }
```

#### 3.2 端口扫描
- 445 (SMB)
- 3389 (RDP)
- 1433 (MSSQL)
- 5985/5986 (WinRM)
- 135 (RPC)

#### 3.3 凭证重用
- 尝试sa密码在其他系统
- 尝试邮件凭证
- 从数据库提取更多凭证

---

### 阶段4: 域环境探索（如果存在）

#### 4.1 检查是否加入域
```cmd
systeminfo | findstr /i "domain"
```

#### 4.2 如果发现域环境
- Kerberoasting
- AS-REP Roasting
- NTLM Relay
- BloodHound分析

---

## 执行计划

### 立即执行 (优先级最高)
1. ✅ **测试MSSQL连接** - 验证sa凭证有效性
2. ✅ **启用xp_cmdshell** - 获取命令执行能力
3. ✅ **信息收集** - 了解数据库服务器环境
4. ✅ **提权尝试** - 在数据库服务器上提权

### 后续执行
5. 内网扫描
6. 凭证重用
7. 持久化（如果需要）

---

## 风险评估

### 低风险操作
- MSSQL连接测试
- 信息收集命令
- 内网扫描（小流量）

### 中风险操作
- 启用xp_cmdshell（可能被日志记录）
- 下载提权工具（可能被AV检测）

### 高风险操作
- 提权工具执行
- 大规模内网扫描
- 凭证重用攻击

---

## 成功指标

1. ✅ 成功连接到数据库服务器
2. ✅ 通过xp_cmdshell执行命令
3. ✅ 在数据库服务器上获得SYSTEM权限
4. ✅ 发现内网其他高价值目标
5. ✅ 获取域管理员权限（如果存在域）
