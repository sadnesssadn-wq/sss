#!/bin/bash
# 最后尝试 - 其他被动DNS源

cd /workspace/ac_th_apex

echo "============================================"
echo "🎯 最后尝试 - 深度被动DNS挖掘"
echo "============================================"
echo ""

# 1. 使用amass的更多数据源
echo "[+] Amass passive enum with all sources..."
timeout 600 amass enum -passive -d ac.th -timeout 10 -o amass_deep.txt 2>/dev/null

# 2. 使用assetfinder
echo "[+] Assetfinder..."
if command -v assetfinder &>/dev/null; then
    assetfinder --subs-only ac.th > assetfinder.txt 2>/dev/null
else
    echo "  [!] assetfinder not installed"
fi

# 3. 使用chaos被动DNS
echo "[+] Chaos ProjectDiscovery..."
if command -v chaos &>/dev/null; then
    chaos -d ac.th -silent > chaos.txt 2>/dev/null
else
    echo "  [!] chaos not installed"
fi

# 4. 从GitHub搜索
echo "[+] GitHub code search..."
curl -s "https://api.github.com/search/code?q=.ac.th+extension:txt&per_page=100" | \
    grep -oP '[a-z0-9-]+\.ac\.th' | awk -F. 'NF==3' | sort -u > github.txt 2>/dev/null

# 5. 从SecurityTrails (公开接口)
echo "[+] SecurityTrails subdomains..."
curl -s "https://securitytrails.com/list/apex_domain/ac.th" | \
    grep -oP '[a-z0-9-]+\.ac\.th' | awk -F. 'NF==3' | sort -u > securitytrails.txt 2>/dev/null

# 合并所有新发现
cat amass_deep.txt assetfinder.txt chaos.txt github.txt securitytrails.txt 2>/dev/null | \
    grep '\.ac\.th$' | awk -F. 'NF==3' | sort -u > passive_new.txt

# 和现有的合并
cat passive_new.txt /workspace/ac_th_final.txt | sort -u > /workspace/ac_th_absolute_final.txt

total=$(wc -l < /workspace/ac_th_absolute_final.txt)
new=$((total - 2715))

echo ""
echo "============================================"
echo "✓ 最终结果"
echo "============================================"
echo "  Previous: 2,715"
echo "  New found: $new"
echo "  TOTAL: $total ac.th apex domains"
echo "============================================"
echo ""
echo "📁 文件: /workspace/ac_th_absolute_final.txt"
