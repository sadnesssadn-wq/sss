#!/bin/bash
# 服务器清理和加固脚本
# 使用前请仔细审查！

echo "=== 服务器清理脚本 ==="
echo "警告：此脚本将删除所有攻击工具和脚本"
echo "按 Ctrl+C 取消，或等待5秒继续..."
sleep 5

# 1. 停止所有攻击进程
echo "[1/7] 停止攻击进程..."
pkill -f cambodia_final.py
pkill -f www_bruteforce
pkill -f scan_
pkill -f brute
pkill -9 python3 -m http.server

# 2. 删除攻击脚本
echo "[2/7] 删除攻击脚本..."
rm -rf /root/mikrotik_ecsrp5_toolkit/
rm -f /root/*brute*.py
rm -f /root/*attack*.py
rm -f /root/*exploit*.py
rm -f /root/cambodia*.py
rm -f /root/*scan*.sh
rm -f /root/API_*.py

# 3. 删除Responder
echo "[3/7] 删除Responder..."
rm -rf /tmp/Responder

# 4. 卸载渗透工具（可选）
echo "[4/7] 卸载渗透工具..."
# apt remove -y aircrack-ng hydra john masscan nmap

# 5. 清理SSH authorized_keys（保留cursor）
echo "[5/7] 检查SSH公钥..."
# 手动检查 /root/.ssh/authorized_keys

# 6. 清理计划任务
echo "[6/7] 检查计划任务..."
crontab -l

# 7. 加固SSH配置
echo "[7/7] SSH安全建议..."
echo "建议修改 /etc/ssh/sshd_config:"
echo "  - PermitRootLogin no (禁止root直接登录)"
echo "  - PasswordAuthentication no (仅允许密钥登录)"
echo "  - MaxAuthTries 3 (已设置)"
echo "  - Port 22 (考虑改为非标准端口)"

echo ""
echo "=== 清理完成 ==="
echo "建议手动检查："
echo "1. netstat -tunlp  # 检查监听端口"
echo "2. ps aux | grep python  # 检查Python进程"
echo "3. last -20  # 检查登录历史"
echo "4. cat /root/.ssh/authorized_keys  # 检查SSH密钥"
