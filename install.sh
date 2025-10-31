#!/bin/bash
# APT 实时威胁情报系统 - 一键安装脚本
# 使用方法: curl -sSL https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/install.sh | bash

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# 仓库信息（已配置为你的仓库）
GITHUB_USER="sadnesssadn-wq"
GITHUB_REPO="sss"
GITHUB_BRANCH="cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd"
BASE_URL="https://raw.githubusercontent.com/$GITHUB_USER/$GITHUB_REPO/$GITHUB_BRANCH"

clear
echo -e "${CYAN}"
cat << "EOF"
╔══════════════════════════════════════════════════════════════════════╗
║                                                                      ║
║     🔥 APT 实时威胁情报系统 - 一键安装                                 ║
║                                                                      ║
║     Real-time APT Threat Intelligence System                        ║
║                                                                      ║
╚══════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

echo -e "${BLUE}📦 准备安装 APT 实时威胁情报系统...${NC}"
echo -e "${CYAN}   仓库: $GITHUB_USER/$GITHUB_REPO${NC}"
echo ""

# 检查必要工具
echo -e "${BLUE}[1/6] 检查依赖工具...${NC}"
for tool in curl python3 pip3; do
    if ! command -v $tool &> /dev/null; then
        echo -e "${RED}[-] 缺少必要工具: $tool${NC}"
        echo "请先安装: sudo apt install $tool (Debian/Ubuntu) 或 sudo yum install $tool (CentOS/RHEL)"
        exit 1
    fi
    echo -e "${GREEN}  ✓ $tool${NC}"
done

# 创建目录
echo ""
echo -e "${BLUE}[2/6] 创建配置目录...${NC}"
mkdir -p ~/.cursor
mkdir -p ~/apt-intelligence
cd ~/apt-intelligence
echo -e "${GREEN}  ✓ ~/.cursor/${NC}"
echo -e "${GREEN}  ✓ ~/apt-intelligence/${NC}"

# 下载配置文件
echo ""
echo -e "${BLUE}[3/6] 下载配置文件...${NC}"

echo -e "${CYAN}  正在下载: .cursorrules-apt-realtime (实时情报专家)${NC}"
curl -sSL -o .cursorrules-apt-realtime "$BASE_URL/.cursorrules-apt-realtime?nocache=$(date +%s)" || {
    echo -e "${RED}[-] 下载失败，请检查网络连接或仓库地址${NC}"
    echo -e "${YELLOW}    URL: $BASE_URL/.cursorrules-apt-realtime${NC}"
    exit 1
}

echo -e "${CYAN}  正在下载: .cursorrules-apt-supply-chain (供应链专家)${NC}"
curl -sSL -o .cursorrules-apt-supply-chain "$BASE_URL/.cursorrules-apt-supply-chain?nocache=$(date +%s)"

echo -e "${CYAN}  正在下载: .cursorrules (通用红队专家)${NC}"
curl -sSL -o .cursorrules "$BASE_URL/.cursorrules?nocache=$(date +%s)"

echo -e "${CYAN}  正在下载: apt_intel_aggregator.py (情报聚合器)${NC}"
curl -sSL -o apt_intel_aggregator.py "$BASE_URL/apt_intel_aggregator.py?nocache=$(date +%s)"
chmod +x apt_intel_aggregator.py

echo -e "${CYAN}  正在下载: 文档...${NC}"
curl -sSL -o README.md "$BASE_URL/README.md?nocache=$(date +%s)" 2>/dev/null || true
curl -sSL -o QUICKSTART.md "$BASE_URL/QUICKSTART.md?nocache=$(date +%s)" 2>/dev/null || true

echo -e "${GREEN}  ✓ 所有文件下载完成${NC}"

# 选择配置
echo ""
echo -e "${BLUE}[4/6] 选择配置...${NC}"
echo ""
echo -e "${YELLOW}可用配置:${NC}"
echo "  1) 实时威胁情报专家 🔥 (推荐) - 最新 APT + 自动情报"
echo "  2) 供应链攻击专家 - npm/PyPI/Docker 投毒"
echo "  3) 通用红队专家 - 全域攻防"
echo ""
read -p "请选择 [1-3] (默认: 1): " config_choice
config_choice=${config_choice:-1}

case $config_choice in
    1)
        echo -e "${GREEN}  ✓ 激活: 实时威胁情报专家${NC}"
        cp .cursorrules-apt-realtime ~/.cursor/rules
        cp .cursorrules-apt-realtime .cursorrules
        ;;
    2)
        echo -e "${GREEN}  ✓ 激活: 供应链攻击专家${NC}"
        cp .cursorrules-apt-supply-chain ~/.cursor/rules
        cp .cursorrules-apt-supply-chain .cursorrules
        ;;
    3)
        echo -e "${GREEN}  ✓ 激活: 通用红队专家${NC}"
        cp .cursorrules ~/.cursor/rules
        ;;
    *)
        echo -e "${RED}[-] 无效选择，使用默认配置${NC}"
        cp .cursorrules-apt-realtime ~/.cursor/rules
        ;;
