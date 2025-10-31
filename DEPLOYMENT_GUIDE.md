# 🚀 APT 配置部署指南

## 📦 方式1: 推送到 GitHub（推荐）

### 步骤 1: 准备 GitHub 仓库

在 GitHub 上创建新仓库：

1. 访问 https://github.com/new
2. 仓库名: `apt-intelligence` (或其他名称)
3. 可见性: Public（公开）或 Private（私有）
4. **不要**勾选 "Add a README file"
5. 点击 "Create repository"

### 步骤 2: 推送文件

```bash
# 运行推送脚本
chmod +x git_push.sh
./git_push.sh
```

脚本会自动：
- ✅ 初始化 Git 仓库（如果需要）
- ✅ 配置远程仓库
- ✅ 提交所有配置文件
- ✅ 推送到 GitHub
- ✅ 生成下载链接

### 步骤 3: 获取安装链接

推送成功后，脚本会自动生成链接并保存到 `INSTALL_LINKS.txt`：

```bash
cat INSTALL_LINKS.txt
```

示例输出：
```
【方法1: 一键安装】
bash <(curl -sSL https://raw.githubusercontent.com/username/repo/main/install.sh)

【方法2: 手动下载配置】
curl -o ~/.cursor/rules https://raw.githubusercontent.com/username/repo/main/.cursorrules-apt-realtime
```

---

## 📤 方式2: 更新 install.sh 中的仓库信息

编辑 `install.sh`，修改这些变量：

```bash
# 第 18-20 行
GITHUB_USER="YOUR_USERNAME"      # 改为你的 GitHub 用户名
GITHUB_REPO="YOUR_REPO"          # 改为你的仓库名
GITHUB_BRANCH="main"             # 改为你的分支名（通常是 main 或 master）
```

示例：
```bash
GITHUB_USER="sadnesssadn-wq"
GITHUB_REPO="apt-intelligence"
GITHUB_BRANCH="main"
```

然后重新推送：
```bash
./git_push.sh
```

---

## 🌐 方式3: 使用其他托管服务

### GitLab

```bash
# 1. 创建 GitLab 仓库
# https://gitlab.com/projects/new

# 2. 推送
git init
git remote add origin https://gitlab.com/username/repo.git
git add .
git commit -m "Add APT configs"
git push -u origin main

# 3. 使用链接
curl -o ~/.cursor/rules https://gitlab.com/username/repo/-/raw/main/.cursorrules-apt-realtime
```

### Gitee（码云 - 国内访问快）

```bash
# 1. 创建 Gitee 仓库
# https://gitee.com/projects/new

# 2. 推送
git init
git remote add origin https://gitee.com/username/repo.git
git add .
git commit -m "Add APT configs"
git push -u origin master

# 3. 使用链接
curl -o ~/.cursor/rules https://gitee.com/username/repo/raw/master/.cursorrules-apt-realtime
```

---

## 📋 完整安装命令示例

### 替换占位符后的实际命令

假设：
- 用户名: `sadnesssadn-wq`
- 仓库名: `apt-intelligence`
- 分支: `main`

**一键安装（推荐）：**
```bash
bash <(curl -sSL https://raw.githubusercontent.com/sadnesssadn-wq/apt-intelligence/main/install.sh)
```

**手动下载配置：**
```bash
# 实时情报专家
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/apt-intelligence/main/.cursorrules-apt-realtime

# 供应链专家
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/apt-intelligence/main/.cursorrules-apt-supply-chain

# 通用红队专家
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/apt-intelligence/main/.cursorrules
```

**下载情报聚合器：**
```bash
curl -O https://raw.githubusercontent.com/sadnesssadn-wq/apt-intelligence/main/apt_intel_aggregator.py
chmod +x apt_intel_aggregator.py
python3 apt_intel_aggregator.py -d 7
```

---

## 🔧 测试安装链接

推送后测试链接是否可用：

```bash
# 测试配置文件链接
curl -I https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/.cursorrules-apt-realtime

# 应该返回 200 OK
# HTTP/2 200
# content-type: text/plain; charset=utf-8
```

如果返回 `404 Not Found`，检查：
1. 仓库是否为 Public（公开）
2. 文件路径是否正确
3. 分支名是否正确（main vs master）

---

## 📝 自定义安装脚本

### 添加自定义步骤

编辑 `install.sh`，在 `[6/6]` 之后添加：

```bash
# 自定义步骤：配置 Cron
echo ""
echo -e "${BLUE}[7/7] 配置自动更新...${NC}"
read -p "是否设置每日自动更新情报? [Y/n]: " setup_cron
setup_cron=${setup_cron:-Y}

if [[ $setup_cron =~ ^[Yy]$ ]]; then
    (crontab -l 2>/dev/null; echo "0 0 * * * cd ~/apt-intelligence && python3 apt_intel_aggregator.py -d 7") | crontab -
    echo -e "${GREEN}  ✓ Cron 任务已添加${NC}"
fi
```

