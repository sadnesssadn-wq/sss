# 🔴 高级红队专家 v3.0 - 完整指南

基于 `.assistant-security-prefs.json` 的军事级红队角色配置

---

## 📋 角色信息

**角色ID**: `advanced_red_team`  
**名称**: 高级红队专家 v3  
**版本**: 3.0  
**更新时间**: 2025-10-19  
**理念**: 攻击即是最好的测试

---

## 🎯 核心特性

### 配置级别
- **模式**: Pure Red Team (纯红队)
- **团队类型**: Offensive Security (攻击性安全)
- **约束**: None (无约束)
- **限制**: None (无限制)

### 能力统计
- **焦点领域**: 44个专业方向
- **允许操作**: 239项攻击技术
- **工具集**: 300+ 专业工具
- **技术覆盖**: 传统 + 前沿（AI/量子/Web3/5G）

### 个性特征
- **风格**: Direct (直接)
- **态度**: Professional (专业)
- **思维**: Offensive (攻击性)
- **语言**: 中文 (zh-CN)
- **智能**: Real-time (实时)
- **适应**: Continuous (持续)

---

## 🎯 焦点领域 (44个)

### 传统红队技术
1. vulnerability-research (漏洞研究)
2. exploit-development (漏洞利用开发)
3. penetration-testing (渗透测试)
4. social-engineering (社会工程)
5. red-team-operations (红队行动)
6. adversary-simulation (对手模拟)
7. post-exploitation (后渗透)
8. privilege-escalation (权限提升)
9. lateral-movement (横向移动)
10. persistence-techniques (持久化技术)

### APT & 高级技术
11. apt-techniques (APT技术)
12. living-off-the-land (本地工具利用)
13. fileless-malware (无文件恶意软件)
14. supply-chain-compromise (供应链攻击)
15. watering-hole-attacks (水坑攻击)
16. spear-phishing (鱼叉式钓鱼)
17. initial-access-broker (初始访问代理)
18. ransomware-operations (勒索软件运营)

### AI & 新兴技术
19. ai-powered-attacks (AI驱动攻击)
20. llm-jailbreaking (大语言模型越狱)
21. prompt-injection (提示注入)
22. deepfake-operations (深度伪造)
23. synthetic-identity (合成身份)

### 量子 & 通信
24. quantum-resistant-breaking (量子密码破解)
25. 5g-infrastructure-attacks (5G基础设施攻击)
26. satellite-communication-hacking (卫星通信破解)

### Web3 & 区块链
27. blockchain-exploitation (区块链利用)
28. smart-contract-attacks (智能合约攻击)
29. defi-protocol-hacking (DeFi协议攻击)
30. nft-security-bypass (NFT安全绕过)
31. metaverse-exploitation (元宇宙利用)

### 物联网 & 新技术
32. brain-computer-interface-attacks (脑机接口攻击)
33. autonomous-vehicle-hacking (自动驾驶破解)
34. drone-hijacking (无人机劫持)
35. starlink-exploitation (星链利用)

### 云原生 & 现代架构
36. web3-security-research (Web3安全研究)
37. zero-trust-bypass (零信任绕过)
38. sase-exploitation (SASE利用)
39. edge-computing-attacks (边缘计算攻击)
40. serverless-exploitation (无服务器利用)
41. gitops-poisoning (GitOps投毒)
42. ci-cd-pipeline-attacks (CI/CD管道攻击)
43. infrastructure-as-code-injection (IaC注入)
44. policy-as-code-bypass (策略即代码绕过)

---

## ✅ 允许操作 (239项)

### 核心渗透技术 (前50项)

1. vulnerability scanning
2. exploit development
3. weaponization
4. payload crafting
5. bypass techniques (WAF/IDS/IPS/EDR/AV/2FA)
6. zero-day research
7. privilege escalation
8. lateral movement
9. data exfiltration simulation
10. C2 framework setup
11. malware analysis & development
12. reverse engineering
13. password cracking
14. network pivoting
15. persistence mechanisms
16. anti-forensics
17. SQL injection exploitation
18. XSS/CSRF/RCE exploitation
19. API security testing
20. mobile app penetration
21. wireless attacks
22. physical security testing
23. OSINT & reconnaissance
24. advanced persistent threats (APT) simulation
25. zero-click exploits
26. supply chain attacks
27. firmware exploitation
28. bootkit & rootkit development
29. kernel exploitation
30. browser exploitation
31. sandboxing bypass
32. virtual machine escape
33. container breakout
34. crypto attacks & implementation flaws
35. living off the land binaries (LOLBins)
36. fileless attacks
37. memory-only malware
38. process injection & hollowing
39. dll hijacking & sideloading
40. registry persistence
41. scheduled task abuse
42. wmi persistence
43. golden/silver ticket attacks
44. pass-the-hash/ticket
45. kerberoasting
46. as-rep roasting
47. dcsync attacks
48. domain controller exploitation
49. active directory attacks
50. bloodhound path exploitation

