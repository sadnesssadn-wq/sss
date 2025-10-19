#!/bin/bash

# 红队角色快捷调用脚本

echo ""
echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║           🔴 红队角色快速调用工具 🔴                     ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# 检查配置文件
if [ ! -f ".assistant-security-prefs.json" ]; then
    echo "❌ 错误: 找不到 .assistant-security-prefs.json"
    echo "正在从GitHub下载..."
    curl -L "https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.assistant-security-prefs.json" -o .assistant-security-prefs.json
    echo "✅ 配置文件下载完成"
fi

# 菜单
echo "请选择操作:"
echo ""
echo "  1) 查看完整角色配置"
echo "  2) 查看角色统计信息"
echo "  3) 查看能力清单"
echo "  4) 查看记忆系统"
echo "  5) 验证配置文件"
echo "  6) 更新角色记忆"
echo "  0) 退出"
echo ""
read -p "请输入选项 [0-6]: " choice

case $choice in
    1)
        echo ""
        echo "📋 正在显示完整角色配置..."
        python3 show_role.py
        ;;
    2)
        echo ""
        echo "📊 角色统计信息:"
        python3 -c "
import json
with open('.assistant-security-prefs.json', 'r') as f:
    config = json.load(f)
    
print(f'  版本: v{config[\"version\"]}')
print(f'  模式: {config[\"engagement\"][\"mode\"]}')
print(f'  专注领域: {len(config[\"engagement\"][\"focus\"])}')
print(f'  允许操作: {len(config[\"engagement\"][\"allowed_operations\"])}')
print(f'  C2框架: {len(config[\"capabilities\"][\"c2_frameworks\"])}')
print(f'  APT工具: {len(config[\"capabilities\"][\"apt_tools\"])}')
print(f'  研究的APT组织: {len(config[\"methodology\"][\"apt_groups_studied\"])}')
"
        ;;
    3)
        echo ""
        echo "💪 角色能力清单:"
        python3 -c "
import json
with open('.assistant-security-prefs.json', 'r') as f:
    config = json.load(f)
    
caps = config['capabilities']
print(f'  🤖 AI工具: {len(caps.get(\"ai_powered_tools\", []))}个')
print(f'  💣 漏洞利用框架: {len(caps.get(\"exploit_frameworks\", []))}个')
print(f'  🎯 APT工具: {len(caps.get(\"apt_tools\", []))}个')
print(f'  ☁️  云原生工具: {len(caps.get(\"cloud_native_tools\", []))}个')
print(f'  📡 C2框架: {len(caps.get(\"c2_frameworks\", []))}个')
print(f'  🔗 Web3工具: {len(caps.get(\"web3_crypto_tools\", []))}个')
print(f'  ⚛️  量子工具: {len(caps.get(\"quantum_tools\", []))}个')
"
        ;;
    4)
        echo ""
        echo "🧠 查看记忆系统..."
        python3 role_memory.py
        ;;
    5)
        echo ""
        echo "🔍 验证配置文件..."
        python3 -m json.tool .assistant-security-prefs.json > /dev/null && echo "✅ JSON格式正确" || echo "❌ JSON格式错误"
        ;;
    6)
        echo ""
        echo "🔄 更新角色记忆..."
        python3 -c "
from role_memory import RoleMemory
from datetime import datetime

memory = RoleMemory()
memory.add_memory('用户手动调用了角色系统', '中')
memory.update_context('最后调用时间', datetime.now().strftime('%Y-%m-%d %H:%M:%S'))
print('✅ 记忆更新完成')
"
        ;;
    0)
        echo ""
        echo "👋 再见！"
        exit 0
        ;;
    *)
        echo ""
        echo "❌ 无效选项"
        exit 1
        ;;
esac

echo ""
echo "════════════════════════════════════════════════════════════"
echo "✨ 操作完成"
echo "════════════════════════════════════════════════════════════"
echo ""
