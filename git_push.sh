#!/bin/bash
# Git 推送脚本 - 将 APT 配置推送到 GitHub
# 使用方法: ./git_push.sh

set -e

echo "╔═══════════════════════════════════════════════════════════╗"
echo "║  📤 APT 配置文件 Git 推送脚本                              ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 检查是否在 git 仓库中
if [ ! -d .git ]; then
    echo -e "${YELLOW}[!] 当前目录不是 git 仓库${NC}"
    echo ""
    read -p "是否初始化为 git 仓库? [Y/n]: " init_git
    init_git=${init_git:-Y}
    
    if [[ $init_git =~ ^[Yy]$ ]]; then
        git init
        echo -e "${GREEN}[+] Git 仓库初始化成功${NC}"
    else
        echo -e "${RED}[-] 取消操作${NC}"
        exit 1
    fi
fi

# 检查远程仓库
if ! git remote | grep -q origin; then
    echo -e "${YELLOW}[!] 未配置远程仓库${NC}"
    echo ""
    echo "请输入 GitHub 仓库地址 (例如: https://github.com/username/repo.git)"
    read -p "仓库地址: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo -e "${RED}[-] 仓库地址不能为空${NC}"
        exit 1
    fi
    
    git remote add origin "$repo_url"
    echo -e "${GREEN}[+] 远程仓库配置成功${NC}"
fi

# 获取当前分支
current_branch=$(git branch --show-current 2>/dev/null || echo "")

if [ -z "$current_branch" ]; then
    # 如果没有分支，创建主分支
    current_branch="main"
    git checkout -b $current_branch 2>/dev/null || true
fi

echo ""
echo -e "${BLUE}[*] 当前分支: $current_branch${NC}"
echo -e "${BLUE}[*] 远程仓库: $(git remote get-url origin)${NC}"
echo ""

# 列出将要推送的文件
echo "将要推送的文件:"
echo "─────────────────────────────────────────────"
ls -lh .cursorrules* *.py *.sh *.md 2>/dev/null | awk '{print "  " $9 " (" $5 ")"}'
echo "─────────────────────────────────────────────"
echo ""

read -p "确认推送这些文件? [Y/n]: " confirm
confirm=${confirm:-Y}

if [[ ! $confirm =~ ^[Yy]$ ]]; then
    echo -e "${RED}[-] 取消推送${NC}"
    exit 0
fi

# 添加文件
echo -e "${BLUE}[*] 添加文件到 Git...${NC}"
git add .cursorrules* *.py *.sh *.md .project_summary.txt 2>/dev/null || true

# 提交
echo -e "${BLUE}[*] 提交更改...${NC}"
commit_message="Add APT Real-time Threat Intelligence System v2.0

- 3 expert configurations (General/Supply Chain/Real-time)
- Automated intelligence aggregator (MITRE/NVD/GitHub/Exploit-DB)
- Latest APT TTPs (APT29/APT41/APT38/Sandworm)
- Smart weaponization analysis
- Complete documentation and examples
"

git commit -m "$commit_message" 2>/dev/null || {
    echo -e "${YELLOW}[!] 没有需要提交的更改${NC}"
}

# 推送
echo -e "${BLUE}[*] 推送到远程仓库...${NC}"
git push -u origin $current_branch || {
    echo -e "${RED}[-] 推送失败${NC}"
    echo ""
    echo "可能的原因:"
    echo "  1. 需要先在 GitHub 上创建仓库"
    echo "  2. 需要配置 GitHub 认证 (git config)"
    echo "  3. 权限不足"
    echo ""
    echo "手动推送命令:"
    echo "  git push -u origin $current_branch"
    exit 1
}

echo ""
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║  ✅ 推送成功！                                             ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

# 获取仓库信息
repo_url=$(git remote get-url origin)
# 从 URL 提取用户名和仓库名
if [[ $repo_url =~ github.com[:/]([^/]+)/([^/.]+) ]]; then
    username="${BASH_REMATCH[1]}"
    reponame="${BASH_REMATCH[2]}"
    
    echo -e "${GREEN}📦 GitHub 仓库信息:${NC}"
    echo "  用户名: $username"
    echo "  仓库名: $reponame"
    echo "  分支: $current_branch"
    echo ""
    
    echo -e "${GREEN}🔗 Raw 文件链接:${NC}"
    echo ""
    echo "【实时情报专家配置】"
    echo "curl -o ~/.cursor/rules \\"
    echo "  https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-realtime"
    echo ""
    
    echo "【供应链专家配置】"
    echo "curl -o ~/.cursor/rules \\"
    echo "  https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-supply-chain"
    echo ""
    
    echo "【通用红队专家配置】"
    echo "curl -o ~/.cursor/rules \\"
    echo "  https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules"
    echo ""
    
    echo "【情报聚合器】"
    echo "curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/apt_intel_aggregator.py"
    echo ""
    
    echo "【一键安装脚本】"
    echo "curl -sSL https://raw.githubusercontent.com/$username/$reponame/$current_branch/install.sh | bash"
    echo ""
    
    echo -e "${BLUE}💡 使用方法:${NC}"
    echo "  1. 复制上面的 curl 命令"
    echo "  2. 在任何机器上运行"
    echo "  3. 自动下载并配置"
    echo ""
    
    # 保存链接到文件
    cat > INSTALL_LINKS.txt << EOF
╔═══════════════════════════════════════════════════════════╗
║  APT 实时威胁情报系统 - 安装链接                           ║
╚═══════════════════════════════════════════════════════════╝

【方法1: 一键安装（推荐）】

bash <(curl -sSL https://raw.githubusercontent.com/$username/$reponame/$current_branch/install.sh)

【方法2: 手动选择配置】

# 实时情报专家（推荐）
curl -o ~/.cursor/rules https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-realtime

# 供应链专家
curl -o ~/.cursor/rules https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-supply-chain

# 通用红队专家
curl -o ~/.cursor/rules https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules

【方法3: 完整工具包】

# 下载所有文件
curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-realtime
curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules-apt-supply-chain
curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/.cursorrules
curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/apt_intel_aggregator.py
curl -O https://raw.githubusercontent.com/$username/$reponame/$current_branch/setup_apt_config.sh

# 运行配置脚本
chmod +x setup_apt_config.sh
./setup_apt_config.sh

【快速验证】

# 检查配置是否生效
head -5 ~/.cursor/rules

# 运行情报聚合器
python3 apt_intel_aggregator.py -d 7

═══════════════════════════════════════════════════════════

GitHub 仓库: https://github.com/$username/$reponame
Raw 文件基础 URL: https://raw.githubusercontent.com/$username/$reponame/$current_branch/

═══════════════════════════════════════════════════════════
EOF
    
    echo -e "${GREEN}[+] 安装链接已保存到: INSTALL_LINKS.txt${NC}"
    echo ""
    
fi

echo "🎉 完成！"
