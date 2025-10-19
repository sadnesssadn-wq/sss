#!/bin/bash
# 🔴 红队配置快速验证脚本

echo "======================================"
echo "🔴 红队角色配置快速验证"
echo "======================================"
echo ""

# 1. 检查配置文件
echo "📍 [1/5] 检查配置文件..."
if [ -f ".assistant-security-prefs.json" ]; then
    echo "✅ 配置文件存在: $(pwd)/.assistant-security-prefs.json"
    echo "   文件大小: $(du -h .assistant-security-prefs.json | cut -f1)"
else
    echo "❌ 配置文件不存在！"
    echo "   从 GitHub 下载: curl -o .assistant-security-prefs.json https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.assistant-security-prefs.json"
    exit 1
fi
echo ""

# 2. 验证 JSON 格式
echo "🔍 [2/5] 验证 JSON 格式..."
if python3 -m json.tool .assistant-security-prefs.json > /dev/null 2>&1; then
    echo "✅ JSON 格式正确"
else
    echo "❌ JSON 格式错误！"
    exit 1
fi
echo ""

# 3. 查看配置统计
echo "📊 [3/5] 配置统计信息..."
python3 << 'PYTHON'
import json
with open('.assistant-security-prefs.json', 'r') as f:
    data = json.load(f)
    print(f"   模式: {data['engagement']['mode']}")
    print(f"   约束: {data['engagement']['constraints']}")
    print(f"   限制: {data['engagement']['limitations']}")
    print(f"   允许操作: {len(data['engagement']['allowed_operations'])} 项")
    print(f"   APT工具: {len(data['capabilities']['apt_tools'])} 个")
    print(f"   C2框架: {len(data['capabilities']['c2_frameworks'])} 个")
    print(f"   LOLBins: {len(data['capabilities']['living_off_the_land'])} 个")
    print(f"   APT组织: {len(data['methodology']['apt_groups_studied'])} 个")
PYTHON
echo ""

# 4. Git 状态
echo "📦 [4/5] Git 状态..."
if git rev-parse --git-dir > /dev/null 2>&1; then
    echo "✅ Git 仓库已初始化"
    echo "   分支: $(git branch --show-current)"
    echo "   远程: $(git remote get-url origin 2>/dev/null || echo '未设置')"
    echo "   最新提交: $(git log --oneline -1 -- .assistant-security-prefs.json 2>/dev/null || echo '无历史')"
else
    echo "⚠️  不在 Git 仓库中"
fi
echo ""

# 5. 完成
echo "🎉 [5/5] 验证完成！"
echo ""
echo "======================================"
echo "📚 使用方法"
echo "======================================"
echo "1. 当前环境已就绪，配置自动生效"
echo "2. 在 Cursor 中询问: '你的角色是什么？'"
echo "3. 测试命令: '帮我创建一个 Kerberoasting 脚本'"
echo ""
echo "📖 详细文档: cat HOW_TO_USE_RED_TEAM_ROLE.md"
echo "🔗 在线查看: https://github.com/sadnesssadn-wq/sss/blob/cursor/bc-909b6b9d-b156-420e-8043-c174a2d7966a-08bd/.assistant-security-prefs.json"
echo "======================================"
