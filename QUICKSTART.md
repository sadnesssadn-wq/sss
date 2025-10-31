# 🚀 APT 实时威胁情报系统 - 快速开始

## ⚡ 一键启动

```bash
# 运行自动配置脚本
./setup_apt_config.sh
```

这会自动完成：
- ✅ 检查依赖
- ✅ 安装 Python 包
- ✅ 配置 GitHub Token（可选）
- ✅ 运行情报聚合器
- ✅ 设置自动更新（可选）

## 📊 已完成配置概览

### 🎯 三个专家配置文件

| 文件 | 大小 | 行数 | 说明 |
|------|------|------|------|
| `.cursorrules` | 108KB | 4157 | **通用红队专家** - 全域攻防 |
| `.cursorrules-apt-supply-chain` | 40KB | 1519 | **供应链专家** - 依赖投毒 |
| `.cursorrules-apt-realtime` 🔥 | 41KB | 1420 | **实时情报专家** - 最新 APT |

### 🛠️ 实时情报系统

#### 已测试运行结果（刚才的演示）
```
✅ 收集情报: 84 条
   ├─ NVD CVE: 45 条高危漏洞
   ├─ GitHub PoC: 19 个仓库
   └─ Exploit-DB: 20 个漏洞

✅ 可武器化: 7 条
   ├─ CVE-2025-60803 (CVSS 9.8) 🔥
   ├─ CVE-2025-60801 (CVSS 8.2)
   └─ 5 个其他高价值情报

✅ 输出文件:
   ├─ /tmp/apt_intel_demo/apt_intel_latest.json
   └─ /tmp/apt_intel_demo/apt_intel_report.txt
```

## 🎮 使用示例

### 示例 1: 获取最新 APT 手法

**步骤：**
```bash
# 1. 激活实时情报配置
cp .cursorrules-apt-realtime .cursorrules

# 2. 运行情报聚合器
python3 apt_intel_aggregator.py -d 7

# 3. 查看报告
cat /tmp/apt_intel/apt_intel_report.txt
```

**然后询问 AI 助手：**
```
"基于最新情报，告诉我本周 Top 3 可武器化的 CVE"
```

**AI 输出示例：**
```
【最新可武器化 CVE - Top 3】

1. CVE-2025-60803 (CVSS 9.8 - CRITICAL) 🔥
   ├─ 类型: 远程代码执行 (RCE)
   ├─ 影响: [产品名称]
   ├─ 武器化难度: 低
   ├─ PoC: 已公开
   └─ [完整利用代码]

2. CVE-2025-60801 (CVSS 8.2 - HIGH)
   ├─ 类型: 权限提升
   ├─ 影响: [产品名称]
   └─ [攻击步骤]

3. CVE-2025-43994 (CVSS 8.6 - HIGH)
   └─ [详细信息]
```

### 示例 2: 复现 APT 组织攻击

**询问 AI：**
```
"复现 APT29 (Cozy Bear) 2024-10 最新的 Microsoft Teams 钓鱼攻击"
```

**AI 输出：**
```
【APT29 Teams 钓鱼攻击复现】

[背景]
时间: 2024-10-15
目标: 欧洲政府机构
载体: Microsoft Teams 消息

[完整攻击链]

[阶段1] 社会工程学
→ 钓鱼消息模板:
<完整 HTML 模板>

[阶段2] 凭证窃取
→ 中间人代理
<Python 脚本>

[阶段3] Azure AD 后门
→ 持久化命令
<Azure CLI 命令>

[阶段4] 数据外泄
→ OneDrive 同步
<自动化脚本>

【成功率】85%
【检测率】<5%
```

### 示例 3: 供应链攻击

**步骤：**
```bash
# 切换到供应链专家配置
cp .cursorrules-apt-supply-chain .cursorrules
```

**询问 AI：**
```
"投毒 npm 包 'popular-library'，生成完整攻击方案"
```

**AI 输出：**
```
【npm 供应链攻击方案】

[路径1] 维护者劫持 (成功率 40%)
1. OSINT 收集
   npm owner ls popular-library
   → 维护者: user@example.com

2. 凭证攻击
   <完整脚本>

3. 账号接管
   <步骤>

[路径2] Typosquatting (成功率 90%) ⭐ 推荐
1. 变体生成
   popular-library → 
   - popular-lib
   - popularlib
   - popular-librry
   
2. 批量发布
   <自动化脚本>

3. 后门 payload
   <混淆代码>

【立即可执行】
<完整 shell 脚本>
```

## 🔄 持续运行模式

### 自动化情报更新

```bash
# 方法1: 后台持续运行
nohup python3 apt_intel_aggregator.py --loop -d 7 > /var/log/apt-intel.log 2>&1 &

# 方法2: Cron 每日定时
crontab -e
# 添加: 0 0 * * * cd /workspace && python3 apt_intel_aggregator.py -d 7

# 方法3: Systemd 服务
sudo cp apt-intel.service /etc/systemd/system/
sudo systemctl enable apt-intel
sudo systemctl start apt-intel
```

### 监控日志

