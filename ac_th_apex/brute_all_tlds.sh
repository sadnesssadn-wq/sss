#!/bin/bash
# 对所有泰国TLD进行DNS爆破

cd /workspace/ac_th_apex

echo "============================================"
echo "🚀 对所有泰国TLD进行暴力DNS枚举"
echo "============================================"
echo ""

# 读取已有的所有ac.th模式（去掉.ac.th后缀）
echo "[+] 提取已验证的模式..."
cat ABSOLUTE_FINAL.txt | sed 's/\.ac\.th$//' | sort -u > patterns_base.txt
pattern_count=$(wc -l < patterns_base.txt)
echo "  - 基础模式数: $pattern_count"

# 目标TLD列表
tlds=("co.th" "go.th" "or.th" "in.th" "net.th" "mi.th")

total_new=0

for tld in "${tlds[@]}"; do
    echo ""
    echo "[+] Testing .$tld..."
    
    # 生成该TLD的域名列表
    output="brute_${tld//./_}.txt"
    cat patterns_base.txt | awk -v tld="$tld" '{print $0"."tld}' > "test_${tld//./_}.txt"
    
    # DNS验证（30并发）
    cat "test_${tld//./_}.txt" | dnsx -a -silent -t 2000 -retry 1 | awk -F. 'NF==3' | sort -u > "$output"
    
    count=$(wc -l < "$output")
    total_new=$((total_new + count))
    
    echo "  ✓ Found: $count domains"
    echo "  ✓ Total new: $total_new"
done

echo ""
echo "[+] Merging all results..."
cat brute_*.th.txt /workspace/thailand_all_tlds_apex.txt | sort -u > /workspace/thailand_complete.txt

final=$(wc -l < /workspace/thailand_complete.txt)

echo ""
echo "============================================"
echo "✓ COMPLETE!"
echo "  Previous: 4,196"
echo "  New from bruteforce: $total_new"
echo "  TOTAL: $final"
echo "  Saved to: /workspace/thailand_complete.txt"
echo "============================================"