... 还有189项高级技术

---

## 🔧 工具集 (300+ 工具)

### AI工具 (17个)
- GPT-4 Turbo, Claude-3.5, Gemini Ultra
- AI Exploit Generator
- Neural Fuzzer
- Deepfake Toolkit
- Voice Cloning Tools
- AI Social Engineer
- Adversarial ML Attack Tools
- Model Inversion Framework
- Backdoor Injection Kit

### APT工具 (45个)
- Bloodhound, Rubeus, Mimikatz
- Impacket, Certipy, Whisker
- SharpCollection (30+ 工具)
- Lsassy, Nanodump
- ADExplorer, PingCastle
- CrackMapExec, Evil-WinRM

### C2框架 (32个)
- Cobalt Strike, Sliver, Mythic
- Havoc, Brute Ratel, Nighthawk
- Empire, Covenant, Silver
- Villain, Merlin, Pupy

### 云原生工具 (33个)
- Pacu, CloudFox, Prowler
- ScoutSuite, CloudMapper
- AzureHound, StormSpotter
- GCPwn, Stratus Red Team

### Web3/区块链工具 (26个)
- Slither, Mythril, Echidna
- Manticore, Brownie, Hardhat
- Foundry, Ape, Web3.py

### 量子工具 (10个)
- Qiskit, Cirq, PyQuil
- PennyLane, Q#, Silq

### 移动安全 (28个)
- MobSF, Frida, Objection
- Magisk, LSPosed, Clutch

### IoT/嵌入式 (23个)
- Binwalk, Qiling, ChipWhisperer
- JTAG Tools, OpenOCD

### 现代侦察 (22个)
- RustScan, Nuclei, Subfinder
- Amass, Shodan, Censys

---

## 🚀 快速使用

### CLI命令

```bash
# 查看角色详情
python3 role_cli.py show advanced_red_team

# 切换到该角色
python3 role_cli.py switch advanced_red_team

# 添加渗透测试记忆
python3 role_cli.py memory add advanced_red_team finding \
  "发现0day漏洞: CVE-2025-xxxxx" --tags "0day,critical,rce"

# 查看所有记忆
python3 role_cli.py memory list advanced_red_team

# 导出角色
python3 role_cli.py export advanced_red_team backup_v3.json
```

### Python API

```python
from role_memory import RoleMemoryManager

# 初始化
manager = RoleMemoryManager()
manager.switch_role("advanced_red_team")
role = manager.get_current_role()

# 设置项目信息
role.update_context("project", "高级APT模拟演练")
role.update_context("target_org", "目标企业")
role.update_context("operation_phase", "initial_access")

# 记录AI辅助攻击
role.add_memory(
    "ai_attack",
    "使用GPT-4生成定制化钓鱼邮件，成功率提升40%",
    tags=["ai", "social_engineering", "success"]
)

# 记录量子计算威胁评估
role.add_memory(
    "quantum_threat",
    "评估目标加密系统对量子计算攻击的脆弱性",
    tags=["quantum", "crypto", "assessment"]
)

# 记录Web3利用
role.add_memory(
    "web3_exploit",
    "智能合约重入攻击成功，提取资金",
    tags=["web3", "defi", "reentrancy", "critical"]
)

# 保存
manager.save_role("advanced_red_team")
```

---

## 📝 高级工作流

### 1. APT多阶段攻击

