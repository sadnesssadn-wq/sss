#!/bin/bash
# 生成超大规模模式（目标10000+）

cd /workspace/ac_th_apex

echo "[+] Generating massive pattern wordlist..."

# 合并现有所有模式
cat ABSOLUTE_FINAL.txt | sed 's/\.ac\.th$//' > all_existing_patterns.txt
cat brute_*.txt 2>/dev/null | sed 's/\.[a-z]*\.th$//' >> all_existing_patterns.txt
sort -u all_existing_patterns.txt -o all_existing_patterns.txt

existing=$(wc -l < all_existing_patterns.txt)
echo "  Existing patterns: $existing"

# 生成新模式（使用crunch生成字典）
echo "[+] Generating with crunch..."

# 5字母全量 (26^5 = 11,881,376) - 太大，限制
crunch 5 5 abcdefghijklmnopqrstuvwxyz0123456789 -o massive_5char.txt 2>/dev/null &
pid1=$!

# 6字母数字组合
crunch 6 6 -t @@@@%% -o massive_6char_pattern1.txt 2>/dev/null &
pid2=$!

echo "  Waiting for pattern generation..."
wait $pid1 $pid2

echo "[+] Patterns generated, testing on all TLDs..."

tlds=("ac.th" "co.th" "go.th" "or.th" "in.th" "net.th" "mi.th")

for tld in "${tlds[@]}"; do
    echo "  Testing .$tld..."
    
    cat massive_*.txt | head -100000 | awk -v tld="$tld" '{print $0"."tld}' | \
    dnsx -a -silent -t 3000 -retry 1 >> massive_verified_${tld//./_}.txt 2>/dev/null
    
    count=$(wc -l < massive_verified_${tld//./_}.txt 2>/dev/null || echo 0)
    echo "    Found: $count"
done

# 清理临时文件
rm -f massive_*.txt

echo "[+] Complete"
