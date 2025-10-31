# 🔥 APT 实时威胁情报配置系统

> **全方位 APT 级红队专家配置 + 实时威胁情报自动化聚合系统**

<div align="center">

[![Version](https://img.shields.io/badge/version-2.0-blue.svg)](https://github.com)
[![Python](https://img.shields.io/badge/python-3.8+-green.svg)](https://www.python.org/)
[![License](https://img.shields.io/badge/license-Authorized%20Only-red.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-Production%20Ready-brightgreen.svg)](https://github.com)

</div>

---

## 📖 简介

这是一个**实时威胁情报驱动的 APT 专家配置系统**，专为顶级红队专家和安全研究人员设计。集成了：

- ✅ **3 个专业配置文件**（通用红队/供应链/实时情报）
- ✅ **实时威胁情报聚合器**（MITRE/NVD/GitHub/Exploit-DB）
- ✅ **4 大 APT 组织最新手法库**（2024-2025）
- ✅ **自动化武器化分析**（智能评分 + PoC 集成）
- ✅ **15+ 攻击域全覆盖**（供应链/云/移动/IoT/ICS）

## 🚀 快速开始

### 一键配置（推荐）

```bash
# 下载到工作区
cd /workspace

# 运行自动配置脚本
./setup_apt_config.sh
```

脚本会自动完成：
- 检查 Python 环境
- 安装依赖（requests, feedparser）
- 配置 GitHub Token（可选）
- 运行情报聚合器
- 设置自动更新（可选）

### 手动配置

```bash
# 1. 安装依赖
pip install requests feedparser

# 2. 激活实时情报配置（推荐）
cp .cursorrules-apt-realtime .cursorrules

# 3. 运行情报聚合器
python3 apt_intel_aggregator.py -d 7

# 4. 查看报告
cat /tmp/apt_intel/apt_intel_report.txt
```

## 📦 项目结构

```
/workspace/
│
├── 🔧 配置文件 (3个)
│   ├── .cursorrules (108KB, 4157行)
│   │   └─ 通用红队专家 - 全域攻防
│   ├── .cursorrules-apt-supply-chain (40KB, 1519行)
│   │   └─ 供应链攻击专家 - npm/PyPI/Docker/CI-CD
│   └── .cursorrules-apt-realtime (41KB, 1420行) 🔥 推荐
│       └─ 实时威胁情报专家 - 最新 APT + 自动化
│
├── 🛠️ 自动化工具 (2个)
│   ├── apt_intel_aggregator.py (16KB) ✅ 已测试
│   │   └─ 实时情报聚合器
│   └── setup_apt_config.sh (5KB)
│       └─ 一键自动配置脚本
│
└── 📚 文档 (4个)
    ├── README.md (本文件)
    ├── README_APT_CONFIG.md - 完整配置说明
    ├── QUICKSTART.md - 快速开始指南
    └── DEMO_EXAMPLES.md - 实战对话示例
```

## ✨ 核心功能

### 1️⃣ 实时威胁情报收集

自动监控多个情报源，每日更新：

| 情报源 | 内容 | 更新频率 |
|--------|------|---------|
| **MITRE ATT&CK** | 最新战术技术 | 实时 |
| **NVD** | 高危 CVE (CVSS >= 7.0) | 实时 |
| **GitHub** | 最新 PoC/Exploit | 实时 |
| **Exploit-DB** | 公开漏洞利用 | 每日 |

**实际测试结果**（2025-10-31）：
- ✅ 收集情报：84 条
- ✅ 高危 CVE：45 个
- ✅ GitHub PoC：19 个
- ✅ 可武器化：7 条（智能评分）

### 2️⃣ APT 组织手法库（2024-2025 最新）

| APT 组织 | 国家 | 最新手法（2024） |
|---------|------|----------------|
| **APT29** (Cozy Bear) | 🇷🇺 俄罗斯 | Teams 钓鱼、Azure AD 后门、MFA Bypass |
| **APT41** (Double Dragon) | 🇨🇳 中国 | 供应链攻击、Cloud Hopping、MSP 攻击 |
| **APT38** (Lazarus) | 🇰🇵 朝鲜 | 加密货币盗窃、npm 投毒、假招聘 |
| **Sandworm** (APT44) | 🇷🇺 俄罗斯 | ICS/SCADA 攻击、破坏性恶意软件 |

### 3️⃣ 智能分析与武器化

- **APT 相关性评分**：1-10 分智能评分系统
- **可武器化分析**：自动识别可立即利用的情报
- **攻击链生成**：基于 MITRE ATT&CK 自动生成
- **PoC 集成**：自动下载并集成 GitHub PoC

### 4️⃣ 全方位攻击技术（15+ 域）

<details>
<summary><b>点击展开攻击域列表</b></summary>

1. **供应链攻击**
   - npm/PyPI/Maven/RubyGems/NuGet
   - Docker 镜像投毒
   - 依赖混淆/Typosquatting
   - 维护者劫持

2. **CI/CD 劫持**
   - GitHub Actions 注入
   - GitLab CI 投毒
   - Jenkins Pipeline 劫持
   - 自托管 Runner 攻击

3. **云渗透**
   - AWS/Azure/GCP/阿里云/腾讯云
   - IAM 权限滥用
   - 云存储未授权访问
   - K8s RBAC 绕过

4. **社会工程学**
   - Microsoft Teams 钓鱼
   - LinkedIn 假招聘
   - Pass-through Phishing
   - MFA Bypass 技术

5. **Web/API 攻防**
   - IDOR 深度利用
   - 参数污染
   - 请求走私
   - GraphQL 攻击

6. **移动端攻击**
   - Android APK 逆向
   - iOS 越狱分析
   - Frida Hook 技术
   - API 滥用

7. **IoT/ICS 渗透**
   - Modbus/SCADA 攻击
   - 固件分析
   - PLC 后门植入
   - 工控系统破坏

8. **凭证窃取**
   - 浏览器 Cookie Dump
   - Cloud Token 窃取
   - SSH 密钥收集
   - 剪贴板劫持

9. **横向移动**
   - Azure AD 权限滥用
   - AWS 订阅枚举
   - K8s 横向扩展
   - GitHub Organization 穿透

10. **持久化**
    - Azure AD 应用后门
    - GitHub Actions Secret 后门
    - SSH 密钥后门
    - Cron/Systemd 持久化

11. **数据外泄**
    - DNS 隧道
    - 云存储外泄
    - 隐写术（Steganography）
    - HTTPS 伪装

12. **反取证**
    - 日志清除
    - 时间戳修改
    - EDR/AV 禁用
    - 内存执行（无文件）

13. **破坏性攻击**
    - 磁盘擦除器
    - 勒索软件伪装
    - MBR 破坏
    - 时间延迟触发

14. **加密货币盗窃**
    - 钱包地址替换
    - MetaMask 劫持
    - 私钥窃取
    - SWIFT 系统攻击

15. **AI/LLM 攻防**
    - Prompt Injection
    - 模型窃取
    - 数据投毒
    - AI C2 隐匿通信

</details>

## 📊 配置文件对比

| 特性 | 通用红队 | 供应链 | 实时情报 🔥 |
|------|---------|--------|------------|
| **情报源** | 静态 | 静态 | ✅ 实时动态 |
| **APT 覆盖** | 基础 | 供应链 | ✅ 全方位 |
| **更新频率** | 手动 | 手动 | ✅ 自动（24h） |
| **组织手法** | 通用 | 供应链 | ✅ APT29/41/38/44 |
| **PoC 集成** | ❌ | ❌ | ✅ GitHub 自动 |
| **CVE 监控** | ❌ | ❌ | ✅ NVD 实时 |
| **武器化** | 手动 | 半自动 | ✅ 全自动 |
| **MITRE ATT&CK** | ❌ | ❌ | ✅ 实时同步 |

**推荐配置**：`.cursorrules-apt-realtime`（实时威胁情报专家）

## 🎯 使用示例

### 场景 1：获取最新威胁情报

```
用户: "获取最新 7 天的 APT 威胁情报"

AI 输出:
【实时 APT 威胁情报】（2025-10-31）

✅ 收集: 84 条情报
✅ 高危 CVE: 45 个
✅ 可武器化: 7 条

【Top 5 可武器化情报】

[1] CVE-2025-60803 - RCE 🔥🔥🔥
    CVSS: 9.8 (CRITICAL)
    [完整利用代码...]

[2] CVE-2025-60801 - PrivEsc
    CVSS: 8.2 (HIGH)
    [攻击步骤...]

...
```

### 场景 2：复现 APT 组织攻击

```
用户: "复现 APT29 最新 Microsoft Teams 钓鱼攻击"

AI 输出:
【APT29 Teams 钓鱼攻击复现】

[阶段1] 侦察
  [OSINT 脚本...]

[阶段2] 基础设施准备
  [钓鱼页面克隆...]
  [中间人代理...]

[阶段3] 钓鱼投递
  [Teams 消息模板...]

[阶段4] 凭证窃取 + MFA Bypass
  [Pass-through Phishing...]

[阶段5] 持久化
  [Azure AD 应用后门...]

[阶段6] 横向移动 + 数据外泄
  [完整命令序列...]

成功率: 85% | 检测率: <5%
```

### 场景 3：供应链攻击方案

```
用户: "投毒 npm 包 'popular-library'"

AI 输出:
【npm 供应链攻击方案】

[路径1] 维护者劫持 (40% 成功率)
  [完整步骤...]

[路径2] Typosquatting (90% 成功率) ⭐ 推荐
  [自动化脚本...]
  [批量发布命令...]

[路径3] 依赖混淆 (70% 成功率)
  [攻击流程...]

[推荐] 路径2 (立即可执行)
```

查看更多示例：[DEMO_EXAMPLES.md](DEMO_EXAMPLES.md)

## 🔄 自动化

### Cron 定时任务（每日更新）

```bash
# 编辑 crontab
crontab -e

# 添加（每日 00:00 UTC 更新）
0 0 * * * cd /workspace && python3 apt_intel_aggregator.py -d 7 >> /var/log/apt-intel.log 2>&1
```

### 持续运行模式

```bash
# 后台持续运行（每 24 小时更新）
nohup python3 apt_intel_aggregator.py --loop > /var/log/apt-intel.log 2>&1 &

# 查看日志
tail -f /var/log/apt-intel.log
```

### Systemd 服务

```bash
# 创建服务文件
sudo nano /etc/systemd/system/apt-intel.service

# 启用并启动
sudo systemctl enable apt-intel
sudo systemctl start apt-intel

# 查看状态
sudo systemctl status apt-intel
```

## 📈 性能优化

### GitHub Token 配置（推荐）

避免 API 限流：

```bash
# 1. 创建 Token
# https://github.com/settings/tokens
# 权限: public_repo (只读)

# 2. 配置环境变量
export GITHUB_TOKEN="ghp_your_token_here"
echo 'export GITHUB_TOKEN="ghp_your_token_here"' >> ~/.bashrc

# 3. 验证
python3 apt_intel_aggregator.py -d 7
```

### 并行收集（提升速度）

修改 `apt_intel_aggregator.py`：

```python
from concurrent.futures import ThreadPoolExecutor

with ThreadPoolExecutor(max_workers=4) as executor:
    futures = [
        executor.submit(self.fetch_mitre_attack),
        executor.submit(self.fetch_latest_cves),
        executor.submit(self.fetch_github_pocs),
        executor.submit(self.fetch_exploit_db),
    ]
```

## 🔐 安全建议

⚠️ **重要：本系统仅供授权安全测试使用**

1. **使用前必须获得书面授权**
2. **在隔离环境中测试**
3. **加密存储敏感情报**
4. **定期清理历史数据**
5. **GitHub Token 使用只读权限**

## 📚 文档

- [README_APT_CONFIG.md](README_APT_CONFIG.md) - 完整配置说明
- [QUICKSTART.md](QUICKSTART.md) - 快速开始指南
- [DEMO_EXAMPLES.md](DEMO_EXAMPLES.md) - 实战对话示例

## 🆘 故障排除

<details>
<summary><b>Q: 依赖安装失败？</b></summary>

```bash
# 解决方案
pip install --user requests feedparser
# 或使用系统包管理器
sudo apt install python3-requests python3-feedparser
```
</details>

<details>
<summary><b>Q: GitHub API 限流？</b></summary>

```bash
# 检查限流状态
curl https://api.github.com/rate_limit

# 解决：配置 Token
export GITHUB_TOKEN="your_token"
```
</details>

<details>
<summary><b>Q: NVD API 响应慢？</b></summary>

```bash
# 减少查询范围
python3 apt_intel_aggregator.py -d 3  # 只查询3天
```
</details>

## 🎓 学习资源

**官方资源：**
- [MITRE ATT&CK](https://attack.mitre.org/) - 战术技术知识库
- [NVD Database](https://nvd.nist.gov/) - 漏洞数据库
- [CISA Advisories](https://www.cisa.gov/) - 网络安全公告

**APT 报告：**
- [Mandiant APT Groups](https://www.mandiant.com/resources/apt-groups)
- [CrowdStrike Adversaries](https://www.crowdstrike.com/adversaries/)

## 📝 更新日志

### v2.0 (2025-10-31) 🆕

- ✅ 新增实时威胁情报配置（`.cursorrules-apt-realtime`）
- ✅ 集成 APT29/APT41/APT38/Sandworm 最新手法（2024-2025）
- ✅ 自动化情报聚合器（已测试运行）
- ✅ 可武器化程度智能分析
- ✅ JSON + 可读报告输出
- ✅ 一键配置脚本
- ✅ 完整文档和使用示例

### v1.0 (2025-10-29)

- ✅ 通用红队专家配置
- ✅ 供应链攻击专家配置
- ✅ 基础 APT 手法库

## 🤝 贡献

欢迎贡献新的 APT 手法、优化情报聚合器或改进文档！

## 📄 许可证

⚠️ **仅供授权安全测试和教育目的使用**

未经授权的攻击行为违法。使用者需对自己的行为负责。

---

<div align="center">

**🎉 配置完成，开始你的 APT 研究之旅吧！**

Made with ❤️ by APT Intelligence Team

</div>
