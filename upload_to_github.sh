#!/bin/bash

echo "=========================================="
echo "   王者荣耀陪玩变声器 - GitHub上传脚本"
echo "=========================================="
echo ""

# 检查是否已配置Git
if ! git config user.name > /dev/null 2>&1; then
    echo "📝 请先配置Git信息："
    read -p "输入你的名字: " username
    read -p "输入你的邮箱: " email
    git config --global user.name "$username"
    git config --global user.email "$email"
    echo "✅ Git配置完成"
    echo ""
fi

# 提示输入GitHub仓库地址
echo "🌐 请在GitHub创建新仓库，然后输入仓库地址"
echo "例如：https://github.com/你的用户名/VoiceChanger.git"
read -p "仓库地址: " repo_url

if [ -z "$repo_url" ]; then
    echo "❌ 错误：仓库地址不能为空"
    exit 1
fi

echo ""
echo "📦 开始上传..."
echo ""

# 初始化Git仓库
if [ ! -d ".git" ]; then
    echo "1️⃣ 初始化Git仓库..."
    git init
fi

# 添加所有文件
echo "2️⃣ 添加文件..."
git add .

# 提交
echo "3️⃣ 提交更改..."
git commit -m "🎉 Initial commit: 王者荣耀陪玩变声器

✨ 功能特性：
- 🎀 甜美女声（男→女）
- 💪 磁性男声（女→男）
- 👶 可爱萝莉（萌音）
- 🎯 原声模式

⚡ 技术亮点：
- PSOLA高质量变调算法
- 超低延迟（60-80ms）
- 游戏场景专项优化
- 完整的GitHub Actions自动编译"

# 设置远程仓库
echo "4️⃣ 连接远程仓库..."
git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"

# 设置主分支
echo "5️⃣ 设置主分支..."
git branch -M main

# 推送
echo "6️⃣ 推送到GitHub..."
git push -u origin main

echo ""
echo "=========================================="
echo "✅ 上传成功！"
echo "=========================================="
echo ""
echo "📱 下一步："
echo "1. 访问你的GitHub仓库"
echo "2. 点击顶部【Actions】标签"
echo "3. 等待3-5分钟，APK自动编译完成"
echo "4. 下载APK："
echo "   - 方法A：Actions → 点击构建 → 下载Artifacts"
echo "   - 方法B：Releases → 下载最新版本"
echo ""
echo "🎉 开始使用变声器吧！"
echo ""


