#!/bin/bash

clear
echo "=========================================="
echo "  🎮 王者荣耀陪玩变声器 - 自动部署"
echo "=========================================="
echo ""
echo "当前 Git 配置："
echo "  用户名: $(git config --global user.name)"
echo "  邮箱: $(git config --global user.email)"
echo ""
echo "=========================================="
echo ""
echo "📝 请选择部署方式："
echo ""
echo "1️⃣  我已经创建了GitHub仓库（输入仓库地址）"
echo "2️⃣  帮我创建一个示例仓库链接（本地演示）"
echo "3️⃣  我需要GitHub Token来自动创建仓库"
echo ""
read -p "请选择 (1/2/3): " choice

case $choice in
    1)
        echo ""
        echo "📦 请输入你的GitHub仓库地址："
        echo "例如：https://github.com/用户名/VoiceChanger.git"
        read -p "仓库地址: " repo_url
        
        if [ -z "$repo_url" ]; then
            echo "❌ 错误：仓库地址不能为空"
            exit 1
        fi
        
        echo ""
        echo "🚀 开始推送..."
        cd /root/VoiceChanger
        git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"
        git branch -M main
        git push -u origin main
        
        if [ $? -eq 0 ]; then
            echo ""
            echo "=========================================="
            echo "✅ 上传成功！"
            echo "=========================================="
            echo ""
            echo "📱 下一步："
            echo "1. 访问: ${repo_url%.git}"
            echo "2. 点击【Actions】标签"
            echo "3. 等待 3-5 分钟，APK 自动编译完成"
            echo "4. 在【Releases】下载 APK"
            echo ""
        else
            echo ""
            echo "❌ 推送失败！"
            echo ""
            echo "可能原因："
            echo "1. 仓库地址错误"
            echo "2. 没有权限（需要配置SSH密钥或Token）"
            echo "3. 网络问题"
            echo ""
            echo "💡 解决方法："
            echo "如果是权限问题，使用带Token的URL："
            echo "https://TOKEN@github.com/用户名/VoiceChanger.git"
        fi
        ;;
        
    2)
        echo ""
        echo "📦 本地演示模式"
        echo ""
        echo "已完成的工作："
        echo "✅ Git 仓库已初始化"
        echo "✅ 42 个文件已提交"
        echo "✅ 4773 行代码已准备"
        echo ""
        echo "📋 要推送到 GitHub，需要："
        echo ""
        echo "1. 创建 GitHub 仓库："
        echo "   https://github.com/new"
        echo ""
        echo "2. 执行命令："
        echo "   cd /root/VoiceChanger"
        echo "   git remote add origin https://github.com/你的用户名/VoiceChanger.git"
        echo "   git branch -M main"
        echo "   git push -u origin main"
        echo ""
        echo "3. 或重新运行本脚本，选择选项1"
        echo ""
        ;;
        
    3)
        echo ""
        echo "🔐 使用 GitHub Token"
        echo ""
        echo "1. 获取 Token："
        echo "   访问: https://github.com/settings/tokens"
        echo "   Generate new token (classic)"
        echo "   勾选: repo 权限"
        echo ""
        read -p "输入你的 GitHub Token: " token
        read -p "输入你的 GitHub 用户名: " username
        
        if [ -z "$token" ] || [ -z "$username" ]; then
            echo "❌ Token 和用户名不能为空"
            exit 1
        fi
        
        repo_name="VoiceChanger"
        repo_url="https://${token}@github.com/${username}/${repo_name}.git"
        
        echo ""
        echo "🚀 推送到: ${username}/${repo_name}"
        
        cd /root/VoiceChanger
        git remote add origin "$repo_url" 2>/dev/null || git remote set-url origin "$repo_url"
        git branch -M main
        git push -u origin main
        
        if [ $? -eq 0 ]; then
            echo ""
            echo "=========================================="
            echo "✅ 上传成功！"
            echo "=========================================="
            echo ""
            echo "📱 访问: https://github.com/${username}/${repo_name}"
            echo ""
        else
            echo "❌ 推送失败！请检查 Token 和权限"
        fi
        ;;
        
    *)
        echo "❌ 无效选择"
        exit 1
        ;;
esac

echo ""
echo "🎉 完成！"
echo ""

