#!/bin/bash

# 服务器连接快捷脚本
# 目标: 82.29.71.156

SERVER_IP="82.29.71.156"
SERVER_USER="root"
SERVER_PASS="@admin123"

echo "🔗 正在连接到服务器..."
echo "   IP: $SERVER_IP"
echo "   用户: $SERVER_USER"
echo ""

sshpass -p "$SERVER_PASS" ssh -o StrictHostKeyChecking=no "$SERVER_USER@$SERVER_IP"
