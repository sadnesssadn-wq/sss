#!/bin/bash
# 检查扫描进度

echo "================================"
echo "📊 扫描进度监控"
echo "================================"
echo ""

# 检查进程
if ps aux | grep -v grep | grep -q "scan_smart_10k.py"; then
    echo "✅ 扫描进程正在运行"
else
    echo "❌ 扫描进程未运行"
fi

echo ""

# 显示最新日志
echo "📄 最新日志 (最后30行):"
echo "--------------------------------"
tail -30 /workspace/smart_scan.log 2>/dev/null || echo "日志文件不存在"

echo ""
echo "--------------------------------"

# 统计找到的订单数
csv_file=$(ls -t /workspace/smart_10k_*.csv 2>/dev/null | head -1)
if [ -f "$csv_file" ]; then
    count=$(($(wc -l < "$csv_file") - 1))
    echo "📊 已找到订单: $count 个"
    echo "📁 输出文件: $csv_file"
    echo "📦 文件大小: $(ls -lh "$csv_file" | awk '{print $5}')"
else
    echo "⚠️  暂无输出文件"
fi

echo ""
echo "================================"
echo "💡 提示:"
echo "  - 使用 'bash check_progress.sh' 查看进度"
echo "  - 使用 'tail -f /workspace/smart_scan.log' 实时监控"
echo "  - 使用 'pkill -f scan_smart_10k' 停止扫描"
echo "================================"