---

## 🔒 私有仓库配置

如果使用私有仓库，需要配置访问令牌：

### GitHub Personal Access Token

```bash
# 1. 创建 Token
# https://github.com/settings/tokens
# 权限: repo (完整权限)

# 2. 使用 Token 下载
curl -H "Authorization: token YOUR_TOKEN" \
  -o ~/.cursor/rules \
  https://raw.githubusercontent.com/username/repo/main/.cursorrules-apt-realtime
```

### 修改 install.sh 支持私有仓库

在 `install.sh` 开头添加：

```bash
# 如果是私有仓库，设置此变量
GITHUB_TOKEN="${GITHUB_TOKEN:-}"

# 如果设置了 Token，添加到 curl 命令
if [ -n "$GITHUB_TOKEN" ]; then
    CURL_AUTH="-H \"Authorization: token $GITHUB_TOKEN\""
else
    CURL_AUTH=""
fi

# 使用方式
curl $CURL_AUTH -sSL -o file "$BASE_URL/file"
```

使用：
```bash
export GITHUB_TOKEN="ghp_xxxxx"
bash <(curl -sSL https://raw.githubusercontent.com/user/repo/main/install.sh)
```

---

## 🌍 CDN 加速（可选）

### 使用 jsDelivr CDN（免费）

```bash
# GitHub 文件通过 CDN 访问
curl -o ~/.cursor/rules https://cdn.jsdelivr.net/gh/username/repo@main/.cursorrules-apt-realtime

# 或使用 ghproxy（国内加速）
curl -o ~/.cursor/rules https://ghproxy.com/https://raw.githubusercontent.com/username/repo/main/.cursorrules-apt-realtime
```

---

## 📊 完整工作流示例

### 从零开始到部署

```bash
# 1. 在 GitHub 创建仓库 apt-intelligence

# 2. 推送文件
cd /workspace
chmod +x git_push.sh
./git_push.sh
# 输入仓库地址: https://github.com/username/apt-intelligence.git

# 3. 编辑 install.sh（替换仓库信息）
nano install.sh
# 修改 GITHUB_USER 和 GITHUB_REPO

# 4. 重新提交
git add install.sh
git commit -m "Update install script with repo info"
git push

# 5. 生成安装链接
cat INSTALL_LINKS.txt

# 6. 测试安装（在另一台机器）
bash <(curl -sSL https://raw.githubusercontent.com/username/apt-intelligence/main/install.sh)
```

---

## 🎯 最终用户使用方式

### 一键安装（类似你提供的链接）

```bash
# 单行命令安装
bash <(curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh)

# 或者
curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh | bash
```

### 快速配置（只下载配置文件）

```bash
# 下载并应用配置（类似你的原始命令）
curl -o ~/.cursor/rules https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/.cursorrules-apt-realtime?nocache=$(date +%s)
```

`?nocache=$(date +%s)` 参数确保每次都获取最新版本，不使用缓存。

---

## ✅ 推送检查清单

推送前确认：

- [ ] GitHub 仓库已创建
- [ ] 仓库设置为 Public（或配置了访问令牌）
- [ ] `install.sh` 中的仓库信息已更新
- [ ] 所有配置文件存在且完整
- [ ] 运行 `./git_push.sh` 成功
- [ ] 测试下载链接可用
- [ ] 在新环境测试安装脚本

---

## 🆘 常见问题

### Q: 推送失败 "Permission denied"

```bash
# 配置 Git 凭证
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# 使用 SSH
ssh-keygen -t ed25519 -C "your@email.com"
cat ~/.ssh/id_ed25519.pub  # 添加到 GitHub SSH Keys

# 或使用 HTTPS + Token
git remote set-url origin https://YOUR_TOKEN@github.com/username/repo.git
```

### Q: 下载返回 404

```bash
# 检查仓库是否公开
# 检查文件路径是否正确
# 等待几分钟（GitHub 可能需要时间更新）

# 测试链接
curl -I https://raw.githubusercontent.com/username/repo/main/filename
```

### Q: install.sh 执行失败

```bash
# 查看详细错误
bash -x <(curl -sSL https://raw.githubusercontent.com/username/repo/main/install.sh)

# 或下载后执行
curl -sSL -o install.sh https://raw.githubusercontent.com/username/repo/main/install.sh
chmod +x install.sh
./install.sh
```

---

## 📞 获取帮助

如果遇到问题：

1. 检查 `INSTALL_LINKS.txt` 中的链接
2. 运行 `./git_push.sh` 查看详细输出
3. 测试单个文件下载：
   ```bash
   curl -I https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/.cursorrules-apt-realtime
   ```

---

**🎉 部署完成后，你的安装命令将是：**

```bash
bash <(curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/install.sh)
```

**就像你提供的示例一样简洁！** 🚀