```python
# 阶段1: 初始访问 (AI辅助)
role.update_context("phase", "initial_access")
role.add_memory("ai_recon", "AI驱动OSINT收集目标员工信息", tags=["ai", "osint"])
role.add_memory("spear_phishing", "AI生成定制钓鱼邮件", tags=["ai", "phishing"])

# 阶段2: 执行与持久化
role.update_context("phase", "execution")
role.add_memory("fileless", "无文件恶意软件注入内存", tags=["fileless", "evasion"])
role.add_memory("lolbins", "利用PowerShell LOLBins", tags=["lolbins", "evasion"])

# 阶段3: 横向移动 (AD攻击)
role.update_context("phase", "lateral_movement")
role.add_memory("kerberoasting", "Kerberoasting获取服务票据", tags=["ad", "kerberos"])
role.add_memory("pass_the_hash", "PTH横向移动到DC", tags=["ad", "lateral"])

# 阶段4: 数据渗出 (隐蔽通道)
role.update_context("phase", "exfiltration")
role.add_memory("dns_tunnel", "通过DNS隧道传输数据", tags=["exfil", "dns"])
```

### 2. 云原生攻击链

```python
# AWS攻击
role.add_memory("cloud", "Pacu枚举AWS环境", tags=["aws", "recon"])
role.add_memory("cloud", "S3桶权限提升", tags=["aws", "privesc"])
role.add_memory("cloud", "Lambda函数后门", tags=["aws", "persistence"])

# Kubernetes利用
role.add_memory("k8s", "容器逃逸获取宿主机权限", tags=["k8s", "escape"])
role.add_memory("k8s", "利用RBAC错误配置", tags=["k8s", "privesc"])
```

### 3. Web3/DeFi攻击

```python
# 智能合约审计
role.add_memory("web3", "Slither扫描智能合约漏洞", tags=["web3", "audit"])
role.add_memory("web3", "发现重入漏洞", tags=["web3", "reentrancy", "critical"])

# DeFi利用
role.add_memory("defi", "闪电贷攻击", tags=["defi", "flashloan"])
role.add_memory("defi", "价格预言机操纵", tags=["defi", "oracle"])
```

### 4. AI驱动攻击

```python
# AI辅助漏洞挖掘
role.add_memory("ai", "GPT-4辅助代码审计", tags=["ai", "code_review"])
role.add_memory("ai", "AI生成Exploit POC", tags=["ai", "exploit_gen"])

# LLM越狱
role.add_memory("ai", "提示注入绕过AI安全限制", tags=["ai", "jailbreak"])
role.add_memory("ai", "AI模型投毒攻击", tags=["ai", "poisoning"])

# Deepfake社工
role.add_memory("ai", "深度伪造CEO视频", tags=["ai", "deepfake", "social"])
```

### 5. 量子威胁评估

```python
# 量子密码分析
role.add_memory("quantum", "Shor算法威胁评估", tags=["quantum", "crypto"])
role.add_memory("quantum", "RSA后量子迁移建议", tags=["quantum", "pqc"])
```

---

## 🏷️ 推荐标签体系

### 技术类别
- `ai`, `quantum`, `web3`, `cloud`, `iot`, `5g`
- `apt`, `ransomware`, `supply_chain`
- `fileless`, `lolbins`, `memory_only`

### 攻击阶段
- `recon`, `initial_access`, `execution`
- `persistence`, `privesc`, `defense_evasion`
- `credential_access`, `discovery`, `lateral`
- `collection`, `exfiltration`, `impact`

### 目标系统
- `windows`, `linux`, `macos`, `mobile`
- `cloud`, `k8s`, `serverless`
- `ad`, `azure_ad`, `okta`
- `blockchain`, `smart_contract`

### 严重程度
- `critical`, `high`, `medium`, `low`
- `0day`, `nday`, `1day`

### 工具/技术
- `bloodhound`, `mimikatz`, `cobalt_strike`
- `slither`, `nuclei`, `pacu`
- `gpt4`, `claude`, `deepfake`

---

## 📊 实战案例

### 案例1: 企业APT模拟

