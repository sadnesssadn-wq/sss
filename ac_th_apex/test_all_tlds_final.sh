#!/bin/bash
# 对所有TLD测试新模式

cd /workspace/ac_th_apex

tlds=("ac.th" "co.th" "go.th" "or.th" "in.th" "net.th" "mi.th")

echo "============================================"
echo "🚀 Testing 245,913 patterns on all TLDs"
echo "============================================"
echo ""

total_new=0

for tld in "${tlds[@]}"; do
    echo "[+] Testing .$tld..."
    
    # 生成该TLD的测试列表
    awk -v tld="$tld" '{print $0"."tld}' ultimate_patterns.txt > "test_${tld//./_}.txt"
    
    # DNS验证
    cat "test_${tld//./_}.txt" | dnsx -a -silent -t 3000 -retry 1 > "final_${tld//./_}.txt" 2>/dev/null
    
    count=$(wc -l < "final_${tld//./_}.txt")
    total_new=$((total_new + count))
    
    echo "  ✓ Found: $count"
    echo "  ✓ Total new so far: $total_new"
done

echo ""
echo "[+] Merging everything..."
cat final_*.txt /workspace/thailand_complete.txt | sort -u > /workspace/thailand_final.txt

final=$(wc -l < /workspace/thailand_final.txt)
new=$((final - 4985))

echo ""
echo "============================================"
echo "✓ COMPLETE!"
echo "  Previous: 4,985"
echo "  New found: $new"
echo "  TOTAL: $final thailand apex domains"
echo "============================================"

# 如果还没到10000，生成更多
if [ $final -lt 10000 ]; then
    needed=$((10000 - final))
    echo ""
    echo "[!] Still need $needed more domains to reach 10,000"
    echo "[*] Continuing with more patterns..."
fi
