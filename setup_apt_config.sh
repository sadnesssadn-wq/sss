#!/bin/bash
# APT 实时威胁情报配置 - 快速启动脚本
# Author: APT Intelligence Team
# Date: 2025-10-31

set -e

echo "╔═══════════════════════════════════════════════════════════╗"
echo "║  APT 实时威胁情报配置系统 - 快速启动                        ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 1. 检查 Python
echo -e "${BLUE}[*] Checking Python installation...${NC}"
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}[-] Python 3 not found. Please install Python 3.${NC}"
    exit 1
fi
echo -e "${GREEN}[+] Python 3 found: $(python3 --version)${NC}"

# 2. 安装依赖
echo -e "${BLUE}[*] Installing Python dependencies...${NC}"
pip install -q requests feedparser 2>/dev/null || pip3 install -q requests feedparser
echo -e "${GREEN}[+] Dependencies installed${NC}"

# 3. 设置权限
echo -e "${BLUE}[*] Setting permissions...${NC}"
chmod +x apt_intel_aggregator.py
echo -e "${GREEN}[+] Permissions set${NC}"

# 4. 选择配置
echo ""
echo -e "${YELLOW}Available configurations:${NC}"
echo "  1) 实时威胁情报专家 (推荐) - 最新 APT 手法 + 自动情报"
echo "  2) 供应链攻击专家 - npm/PyPI/Docker 投毒"
echo "  3) 通用红队专家 - 全域攻防"
echo ""
read -p "Select configuration [1-3] (default: 1): " config_choice
config_choice=${config_choice:-1}

case $config_choice in
    1)
        echo -e "${GREEN}[+] Activating: 实时威胁情报专家${NC}"
        cp .cursorrules-apt-realtime .cursorrules
        ;;
    2)
        echo -e "${GREEN}[+] Activating: 供应链攻击专家${NC}"
        cp .cursorrules-apt-supply-chain .cursorrules
        ;;
    3)
        echo -e "${GREEN}[+] Activating: 通用红队专家${NC}"
        # .cursorrules already exists
        echo -e "${GREEN}[+] Using existing .cursorrules${NC}"
        ;;
    *)
        echo -e "${RED}[-] Invalid choice${NC}"
        exit 1
        ;;
esac

# 5. GitHub Token 配置（可选）
echo ""
echo -e "${YELLOW}[?] GitHub Token Configuration (Optional)${NC}"
echo "    GitHub Token can avoid API rate limits."
echo "    Create token at: https://github.com/settings/tokens"
echo ""
read -p "Do you have a GitHub token? [y/N]: " has_token

if [[ $has_token =~ ^[Yy]$ ]]; then
    read -p "Enter your GitHub token: " github_token
    echo "export GITHUB_TOKEN=\"$github_token\"" >> ~/.bashrc
    export GITHUB_TOKEN="$github_token"
    echo -e "${GREEN}[+] GitHub token configured${NC}"
else
    echo -e "${YELLOW}[!] Skipping GitHub token (may encounter rate limits)${NC}"
fi

# 6. 运行情报聚合器（可选）
echo ""
read -p "Run intelligence aggregator now? [Y/n]: " run_now
run_now=${run_now:-Y}

if [[ $run_now =~ ^[Yy]$ ]]; then
    echo -e "${BLUE}[*] Running APT Intelligence Aggregator...${NC}"
    echo ""
    python3 apt_intel_aggregator.py -d 7 -o /tmp/apt_intel
    echo ""
    echo -e "${GREEN}[+] Intelligence report saved to: /tmp/apt_intel/${NC}"
    echo -e "${GREEN}[+] View report: cat /tmp/apt_intel/apt_intel_report.txt${NC}"
fi

# 7. 设置 Cron（可选）
echo ""
read -p "Setup daily auto-update (cron)? [y/N]: " setup_cron
setup_cron=${setup_cron:-N}

if [[ $setup_cron =~ ^[Yy]$ ]]; then
    cron_cmd="0 0 * * * cd $(pwd) && python3 apt_intel_aggregator.py -d 7 -o /tmp/apt_intel >> /var/log/apt-intel.log 2>&1"
    (crontab -l 2>/dev/null; echo "$cron_cmd") | crontab -
    echo -e "${GREEN}[+] Cron job added (runs daily at 00:00 UTC)${NC}"
    echo -e "${GREEN}[+] Check logs: tail -f /var/log/apt-intel.log${NC}"
fi

# 完成
echo ""
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║  ✅ Setup Complete!                                        ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""
echo -e "${GREEN}Next steps:${NC}"
echo "  1. Start using your AI assistant with APT configuration"
echo "  2. View latest intelligence: cat /tmp/apt_intel/apt_intel_report.txt"
echo "  3. Read documentation: cat README_APT_CONFIG.md"
echo ""
echo -e "${YELLOW}Example queries:${NC}"
echo '  - "获取最新 APT 手法"'
echo '  - "复现 APT29 最新攻击"'
echo '  - "生成针对 [目标] 的 APT 攻击方案"'
echo ""
echo -e "${BLUE}Files:${NC}"
echo "  Configuration: .cursorrules"
echo "  Aggregator: apt_intel_aggregator.py"
echo "  Documentation: README_APT_CONFIG.md"
echo ""
