# 🔴 红队专家角色使用指南

## 📋 角色信息

**角色ID**: `red_team_expert`  
**名称**: 红队专家  
**描述**: 专注于攻击性安全测试和渗透测试的专家

---

## 🎯 核心能力

1. **渗透测试** - Web应用、网络基础设施、系统渗透
2. **漏洞利用** - 开发和使用漏洞利用代码
3. **社会工程** - 钓鱼、预制攻击、社工技巧
4. **恶意软件分析** - 恶意代码分析、行为研究
5. **APT模拟** - 高级持续性威胁战术模拟

---

## 💡 个性特征

- **风格**: Direct (直接)
- **思维模式**: Offensive (攻击性)
- **语言**: 中文 (zh-CN)
- **专业级别**: Expert (专家)

---

## 🎯 专注领域

- **Web安全**: Web应用渗透测试
- **网络安全**: 网络基础设施攻击
- **Active Directory**: AD域渗透

---

## 🚀 快速使用

### CLI命令

```bash
# 查看角色详情
python3 role_cli.py show red_team_expert

# 添加渗透测试记忆
python3 role_cli.py memory add red_team_expert finding \
  "发现SQL注入漏洞: /login.php?id=1" --tags "vuln,sqli,critical"

# 查看所有记忆
python3 role_cli.py memory list red_team_expert

# 导出角色数据
python3 role_cli.py export red_team_expert red_team_backup.json
```

### Python API

```python
from role_memory import RoleMemoryManager

# 初始化
manager = RoleMemoryManager()
manager.switch_role("red_team_expert")
role = manager.get_current_role()

# 记录侦察阶段
role.update_context("target", "target.com")
role.update_context("phase", "reconnaissance")
role.add_memory(
    "reconnaissance",
    "Nmap扫描: 80, 443, 22, 3306端口开放",
    tags=["nmap", "recon"]
)

# 记录漏洞发现
role.update_context("phase", "scanning")
role.add_memory(
    "finding",
    "Web应用存在SQL注入漏洞",
    tags=["vulnerability", "sqli", "critical"]
)

# 记录利用过程
role.update_context("phase", "exploitation")
role.add_memory(
    "exploit",
    "成功利用SQL注入获取数据库访问",
    tags=["exploit", "sqli", "success"]
)

# 保存进度
manager.save_role("red_team_expert")
```

---

## 📝 渗透测试工作流

### 1. 侦察阶段 (Reconnaissance)

```python
role.update_context("phase", "reconnaissance")

# 端口扫描
role.add_memory("reconnaissance", "Nmap扫描结果...", tags=["nmap", "recon"])

# 子域名枚举
role.add_memory("reconnaissance", "发现子域名...", tags=["subdomain", "recon"])

# 目录爆破
role.add_memory("reconnaissance", "目录扫描结果...", tags=["directory", "recon"])
```

### 2. 漏洞扫描 (Scanning)

```python
role.update_context("phase", "scanning")

# 记录发现的漏洞
role.add_memory("finding", "SQL注入漏洞", tags=["vulnerability", "sqli", "critical"])
role.add_memory("finding", "XSS漏洞", tags=["vulnerability", "xss", "medium"])
```

### 3. 利用阶段 (Exploitation)

```python
role.update_context("phase", "exploitation")

# 记录利用过程
role.add_memory("exploit", "成功利用漏洞", tags=["exploit", "success"])
role.add_memory("exploit", "获取凭据", tags=["exploit", "credentials"])
```

### 4. 权限提升 (Privilege Escalation)

```python
role.update_context("phase", "privilege_escalation")

role.add_memory("exploit", "提权成功", tags=["privilege_escalation", "success"])
role.update_context("access_level", "admin")
```

### 5. 持久化 (Persistence)

```python
role.update_context("phase", "persistence")

role.add_memory("persistence", "部署后门", tags=["persistence", "backdoor"])
```

### 6. 横向移动 (Lateral Movement)

```python
role.update_context("phase", "lateral_movement")

role.add_memory("lateral", "访问内网服务器", tags=["lateral", "internal"])
```

### 7. 数据渗出 (Data Exfiltration)

```python
role.update_context("phase", "exfiltration")

role.add_memory("exfiltration", "导出数据", tags=["exfiltration", "data"])
```

---

## 🏷️ 推荐标签

### 记忆类型
- `reconnaissance` - 侦察
- `finding` - 漏洞发现
- `exploit` - 漏洞利用
- `persistence` - 持久化
- `lateral` - 横向移动
- `exfiltration` - 数据渗出

### 漏洞类型
- `sqli` - SQL注入
- `xss` - 跨站脚本
- `rce` - 远程代码执行
- `lfi` - 本地文件包含
- `ssrf` - 服务端请求伪造
- `xxe` - XML外部实体注入

