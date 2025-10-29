#!/bin/bash
# Cursor AI v6 配置上传到GitHub指南

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║     Cursor AI v6 配置上传到GitHub流程                            ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
echo ""

# 1. 创建GitHub仓库（如果还没有）
echo "步骤1: 准备GitHub仓库"
echo "----------------------------------------"
echo "仓库: https://github.com/sadnesssadn-wq/sss"
echo "分支: cursor/say-hello-in-chinese-3687"
echo "文件: .cursorrules"
echo ""

# 2. 上传配置文件
echo "步骤2: 上传配置文件到GitHub"
echo "----------------------------------------"
echo "方法1: 使用Git命令（推荐）"
echo ""
cat << 'GITCMD'
# 克隆仓库
git clone https://github.com/sadnesssadn-wq/sss.git
cd sss

# 切换到指定分支（如果不存在则创建）
git checkout -b cursor/say-hello-in-chinese-3687

# 复制配置文件
cp ~/.cursor/rules .cursorrules

# 提交并推送
git add .cursorrules
git commit -m "Update to v6: 海外目标·APP逆向·API杀手·数据挖掘"
git push origin cursor/say-hello-in-chinese-3687
GITCMD
echo ""

echo "方法2: 通过GitHub网页上传"
echo "1. 访问 https://github.com/sadnesssadn-wq/sss"
echo "2. 切换到分支: cursor/say-hello-in-chinese-3687"
echo "3. 点击 'Add file' -> 'Upload files'"
echo "4. 上传 ~/.cursor/rules 并重命名为 .cursorrules"
echo "5. 提交更改"
echo ""

# 3. 验证上传
echo "步骤3: 验证配置文件"
echo "----------------------------------------"
echo "访问: https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/say-hello-in-chinese-3687/.cursorrules"
echo "或运行: curl -I https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/say-hello-in-chinese-3687/.cursorrules"
echo ""

# 4. 一键安装命令
echo "步骤4: 生成一键安装命令"
echo "----------------------------------------"
cat << 'INSTALL'
# v6一键安装命令（上传后使用）
curl -o ~/.cursor/rules https://raw.githubusercontent.com/sadnesssadn-wq/sss/cursor/say-hello-in-chinese-3687/.cursorrules

# 验证安装
head -3 ~/.cursor/rules
wc -l ~/.cursor/rules

# 重启Cursor生效
INSTALL
echo ""

echo "╔═══════════════════════════════════════════════════════════════════╗"
echo "║  完成后，任何人都可以用一键命令安装v6配置                        ║"
echo "╚═══════════════════════════════════════════════════════════════════╝"
