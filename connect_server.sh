#!/bin/bash
# 交互式SSH连接脚本

echo "🔐 红队安全专家SSH连接工具"
echo "================================"
echo "服务器: 82.29.71.156"
echo "用户: root"
echo "================================"

echo "🌐 测试网络连通性..."
if ping -c 1 -W 3 82.29.71.156 &> /dev/null; then
    echo "✅ 网络连通正常"
else
    echo "❌ 网络连接失败"
    exit 1
fi

echo "🔍 测试SSH端口..."
if nc -z -w 3 82.29.71.156 22 2>/dev/null; then
    echo "✅ SSH端口开放"
else
    echo "❌ SSH端口不可达"
    exit 1
fi

echo ""
echo "🚀 启动SSH连接..."
echo "请手动输入密码: admin123"
echo ""

# 启动SSH连接
ssh -o ConnectTimeout=10 -o StrictHostKeyChecking=no root@82.29.71.156