esac

# 安装 Python 依赖
echo ""
echo -e "${BLUE}[5/6] 安装 Python 依赖...${NC}"
pip3 install -q requests feedparser 2>/dev/null || pip3 install --user -q requests feedparser
echo -e "${GREEN}  ✓ requests${NC}"
echo -e "${GREEN}  ✓ feedparser${NC}"

# 运行情报聚合器（可选）
echo ""
echo -e "${BLUE}[6/6] 运行情报聚合器...${NC}"
read -p "是否立即收集最新威胁情报? [Y/n]: " run_aggregator
run_aggregator=${run_aggregator:-Y}

if [[ $run_aggregator =~ ^[Yy]$ ]]; then
    echo -e "${CYAN}  正在收集威胁情报 (可能需要 30-60 秒)...${NC}"
    python3 apt_intel_aggregator.py -d 7 -o /tmp/apt_intel 2>&1 | grep -E '\[\+\]|\[-\]|\[\*\]' || true
    
    if [ -f /tmp/apt_intel/apt_intel_report.txt ]; then
        echo -e "${GREEN}  ✓ 情报收集完成${NC}"
        echo -e "${CYAN}  报告位置: /tmp/apt_intel/apt_intel_report.txt${NC}"
    fi
fi

# 配置 GitHub Token（可选）
echo ""
read -p "是否配置 GitHub Token (避免 API 限流)? [y/N]: " setup_token
if [[ $setup_token =~ ^[Yy]$ ]]; then
    echo ""
    echo -e "${YELLOW}GitHub Token 配置:${NC}"
    echo "  1. 访问: https://github.com/settings/tokens"
    echo "  2. 创建 Personal Access Token (只需 public_repo 权限)"
    echo "  3. 复制 Token"
    echo ""
    read -p "输入 GitHub Token (或按 Enter 跳过): " github_token
    
    if [ -n "$github_token" ]; then
        echo "export GITHUB_TOKEN=\"$github_token\"" >> ~/.bashrc
        export GITHUB_TOKEN="$github_token"
        echo -e "${GREEN}  ✓ GitHub Token 已配置${NC}"
    fi
fi

# 完成
echo ""
echo -e "${GREEN}"
cat << "EOF"
╔══════════════════════════════════════════════════════════════════════╗
║                                                                      ║
║     ✅ 安装完成！                                                     ║
║                                                                      ║
╚══════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

echo -e "${CYAN}📁 安装位置:${NC}"
echo "  配置文件: ~/.cursor/rules"
echo "  工作目录: ~/apt-intelligence/"
echo "  情报报告: /tmp/apt_intel/ (如果已运行)"
echo ""

echo -e "${CYAN}🚀 快速开始:${NC}"
echo ""
echo "  1. 打开 Cursor 编辑器"
echo "  2. 与 AI 对话测试:"
echo "     ${YELLOW}\"获取最新 APT 威胁情报\"${NC}"
echo "     ${YELLOW}\"复现 APT29 最新攻击\"${NC}"
echo ""

echo -e "${CYAN}📊 查看情报报告:${NC}"
if [ -f /tmp/apt_intel/apt_intel_report.txt ]; then
    echo "  cat /tmp/apt_intel/apt_intel_report.txt"
else
    echo "  cd ~/apt-intelligence"
    echo "  python3 apt_intel_aggregator.py -d 7"
    echo "  cat /tmp/apt_intel/apt_intel_report.txt"
fi
echo ""

echo -e "${CYAN}🔄 自动更新情报 (可选):${NC}"
echo "  (crontab -l 2>/dev/null; echo \"0 0 * * * cd ~/apt-intelligence && python3 apt_intel_aggregator.py -d 7\") | crontab -"
echo ""

echo -e "${CYAN}📚 文档:${NC}"
echo "  README: ~/apt-intelligence/README.md"
echo "  快速开始: ~/apt-intelligence/QUICKSTART.md"
echo ""

echo -e "${CYAN}🔄 切换配置:${NC}"
echo "  # 实时情报专家"
echo "  cp ~/apt-intelligence/.cursorrules-apt-realtime ~/.cursor/rules"
echo ""
echo "  # 供应链专家"
echo "  cp ~/apt-intelligence/.cursorrules-apt-supply-chain ~/.cursor/rules"
echo ""

echo -e "${GREEN}🎉 祝你在 APT 研究中取得成功！${NC}"
echo ""
echo -e "${YELLOW}⚠️  提醒: 本系统仅供授权安全测试和教育目的使用${NC}"
echo ""
