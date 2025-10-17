#!/bin/bash
# 交互式SSH连接脚本 - 红队安全专家专用

SERVER_IP="82.29.71.156"
USERNAME="root"
SSH_PORT="22"

echo "🔐 红队安全专家SSH连接工具"
echo "================================"
echo "服务器: $SERVER_IP"
echo "用户: $USERNAME"
echo "端口: $SSH_PORT"
echo "================================"

# 检查网络连通性
echo "🌐 测试网络连通性..."
if ping -c 1 -W 3 $SERVER_IP &> /dev/null; then
    echo "✅ 网络连通正常"
else
    echo "❌ 网络连接失败"
    exit 1
fi

# 检查SSH端口
echo "🔍 测试SSH端口..."
if nc -z -w 3 $SERVER_IP $SSH_PORT 2>/dev/null; then
    echo "✅ SSH端口开放"
else
    echo "❌ SSH端口不可达"
    exit 1
fi

echo ""
echo "🚀 启动SSH连接..."
echo "提示：如果密码不正确，请检查服务器配置"
echo ""

# 启动SSH连接
ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no -p $SSH_PORT $USERNAME@$SERVER_IP