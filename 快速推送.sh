#!/bin/bash

echo "=========================================="
echo "🚀 推送到 GitHub"
echo "=========================================="
echo ""
echo "你的仓库：https://github.com/sadnesssadn-wq/sss"
echo ""
echo "📝 需要 GitHub Token 来推送代码"
echo ""
echo "获取 Token："
echo "1. 访问：https://github.com/settings/tokens"
echo "2. 点击：Generate new token (classic)"
echo "3. 勾选：repo（所有权限）"
echo "4. 点击：Generate token"
echo "5. 复制生成的 Token（只显示一次！）"
echo ""
read -p "请输入你的 GitHub Token: " token

if [ -z "$token" ]; then
    echo "❌ Token 不能为空"
    exit 1
fi

echo ""
echo "🚀 开始推送..."

cd /root/VoiceChanger
git remote remove origin 2>/dev/null
git remote add origin https://${token}@github.com/sadnesssadn-wq/sss.git
git branch -M main
git push -u origin main --force

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ 推送成功！"
    echo "=========================================="
    echo ""
    echo "📱 下一步："
    echo "1. 访问：https://github.com/sadnesssadn-wq/sss"
    echo "2. 点击【Actions】标签"
    echo "3. 等待 3-5 分钟，APK 自动编译完成"
    echo "4. 在【Releases】下载 APK"
    echo ""
    echo "🎉 完成！"
else
    echo ""
    echo "❌ 推送失败！"
    echo "请检查 Token 是否正确"
fi


