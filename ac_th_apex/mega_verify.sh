#!/bin/bash
# 超高并发DNS验证

cd /workspace/ac_th_apex

# 验证单个批次的函数
verify_batch() {
    batch_file=$1
    batch_num=$(echo $batch_file | grep -oP '\d+')
    echo "[$(date +%H:%M:%S)] Processing $batch_file..."
    cat "$batch_file" | dnsx -a -silent -t 1000 -retry 1 > "verified_${batch_num}.txt"
    count=$(wc -l < "verified_${batch_num}.txt")
    echo "[$(date +%H:%M:%S)] ✓ $batch_file done: $count domains"
}

export -f verify_batch

# 并行处理所有批次（同时运行8个批次）
ls massive_batch_*.txt | parallel -j 8 --progress verify_batch {}

# 合并所有结果
echo ""
echo "[+] Merging all verified results..."
cat verified_*.txt mega_apex_final.txt | sort -u > final_all_apex.txt

total=$(wc -l < final_all_apex.txt)
echo ""
echo "========================================="
echo "✓ COMPLETE!"
echo "  Total apex domains: $total"
echo "  Output: final_all_apex.txt"
echo "========================================="
