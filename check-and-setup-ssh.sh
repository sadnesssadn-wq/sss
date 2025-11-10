#!/bin/bash
# 自动检测并配置 SSH 优化
# 用途：在新容器中自动检测是否需要配置 SSH

if [ ! -f ~/.ssh/config ] || ! grep -q "ControlMaster" ~/.ssh/config 2>/dev/null; then
    echo "🔍 检测到 SSH 未优化，正在自动配置..."
    bash /workspace/setup-ssh-optimization.sh
else
    echo "✅ SSH 已优化配置，无需重复设置"
fi
