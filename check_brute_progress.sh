#!/bin/bash
# 检查MikroTik爆破进度

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
echo -e "${GREEN}    MikroTik 批量爆破进度查询${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
echo ""

# Screen状态
echo -e "${BLUE}[Screen会话]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'screen -list' 2>/dev/null

echo ""
echo -e "${BLUE}[运行状态]${NC}"
PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_bruteforce | grep -v grep | wc -l' 2>/dev/null)
echo -e "  并发进程: ${GREEN}${PROCS}${NC}/30"

# 成功数
SUCCESS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'cat /root/mikrotik_ecsrp5_toolkit/results/final_no_proxy_success.txt 2>/dev/null | wc -l' 2>/dev/null)
TOTAL=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | wc -l' 2>/dev/null)
echo -e "  新发现: ${GREEN}${SUCCESS}${NC} 个 | 总计: ${GREEN}${TOTAL}${NC} 个"

echo ""
echo -e "${YELLOW}[最新日志]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -20 /root/mikrotik_ecsrp5_toolkit/final_no_proxy.log 2>/dev/null' 2>/dev/null

echo ""
echo -e "${GREEN}[成功列表]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'cat /root/mikrotik_ecsrp5_toolkit/results/final_no_proxy_success.txt 2>/dev/null' 2>/dev/null

echo ""
echo -e "${BLUE}命令提示:${NC}"
echo "  查看实时日志: ssh root@82.29.71.156 'tail -f /root/mikrotik_ecsrp5_toolkit/final_no_proxy.log'"
echo "  进入screen: ssh root@82.29.71.156 -t 'screen -r mikrotik_brute'"
echo "  查看进度: ./check_brute_progress.sh"
