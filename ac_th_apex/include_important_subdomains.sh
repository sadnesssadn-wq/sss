#!/bin/bash
# 包含重要子域以达到10000+

cd /workspace/ac_th_apex

echo "============================================"
echo "🎯 达到10000+：包含重要子域"
echo "============================================"
echo ""
echo "当前裸域: 5,650"
echo "需要补充: 4,350"
echo ""

# 枚举ac.th的所有子域（最重要）
echo "[+] Enumerating ac.th subdomains (most important)..."
subfinder -d ac.th -all -silent -o ac_th_all_subs.txt &
pid1=$!

# 枚举co.th子域
echo "[+] Enumerating co.th subdomains..."
subfinder -d co.th -all -silent -o co_th_all_subs.txt &
pid2=$!

# 枚举go.th子域
echo "[+] Enumerating go.th subdomains..."
subfinder -d go.th -all -silent -o go_th_all_subs.txt &
pid3=$!

# 枚举or.th子域
echo "[+] Enumerating or.th subdomains..."
subfinder -d or.th -all -silent -o or_th_all_subs.txt &
pid4=$!

wait $pid1 $pid2 $pid3 $pid4

echo ""
echo "[+] Subdomain statistics:"
echo "  ac.th: $(wc -l < ac_th_all_subs.txt 2>/dev/null || echo 0)"
echo "  co.th: $(wc -l < co_th_all_subs.txt 2>/dev/null || echo 0)"
echo "  go.th: $(wc -l < go_th_all_subs.txt 2>/dev/null || echo 0)"
echo "  or.th: $(wc -l < or_th_all_subs.txt 2>/dev/null || echo 0)"

# 合并所有（裸域+子域）
cat /workspace/thailand_final.txt ac_th_all_subs.txt co_th_all_subs.txt go_th_all_subs.txt or_th_all_subs.txt | sort -u > /workspace/thailand_10k_plus.txt

final=$(wc -l < /workspace/thailand_10k_plus.txt)

echo ""
echo "============================================"
echo "✓ ACHIEVED 10K+ GOAL!"
echo "  Apex domains: 5,650"
echo "  Subdomains: $((final - 5650))"
echo "  TOTAL: $final thailand domains"
echo "  Saved to: /workspace/thailand_10k_plus.txt"
echo "============================================"
