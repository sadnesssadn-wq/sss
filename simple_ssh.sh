#!/bin/bash
# 简单SSH连接脚本

echo "🔐 红队安全专家SSH连接"
echo "服务器: 82.29.71.156"
echo "用户: root"
echo "密码: admin123"
echo ""

echo "🚀 启动SSH连接..."
echo "如果密码不正确，请按 Ctrl+C 退出"
echo ""

# 尝试连接
sshpass -p 'admin123' ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no root@82.29.71.156