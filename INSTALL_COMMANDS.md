# 🚀 APT 配置系统 - 安装命令

## 📦 基于你的仓库：`sadnesssadn-wq/sss`

---

## ⚡ 方法1: 一键安装（推荐）

```bash
bash <(curl -sSL https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/install.sh)
```

或

```bash
curl -sSL https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/install.sh | bash
```

**完成！** 脚本会自动：
- ✅ 检查依赖
- ✅ 下载所有配置文件
- ✅ 安装 Python 包
- ✅ 配置 Cursor
- ✅ 运行情报聚合器

---

## 🎯 方法2: 快速配置（只下载配置文件）

### 实时威胁情报专家（推荐）🔥

```bash
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime?nocache=$(date +%s)
```

### 供应链攻击专家

```bash
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-supply-chain?nocache=$(date +%s)
```

### 通用红队专家

```bash
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules?nocache=$(date +%s)
```

---

## 🛠️ 方法3: 完整工具包

```bash
# 创建工作目录
mkdir -p ~/apt-intelligence && cd ~/apt-intelligence

# 下载所有文件
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-supply-chain
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/apt_intel_aggregator.py
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/setup_apt_config.sh

# 激活配置
cp .cursorrules-apt-realtime ~/.cursor/rules

# 安装依赖并运行
pip install requests feedparser
python3 apt_intel_aggregator.py -d 7
```

---

## 📋 Windows 用户

### PowerShell

```powershell
# 下载配置
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime" -OutFile "$env:USERPROFILE\.cursor\rules"

# 安装依赖
pip install requests feedparser

# 下载情报聚合器
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/apt_intel_aggregator.py" -OutFile "apt_intel_aggregator.py"

# 运行
python apt_intel_aggregator.py -d 7
```

---

## 🐳 Docker 一键部署

```bash
# 创建 Dockerfile
cat > Dockerfile << 'EOF'
FROM python:3.11-slim

RUN apt-get update && apt-get install -y curl git && \
    pip install requests feedparser

WORKDIR /apt-intelligence

RUN curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime && \
    curl -O https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/apt_intel_aggregator.py

CMD ["python3", "apt_intel_aggregator.py", "-d", "7"]
EOF

# 构建并运行
docker build -t apt-intelligence .
docker run -it apt-intelligence
```

---

## ✅ 验证安装

```bash
# 检查配置文件
head -5 ~/.cursor/rules
# 应该显示: "# 实时 APT 威胁情报专家"

# 查看文件大小
ls -lh ~/.cursor/rules
# 应该显示约 41K

# 运行情报聚合器测试
python3 apt_intel_aggregator.py -d 7
```

---

## 🔄 更新配置

```bash
# 重新下载最新版本（带 nocache 参数）
curl -o ~/.cursor/rules "https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime?nocache=$(date +%s)"
```

---

## 🎯 使用示例

安装完成后，直接与 Cursor AI 对话：

```
你: "获取最新 7 天的 APT 威胁情报"

AI: 【实时 APT 威胁情报】（2025-10-31）
    正在聚合多源情报...
    ✅ MITRE ATT&CK: X 个新技术
    ✅ NVD CVE: Y 个高危漏洞
    ...
```

```
你: "复现 APT29 最新 Microsoft Teams 钓鱼攻击"

AI: 【APT29 Teams 钓鱼攻击复现】
    【完整攻击链】
    [阶段1] 侦察
    [阶段2] 基础设施准备
    ...
```

---

## 🔗 所有链接汇总

### 基础 URL
```
https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/
```

### 配置文件
- **实时情报**: `/.cursorrules-apt-realtime`
- **供应链**: `/.cursorrules-apt-supply-chain`
- **通用红队**: `/.cursorrules`

### 工具
- **情报聚合器**: `/apt_intel_aggregator.py`
- **安装脚本**: `/install.sh`
- **配置脚本**: `/setup_apt_config.sh`

### 文档
- **主文档**: `/README.md`
- **快速开始**: `/QUICKSTART.md`
- **使用示例**: `/DEMO_EXAMPLES.md`

---

## 📊 配置对比

| 配置 | 大小 | 行数 | 适用场景 |
|------|------|------|---------|
| **实时情报专家** 🔥 | 41KB | 1420 | 日常使用、学习最新 APT |
| **供应链专家** | 40KB | 1519 | npm/PyPI/Docker 投毒 |
| **通用红队** | 108KB | 4157 | 全域攻防任务 |

**推荐**: 实时情报专家（覆盖最全面）

---

## 🆘 故障排除

### 问题1: 下载失败 404

```bash
# 检查链接是否正确
curl -I https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime

# 如果返回 404，可能需要：
# 1. 确认文件已推送到 GitHub
# 2. 确认分支名正确
# 3. 等待几分钟让 GitHub 更新
```

### 问题2: 配置不生效

```bash
# 查看配置内容
head ~/.cursor/rules

# 重新下载
curl -o ~/.cursor/rules "https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.cursorrules-apt-realtime?nocache=$(date +%s)"

# 重启 Cursor
```

### 问题3: Python 依赖安装失败

```bash
# 使用 --user 标志
pip install --user requests feedparser

# 或使用系统包管理器
sudo apt install python3-requests python3-feedparser  # Debian/Ubuntu
sudo yum install python3-requests python3-feedparser  # CentOS/RHEL
```

---

## 🎉 快速测试

```bash
# 完整测试流程（1分钟）
curl -sSL https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/install.sh | bash

# 然后打开 Cursor，输入：
# "获取最新 APT 威胁情报"
```

---

**⚠️ 提醒**: 本系统仅供授权安全测试和教育目的使用。

**🎯 安装完成后即可使用！无需额外配置！**