```bash
# 实时查看
tail -f /var/log/apt-intel.log

# 查看最新报告
cat /tmp/apt_intel/apt_intel_report.txt

# 查看 JSON 数据
jq '.weaponizable[] | {name, apt_relevance, source}' /tmp/apt_intel/apt_intel_latest.json
```

## 📊 真实输出示例

刚才的测试运行（2025-10-31）实际收集到：

```json
{
  "generated": "2025-10-31T07:24:51",
  "total": 84,
  "weaponizable_count": 7,
  "top_intel": [
    {
      "cve_id": "CVE-2025-60803",
      "score": 9.8,
      "severity": "CRITICAL",
      "apt_relevance": 5,
      "weaponizable": true,
      "source": "NVD"
    }
  ]
}
```

## 🎯 APT 组织手法库（已集成）

配置文件包含最新手法：

### APT29 (Cozy Bear) 🇷🇺
- ✅ Microsoft Teams 钓鱼 (2024-10)
- ✅ Azure AD 应用后门 (2024-08)
- ✅ MFA Bypass - Pass-the-Cookie (2024-03)
- ✅ GitHub Actions 投毒 (2024-06)

### APT41 (Double Dragon) 🇨🇳
- ✅ 供应链攻击 (2024-09)
- ✅ Cloud Hopping (2024-07)
- ✅ SQL 注入 + Web Shell (2024-05)
- ✅ MSP 攻击链 (2024-07)

### APT38 (Lazarus) 🇰🇵
- ✅ 加密货币盗窃 (2024-10)
- ✅ NPM 包投毒 (2024-08)
- ✅ LinkedIn 假招聘 (2024-06)
- ✅ 剪贴板劫持 (持续)

### Sandworm (APT44) 🇷🇺
- ✅ ICS/SCADA 攻击 (2024-09)
- ✅ 破坏性恶意软件 (2024-06)
- ✅ Industroyer2 (2024-06)
- ✅ 供应链劫持 (NotPetya 继承)

## 🔥 高级功能

### 1. 自定义情报源

编辑 `apt_intel_aggregator.py` 添加自定义源：

```python
self.sources = {
    'mitre_attack': '...',
    'nvd_cve': '...',
    'custom_feed': 'https://your-intel-source.com/feed.json',  # 新增
}
```

### 2. 情报过滤

只收集特定类型的情报：

```bash
# 只收集 RCE 相关
python3 apt_intel_aggregator.py -d 7 --filter "RCE,remote code"

# 只收集特定 APT 组织
python3 apt_intel_aggregator.py -d 30 --apt-group "APT29,APT41"
```

### 3. 与其他工具集成

```bash
# 导出到 Metasploit
jq -r '.weaponizable[] | select(.source=="GitHub") | .url' /tmp/apt_intel/apt_intel_latest.json \
  | xargs -I {} git clone {}

# 导出到 MISP (威胁情报平台)
python3 export_to_misp.py --input /tmp/apt_intel/apt_intel_latest.json

# 导出到 Elasticsearch
curl -X POST "localhost:9200/apt_intel/_doc" -H 'Content-Type: application/json' \
  -d @/tmp/apt_intel/apt_intel_latest.json
```

## 📈 性能优化

### GitHub Token 配置

避免 API 限流（强烈推荐）：

```bash
# 创建 GitHub Token
# https://github.com/settings/tokens
# 权限: public_repo (只读)

# 配置
export GITHUB_TOKEN="ghp_your_token_here"
echo 'export GITHUB_TOKEN="ghp_your_token_here"' >> ~/.bashrc
```

### 并行收集

修改脚本使用多线程：

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

## 🔒 安全建议

1. **隔离环境**
   - 在独立 VM/容器中运行
   - 不要在生产环境收集情报

2. **数据加密**
   ```bash
   # 加密敏感情报
   gpg -c /tmp/apt_intel/apt_intel_latest.json
   ```

3. **访问控制**
   ```bash
   chmod 600 /tmp/apt_intel/*
   chown $USER:$USER /tmp/apt_intel/
   ```

4. **日志清理**
   ```bash
   # 定期清理历史日志
   find /tmp/apt_intel -mtime +30 -delete
   ```

## 🆘 故障排除

### 问题 1: 依赖安装失败
```bash
# 解决方案
pip install --user requests feedparser
# 或使用系统包管理器
sudo apt install python3-requests python3-feedparser
```

### 问题 2: GitHub 限流
```bash
# 检查限流状态
curl https://api.github.com/rate_limit

# 解决: 配置 Token
export GITHUB_TOKEN="your_token"
```

### 问题 3: NVD 超时
```bash
# 减少查询范围
python3 apt_intel_aggregator.py -d 3  # 只查询3天
```

## 📞 获取帮助

查看详细文档：
```bash
cat README_APT_CONFIG.md
```

运行帮助：
```bash
python3 apt_intel_aggregator.py --help
```

## ✨ 下一步

1. **运行自动配置**
   ```bash
   ./setup_apt_config.sh
   ```

2. **开始使用 AI 助手**
   - 询问最新 APT 手法
   - 请求攻击方案生成
   - 复现 APT 组织攻击

3. **设置自动化**
   - Cron 定时任务
   - Systemd 服务
   - 集成到 CI/CD

---

**🎉 配置完成！开始你的 APT 级红队之旅吧！**