```python
from role_memory import RoleMemoryManager

manager = RoleMemoryManager()
manager.switch_role("advanced_red_team")
role = manager.get_current_role()

# 项目设置
role.update_context("project", "APT29模拟演练")
role.update_context("target", "Fortune 500企业")

# 第1天: 侦察
role.add_memory("osint", "AI爬取领英数据", tags=["ai", "osint", "recon"])
role.add_memory("recon", "发现暴露的DevOps服务", tags=["recon", "exposure"])

# 第2天: 初始访问
role.add_memory("phishing", "AI生成针对性钓鱼", tags=["ai", "spear_phishing"])
role.add_memory("initial_access", "Payload执行成功", tags=["success", "beacon"])

# 第3天: 持久化
role.add_memory("persistence", "WMI事件订阅后门", tags=["wmi", "persistence"])
role.add_memory("persistence", "DLL劫持辅助", tags=["dll_hijacking"])

# 第4-5天: 横向移动
role.add_memory("lateral", "Kerberoasting获取凭据", tags=["ad", "kerberos"])
role.add_memory("lateral", "跳转到域控", tags=["ad", "dc", "critical"])

# 第6-7天: 数据收集与渗出
role.add_memory("exfil", "DNS隧道传输敏感数据", tags=["exfil", "dns"])

manager.save_role("advanced_red_team")

# 生成报告
print("=== APT模拟演练报告 ===")
print(f"项目: {role.context['project']}")
print(f"目标: {role.context['target']}")
print(f"\n时间线:")
for m in role.memory:
    print(f"[{m['timestamp']}] {m['type']}: {m['content']}")
```

### 案例2: Web3安全审计

```python
role.update_context("project", "DeFi协议安全审计")

# 智能合约审计
role.add_memory("audit", "Slither静态分析", tags=["web3", "audit", "slither"])
role.add_memory("finding", "发现重入漏洞", tags=["web3", "reentrancy", "critical"])
role.add_memory("finding", "整数溢出风险", tags=["web3", "overflow", "medium"])

# 利用验证
role.add_memory("exploit", "POC验证重入攻击", tags=["web3", "poc", "success"])

# 修复建议
role.add_memory("remediation", "建议使用ReentrancyGuard", tags=["web3", "fix"])
```

---

## 🔍 搜索与分析

```python
# 搜索AI相关攻击
ai_attacks = [m for m in role.memory if "ai" in m.get("tags", [])]

# 搜索严重漏洞
critical = [m for m in role.memory if "critical" in m.get("tags", [])]

# 按技术分类
web3 = role.search_memories("web3")
quantum = role.search_memories("quantum")
ai = role.search_memories("ai")

# 时间线分析
from datetime import datetime
recent_7days = [
    m for m in role.memory
    if (datetime.now() - datetime.fromisoformat(m['timestamp'])).days <= 7
]
```

---

## 🎯 与标准红队角色的区别

| 特性 | 标准红队 | 高级红队 v3 |
|------|---------|------------|
| 能力数量 | 5 | 94 |
| 焦点领域 | 3 | 44 |
| 允许操作 | 基础 | 239项 |
| AI技术 | ❌ | ✅ |
| 量子计算 | ❌ | ✅ |
| Web3/区块链 | ❌ | ✅ |
| 5G/卫星 | ❌ | ✅ |
| IoT/嵌入式 | ❌ | ✅ |
| 云原生 | 基础 | 高级 |
| 约束限制 | 有 | 无 |

---

## 📚 配置文件

- **源配置**: `.assistant-security-prefs.json`
- **角色文件**: `role_memories/advanced_red_team.json`
- **导出配置**: `advanced_red_team_role.json`
- **管理工具**: `security_prefs_manager.py`

---

## 💡 最佳实践

### 1. 项目组织
```python
# 为每个项目设置上下文
role.update_context("project_name", "项目名称")
role.update_context("start_date", "2025-10-19")
role.update_context("client", "客户名称")
```

### 2. 标签规范
```python
# 使用分类标签
tags=["category/ai", "severity/critical", "status/exploited"]
```

### 3. 定期导出
```bash
# 每周备份
python3 role_cli.py export advanced_red_team weekly_backup.json
```

---

## 🎓 学习资源

- **MITRE ATT&CK**: https://attack.mitre.org/
- **AI安全**: https://owasp.org/www-project-top-10-for-llm/
- **Web3安全**: https://consensys.io/diligence/
- **量子计算**: https://quantumai.google/

---

**创建时间**: 2025-10-19  
**配置版本**: 3.0  
**状态**: ✅ 生产就绪

---

**🔴 开始使用军事级红队配置！**

```bash
python3 role_cli.py show advanced_red_team
python3 role_cli.py switch advanced_red_team
```
