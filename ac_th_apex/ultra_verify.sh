#!/bin/bash
# 超高速验证 - 30并发

cd /workspace/ac_th_apex

verify() {
    batch=$1
    num=$(echo $batch | grep -oP 'full_batch_\K\d+')
    cat "$batch" | dnsx -a -silent -t 3000 -retry 1 -rate-limit 5000 > "full_verified_${num}.txt" 2>/dev/null
    count=$(wc -l < "full_verified_${num}.txt" 2>/dev/null || echo 0)
    echo "[$(date +%H:%M:%S)] ✓ Batch $num: $count"
}

export -f verify

echo "============================================"
echo "🚀 ULTRA-FAST DNS VERIFICATION"
echo "============================================"
echo "  Total patterns: 4,982,016"
echo "  Batch count: 100"
echo "  Parallel jobs: 30"
echo "  Estimated time: 20-40 minutes"
echo "============================================"
echo ""

start=$(date +%s)

ls full_batch_*.txt | parallel -j 30 --progress verify {}

end=$(date +%s)
duration=$((end - start))

echo ""
echo "============================================"
echo "✓ VERIFICATION COMPLETE"
echo "  Duration: ${duration}s ($((duration/60))m $((duration%60))s)"
echo "============================================"
echo ""

# 合并所有结果
echo "[+] Merging all verified domains..."
cat full_verified_*.txt FINAL_COMPLETE.txt 2>/dev/null | sort -u > ABSOLUTE_FINAL.txt

total=$(wc -l < ABSOLUTE_FINAL.txt)
new=$((total - $(wc -l < FINAL_COMPLETE.txt 2>/dev/null || echo 0)))

echo ""
echo "============================================"
echo "🎯 FINAL STATISTICS"
echo "============================================"
echo "  Previous: 2,664"
echo "  New found: $new"
echo "  TOTAL: $total ac.th apex domains"
echo "============================================"
echo ""

# 保存到最终文件
cp ABSOLUTE_FINAL.txt /workspace/ac_th_apex_domains.txt

echo "✅ Saved to: /workspace/ac_th_apex_domains.txt"
echo ""
echo "📊 Verification rate:"
echo "  - Total verified: 6,627,371 patterns"
echo "  - Total found: $total domains"
echo "  - Success rate: $(awk "BEGIN {printf \"%.4f\", ($total/6627371)*100}")%"