### 严重程度
- `critical` - 严重
- `high` - 高危
- `medium` - 中危
- `low` - 低危

### 工具
- `nmap` - 端口扫描
- `burp` - Burp Suite
- `sqlmap` - SQL注入工具
- `metasploit` - MSF框架
- `bloodhound` - AD枚举

---

## 📊 实战示例

### 完整渗透测试项目

```python
from role_memory import RoleMemoryManager

manager = RoleMemoryManager()
manager.switch_role("red_team_expert")
role = manager.get_current_role()

# 项目信息
role.update_context("project", "企业渗透测试2025-10")
role.update_context("target", "example.com")
role.update_context("target_ip", "192.168.1.100")

# 侦察
role.update_context("phase", "reconnaissance")
role.add_memory("reconnaissance", 
    "Nmap: 80, 443, 22, 3306开放", 
    tags=["nmap", "recon"])

# 发现漏洞
role.update_context("phase", "scanning")
role.add_memory("finding",
    "SQL注入: /product.php?id=1'",
    tags=["vulnerability", "sqli", "critical"])

# 利用
role.update_context("phase", "exploitation")
role.add_memory("exploit",
    "sqlmap成功提取数据库",
    tags=["exploit", "sqli", "sqlmap", "success"])

# 权限提升
role.add_memory("exploit",
    "获取管理员权限",
    tags=["privilege_escalation", "admin"])

# 持久化
role.update_context("phase", "persistence")
role.add_memory("persistence",
    "部署Webshell: shell.php",
    tags=["persistence", "webshell"])

# 保存
manager.save_role("red_team_expert")

# 生成报告
print("=== 渗透测试报告 ===")
print(f"目标: {role.context['target']}")
print(f"阶段: {role.context['phase']}")
print(f"\n发现漏洞:")
for m in role.memory:
    if m['type'] == 'finding':
        print(f"  - {m['content']}")
```

---

## 🔍 记忆搜索

```python
# 搜索所有漏洞
vulnerabilities = role.search_memories("漏洞")

# 搜索SQL注入相关
sqli_memories = [m for m in role.memory if "sqli" in m.get("tags", [])]

# 搜索严重漏洞
critical = [m for m in role.memory if "critical" in m.get("tags", [])]

# 按阶段过滤
recon = [m for m in role.memory if m["type"] == "reconnaissance"]
```

---

## 💾 数据管理

```bash
# 导出角色数据（含所有记忆）
python3 role_cli.py export red_team_expert project_backup.json

# 查看存储文件
cat role_memories/red_team_expert.json

# 清理测试记忆（Python）
role.memory = [m for m in role.memory if "test" not in m.get("tags", [])]
manager.save_role("red_team_expert")
```

---

## 🎯 最佳实践

### 1. 结构化记录

✅ **好的实践**:
```python
role.add_memory(
    "finding",
    "SQL注入漏洞: /product.php?id=1' OR '1'='1 -- 影响范围: 所有产品页面",
    tags=["vulnerability", "sqli", "critical"]
)
```

❌ **避免**:
```python
role.add_memory("info", "发现问题", tags=["test"])
```

### 2. 使用有意义的标签

✅ 好的标签: `["sqli", "critical", "authenticated"]`  
❌ 避免: `["tag1", "abc", "test"]`

### 3. 及时更新上下文

```python
# 每个阶段都更新
role.update_context("phase", "exploitation")
role.update_context("target_system", "web_server_01")
```

### 4. 定期保存

```python
# 重要操作后立即保存
role.add_memory("exploit", "获取Shell")
manager.save_role("red_team_expert")
```

---

## 📈 统计分析

```python
# 统计记忆类型
from collections import Counter
memory_types = Counter(m['type'] for m in role.memory)
print(f"记忆类型分布: {dict(memory_types)}")

# 统计漏洞严重程度
severities = Counter(
    tag for m in role.memory 
    for tag in m.get('tags', [])
    if tag in ['critical', 'high', 'medium', 'low']
)
print(f"漏洞严重程度: {dict(severities)}")

# 时间线分析
for m in sorted(role.memory, key=lambda x: x['timestamp']):
    print(f"[{m['timestamp']}] {m['type']}: {m['content'][:50]}")
```

---

## 🎓 学习资源

- **MITRE ATT&CK**: https://attack.mitre.org/
- **OWASP Top 10**: https://owasp.org/Top10/
- **HackTheBox**: https://www.hackthebox.com/
- **TryHackMe**: https://tryhackme.com/

---

**创建时间**: 2025-10-19  
**版本**: 1.0  
**状态**: ✅ 生产就绪

---

**🔴 开始你的红队之旅！**

```bash
python3 role_cli.py show red_team_expert
```
