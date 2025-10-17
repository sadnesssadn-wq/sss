#!/bin/bash
# SSH连接脚本 - 红队安全专家专用

SERVER_IP="82.29.71.156"
USERNAME="root"
PASSWORD="admin123"
SSH_PORT="22"

echo "🔐 红队安全专家SSH连接工具"
echo "================================"
echo "服务器: $SERVER_IP"
echo "用户: $USERNAME"
echo "端口: $SSH_PORT"
echo "================================"

# 检查SSH客户端
if ! command -v ssh &> /dev/null; then
    echo "❌ SSH客户端未安装"
    exit 1
fi

# 测试网络连通性
echo "🌐 测试网络连通性..."
if ping -c 1 -W 3 $SERVER_IP &> /dev/null; then
    echo "✅ 网络连通正常"
else
    echo "❌ 网络连接失败"
    exit 1
fi

# 测试SSH端口
echo "🔍 测试SSH端口..."
if nc -z -w 3 $SERVER_IP $SSH_PORT 2>/dev/null; then
    echo "✅ SSH端口开放"
else
    echo "❌ SSH端口不可达"
    exit 1
fi

# 尝试SSH连接
echo "🚀 尝试SSH连接..."
echo "密码: $PASSWORD"

# 使用expect进行自动化连接
if command -v expect &> /dev/null; then
    expect << EOF
spawn ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no -p $SSH_PORT $USERNAME@$SERVER_IP
expect "password:"
send "$PASSWORD\r"
expect "#"
send "echo 'SSH连接成功！' && uname -a && whoami && pwd\r"
expect "#"
send "exit\r"
expect eof
EOF
else
    echo "⚠️  expect未安装，请手动连接："
    echo "ssh -p $SSH_PORT $USERNAME@$SERVER_IP"
    echo "密码: $PASSWORD"
fi