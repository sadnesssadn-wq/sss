#!/bin/bash
# 使用massdns超高速DNS爆破

cd /workspace/ac_th_apex

# 检查massdns
if ! command -v massdns &>/dev/null; then
    echo "[+] Installing massdns..."
    cd /tmp
    git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    make
    sudo cp bin/massdns /usr/local/bin/
    cd /workspace/ac_th_apex
fi

# 合并所有待验证域名
cat 5letter_batch_*.txt 2>/dev/null > all_5letter.txt
total=$(wc -l < all_5letter.txt 2>/dev/null || echo 0)

if [ $total -eq 0 ]; then
    echo "[!] No 5-letter patterns generated"
    exit 1
fi

echo "[+] Total patterns to verify: $total"
echo "[+] Using massdns for ultra-fast DNS resolution..."

# 使用massdns（每秒10000+ queries）
massdns -r /usr/share/dns/resolvers.txt -t A -o S -w massdns_results.txt all_5letter.txt 2>/dev/null

# 提取成功解析的
grep -E "ac\.th\. A " massdns_results.txt | awk '{print $1}' | sed 's/\.$//' | sort -u > massdns_alive.txt

count=$(wc -l < massdns_alive.txt)
echo "[+] Found $count additional domains"

# 合并到最终结果
cat FINAL_APEX_COMPLETE.txt massdns_alive.txt | sort -u > ULTIMATE_APEX.txt

final=$(wc -l < ULTIMATE_APEX.txt)
echo ""
echo "============================================"
echo "✓ ULTIMATE RESULT!"
echo "  Total apex domains: $final"
echo "  Output: ULTIMATE_APEX.txt"
echo "============================================"
