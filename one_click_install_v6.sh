#!/bin/bash
# Cursor AI v6 一键安装脚本（上传到GitHub后使用）

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║     Cursor AI v6 配置一键安装                                     ║"
echo "║     专注: 海外目标·APP逆向·JWT伪造·API杀手·数据挖掘              ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo ""

# 备份现有配置
if [ -f ~/.cursor/rules ]; then
    echo "[+] 备份现有配置..."
    cp ~/.cursor/rules ~/.cursor/rules.backup.$(date +%Y%m%d_%H%M%S)
fi

# 下载v6配置
echo "[+] 下载v6配置..."
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/say-hello-in-chinese-3687/.cursorrules

# 验证安装
if [ -f ~/.cursor/rules ]; then
    echo ""
    echo "✅ 安装成功！"
    echo "----------------------------------------"
    echo "版本信息:"
    head -3 ~/.cursor/rules
    echo ""
    echo "文件大小:"
    ls -lh ~/.cursor/rules | awk '{print $5, $9}'
    echo ""
    echo "行数:"
    wc -l ~/.cursor/rules
    echo ""
    echo "----------------------------------------"
    echo "✅ 配置v6已激活"
    echo "✅ 重启Cursor生效"
    echo ""
    echo "测试命令:"
    echo "  问AI: \"com.example.app Frida Hook签名验证\""
    echo "  问AI: \"JWT None算法绕过完整代码\""
    echo "  问AI: \"target.com API端点发现\""
    echo "  问AI: \"Fortinet SSL VPN漏洞利用\""
else
    echo "❌ 安装失败"
    echo "请检查网络连接或手动下载"
fi
