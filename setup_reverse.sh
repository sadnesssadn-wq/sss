#!/bin/bash
# 配置移动APP逆向环境

echo "=========================================="
echo "📱 移动APP逆向环境配置"
echo "=========================================="

# 安装必要工具
echo ""
echo "📦 安装逆向工具..."

# Python工具
pip3 install --quiet frida-tools objection androguard requests beautifulsoup4 lxml

# 检查工具
echo ""
echo "✅ 检查已安装工具："
which apktool 2>/dev/null && echo "  ✓ apktool" || echo "  ✗ apktool (需手动安装)"
which jadx 2>/dev/null && echo "  ✓ jadx" || echo "  ✗ jadx (需手动安装)"
which adb 2>/dev/null && echo "  ✓ adb" || echo "  ✗ adb"
python3 -c "import frida" 2>/dev/null && echo "  ✓ frida" || echo "  ✗ frida"
python3 -c "import androguard" 2>/dev/null && echo "  ✓ androguard" || echo "  ✗ androguard"

echo ""
echo "=========================================="
echo "✅ 环境配置完成"
echo "=========================================="
