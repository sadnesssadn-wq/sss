#!/bin/bash
# 深度后门清理脚本

echo "=== 深度后门清理 ==="
echo "警告：将清理所有可疑文件和工具"
read -p "确认执行？(yes/no): " confirm
[[ "$confirm" != "yes" ]] && exit 0

# 1. 杀掉可疑进程
echo "[1/8] 停止可疑进程..."
pkill -f cambodia_final.py
pkill -f www_bruteforce
pkill -f "python3 -m http.server"
killall -9 adb 2>/dev/null

# 2. 删除/tmp攻击工具
echo "[2/8] 清理/tmp目录..."
rm -rf /tmp/Responder
rm -f /tmp/ems_brute_real.sh
rm -f /tmp/EXPLOIT_POC.sh
rm -f /tmp/wp_brute.sh
rm -f /tmp/path_bypass.sh
rm -f /tmp/query_orders.py
rm -f /tmp/*.sh

# 3. 清理可疑SSH会话
echo "[3/8] 检查SSH会话..."
who | grep -v "$(who am i | awk '{print $1" "$2}')" | awk '{print $2}' | xargs -I {} pkill -t {}

# 4. 清空bash历史
echo "[4/8] 清空命令历史..."
cat /dev/null > ~/.bash_history
history -c

# 5. 检查authorized_keys
echo "[5/8] 检查SSH密钥..."
echo "当前SSH密钥:"
cat /root/.ssh/authorized_keys

# 6. 加固SSH配置
echo "[6/8] 加固SSH..."
sed -i 's/^PermitRootLogin yes/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# 7. 配置fail2ban
echo "[7/8] 加固fail2ban..."
systemctl enable fail2ban
systemctl start fail2ban

# 8. 更新系统
echo "[8/8] 更新系统..."
apt update && apt upgrade -y

echo ""
echo "=== 清理完成 ==="
echo "建议立即："
echo "1. 重启SSH: systemctl restart sshd"
echo "2. 检查连接: netstat -tunlp"
echo "3. 更换密码: passwd"
echo "4. 重启系统: reboot"
