#!/bin/bash
# 并行验证5字母模式

cd /workspace/ac_th_apex

verify_5letter() {
    batch=$1
    num=$(echo $batch | grep -oP '\d+')
    cat "$batch" | dnsx -a -silent -t 2000 -retry 1 > "5letter_verified_${num}.txt" 2>/dev/null
    count=$(wc -l < "5letter_verified_${num}.txt")
    echo "✓ 5-letter batch $num: $count domains"
}

export -f verify_5letter

echo "[+] Verifying 500,000 5-letter patterns (20 parallel)..."
ls 5letter_batch_*.txt | parallel -j 20 --bar verify_5letter {}

echo ""
echo "[+] Merging all results..."
cat 5letter_verified_*.txt FINAL_APEX_COMPLETE.txt 2>/dev/null | sort -u > ULTIMATE_APEX_FINAL.txt

total=$(wc -l < ULTIMATE_APEX_FINAL.txt)
new=$((total - $(wc -l < FINAL_APEX_COMPLETE.txt)))

echo ""
echo "============================================"
echo "✓ ULTIMATE ENUMERATION COMPLETE!"
echo "  Previous: $(wc -l < FINAL_APEX_COMPLETE.txt)"
echo "  New found: $new"
echo "  Total: $total"
echo "  Output: ULTIMATE_APEX_FINAL.txt"
echo "============================================"

cp ULTIMATE_APEX_FINAL.txt /workspace/ac_th_apex_domains.txt
echo ""
echo "✅ Saved to: /workspace/ac_th_apex_domains.txt"
