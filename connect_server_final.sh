#!/bin/bash
# 最终SSH连接脚本 - 红队安全专家专用

echo "🔐 红队安全专家SSH连接工具"
echo "================================"
echo "服务器: 82.29.71.156"
echo "用户: root"
echo "密码: @admin123"
echo "================================"

echo "🚀 建立SSH连接..."
sshpass -p '@admin123' ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no root@82.29.71.156