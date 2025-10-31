#!/bin/bash
# 红队工具一键安装脚本 - 2025最新版
# 用法: ./tools_installer.sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}"
cat << 'EOF'
╔══════════════════════════════════════════════════════════╗
║  红队工具链自动安装 - 2025                                ║
╚══════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

TOOLS_DIR=~/red-team-tools
mkdir -p $TOOLS_DIR
cd $TOOLS_DIR

# 1. Go工具
echo -e "${YELLOW}[1/6] Go工具...${NC}"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v github.com/projectdiscovery/katana/cmd/katana@latest
go install -v github.com/ffuf/ffuf/v2@latest
echo -e "${GREEN}✓ Go工具安装完成${NC}"

# 2. Python工具
echo -e "${YELLOW}[2/6] Python工具...${NC}"
pip3 install -q sqlmap impacket requests pycryptodome frida-tools
echo -e "${GREEN}✓ Python工具安装完成${NC}"

# 3. 克隆GitHub工具
echo -e "${YELLOW}[3/6] GitHub工具...${NC}"

# FScan（内网扫描）
git clone --depth 1 https://github.com/shadow1ng/fscan 2>/dev/null || echo "fscan已存在"

# Impacket示例脚本
git clone --depth 1 https://github.com/fortra/impacket 2>/dev/null || echo "impacket已存在"

# CrackMapExec
git clone --depth 1 https://github.com/byt3bl33d3r/CrackMapExec 2>/dev/null || echo "CME已存在"

# Evil-WinRM
gem install evil-winrm 2>/dev/null

echo -e "${GREEN}✓ GitHub工具克隆完成${NC}"

# 4. 更新nuclei模板
echo -e "${YELLOW}[4/6] Nuclei模板...${NC}"
nuclei -ut
echo -e "${GREEN}✓ Nuclei模板更新完成${NC}"

# 5. 字典文件
echo -e "${YELLOW}[5/6] 字典文件...${NC}"
mkdir -p wordlists
cd wordlists

# SecLists（经典字典）
git clone --depth 1 https://github.com/danielmiessler/SecLists 2>/dev/null || echo "SecLists已存在"

# 常用密码
cat > common_passwords.txt << 'PASS'
admin
password
123456
admin123
root
pass123
Password123!
Admin@123
PASS

echo -e "${GREEN}✓ 字典文件准备完成${NC}"

# 6. 配置路径
echo -e "${YELLOW}[6/6] 配置环境...${NC}"
echo "export PATH=\$PATH:~/go/bin" >> ~/.bashrc
echo "alias fscan='$TOOLS_DIR/fscan/fscan'" >> ~/.bashrc
echo -e "${GREEN}✓ 环境配置完成${NC}"

# 完成
echo ""
echo -e "${GREEN}"
cat << 'EOF'
╔══════════════════════════════════════════════════════════╗
║  ✅ 安装完成！                                            ║
╚══════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

echo "工具位置: $TOOLS_DIR"
echo ""
echo "已安装工具:"
echo "  信息收集: subfinder, httpx, naabu, katana"
echo "  漏洞扫描: nuclei, sqlmap"
echo "  内网渗透: fscan, impacket, crackmapexec"
echo "  字典: SecLists"
echo ""
echo "重启终端或执行: source ~/.bashrc"
