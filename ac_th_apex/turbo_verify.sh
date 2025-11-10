#!/bin/bash
# 超高速并发验证（16个并行）

cd /workspace/ac_th_apex

verify_batch() {
    batch_file=$1
    batch_num=$(echo $batch_file | grep -oP 'extreme_batch_\K\d+')
    cat "$batch_file" | dnsx -a -silent -t 2000 -retry 1 > "extreme_verified_${batch_num}.txt" 2>/dev/null
    count=$(wc -l < "extreme_verified_${batch_num}.txt" 2>/dev/null || echo 0)
    echo "✓ Batch $batch_num: $count domains"
}

export -f verify_batch

echo "[+] Starting turbo verification (16 parallel jobs)..."
echo "[+] Processing 876,256 patterns..."
echo ""

ls extreme_batch_*.txt | parallel -j 16 --bar verify_batch {}

echo ""
echo "[+] Merging results..."
cat extreme_verified_*.txt final_all_apex.txt 2>/dev/null | sort -u > FINAL_APEX_COMPLETE.txt

total=$(wc -l < FINAL_APEX_COMPLETE.txt)

echo ""
echo "============================================"
echo "✓ VERIFICATION COMPLETE!"
echo "  Total verified apex domains: $total"
echo "  Output: FINAL_APEX_COMPLETE.txt"
echo "============================================"
