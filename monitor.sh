#!/bin/bash
while true; do
  clear
  echo "========================================="
  echo "📊 扫描实时监控"
  echo "========================================="
  date
  echo ""
  
  # 进程状态
  if ps aux | grep -v grep | grep -q "scan_optimized_10k.py"; then
    echo "✅ 扫描进程运行中"
  else
    echo "❌ 扫描进程未运行"
  fi
  
  echo ""
  echo "📄 最新日志 (最后20行):"
  echo "-----------------------------------------"
  tail -20 /workspace/opt_scan.log 2>/dev/null || echo "暂无日志"
  
  echo ""
  echo "-----------------------------------------"
  
  # CSV统计
  csv=$(ls -t /workspace/optimized_10k_*.csv 2>/dev/null | head -1)
  if [ -f "$csv" ]; then
    count=$(($(wc -l < "$csv") - 1))
    echo "📊 已找到订单: $count"
    echo "📁 文件: $(basename $csv)"
  else
    echo "⚠️  暂无输出文件"
  fi
  
  echo ""
  echo "💡 按 Ctrl+C 停止监控"
  echo "========================================="
  
  sleep 10
done
