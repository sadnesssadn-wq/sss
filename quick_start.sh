#!/bin/bash

echo "================================"
echo "  资产收集工具 - 快速开始"
echo "================================"
echo ""

# 检查 Python
if ! command -v python3 &> /dev/null; then
    echo "[!] 错误: 未找到 Python 3"
    exit 1
fi

echo "[*] 步骤 1: 安装依赖"
pip3 install -r requirements.txt

echo ""
echo "[*] 步骤 2: 初始化配置文件"
python3 asset_collector.py --init

echo ""
echo "================================"
echo "[+] 初始化完成！"
echo ""
echo "下一步:"
echo "  1. 编辑 config.json 填入你的 API keys"
echo "  2. 运行示例: python3 asset_collector.py -q 'apache' -s 10"
echo ""
echo "获取 API Keys:"
echo "  - FOFA: https://fofa.info/personalData"
echo "  - Shodan: https://account.shodan.io"
echo "================================"
