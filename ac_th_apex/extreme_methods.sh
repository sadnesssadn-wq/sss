#!/bin/bash
# 极限方法 - 所有可能的来源

cd /workspace/ac_th_apex

echo "============================================"
echo "🔥 极限枚举 - 所有可能的方法"
echo "============================================"
echo ""

# 方法1: chaos数据集
echo "[1] Chaos ProjectDiscovery dataset..."
curl -s "https://chaos-data.projectdiscovery.io/ac.th.txt" 2>/dev/null | awk -F. 'NF==3' | sort -u > chaos.txt
echo "    Found: $(wc -l < chaos.txt)"

# 方法2: CommonCrawl最新索引
echo "[2] CommonCrawl..."
curl -s "https://index.commoncrawl.org/CC-MAIN-2024-10-index?url=*.ac.th&output=json&limit=10000" 2>/dev/null | jq -r '.url' | grep -oP '[a-z0-9-]+\.ac\.th' | awk -F. 'NF==3' | sort -u > commoncrawl.txt
echo "    Found: $(wc -l < commoncrawl.txt)"

# 方法3: GitHub搜索（代码中提到的域名）
echo "[3] GitHub Code Search..."
curl -s "https://api.github.com/search/code?q=.ac.th+in:file&per_page=100" 2>/dev/null | jq -r '.items[].text_matches[].fragment' | grep -oP '[a-z0-9-]+\.ac\.th' | awk -F. 'NF==3' | sort -u > github.txt
echo "    Found: $(wc -l < github.txt)"

# 方法4: 证书透明度日志（多个源）
echo "[4] Certificate Transparency logs..."
curl -s "https://crt.sh/?q=%.ac.th&output=json" 2>/dev/null | jq -r '.[].name_value' | tr '\n' ' ' | tr ',' '\n' | sed 's/^\*\.//g' | grep -i '\.ac\.th$' | awk -F. 'NF==3' | sort -u > crtsh_fresh.txt
echo "    Found: $(wc -l < crtsh_fresh.txt)"

# 方法5: Censys ASN枚举
echo "[5] Censys ASN..."
# 泰国教育网络ASN
for asn in AS133481 AS17821 AS38794 AS131090; do
    curl -s "https://search.censys.io/api/v1/search/hosts?q=autonomous_system.asn:$asn" 2>/dev/null | jq -r '.results[].names[]' | grep '\.ac\.th$' | awk -F. 'NF==3' >> censys_asn.txt
done
sort -u censys_asn.txt -o censys_asn.txt
echo "    Found: $(wc -l < censys_asn.txt)"

# 方法6: Reverse IP查询（从已知域名反查同IP的其他域名）
echo "[6] Reverse IP lookup..."
: > reverse_ip.txt
head -100 /workspace/ac_th_final.txt | while read domain; do
    ip=$(dig +short "$domain" A 2>/dev/null | head -1)
    if [ ! -z "$ip" ]; then
        curl -s "https://api.hackertarget.com/reverseiplookup/?q=$ip" 2>/dev/null | grep '\.ac\.th$' | awk -F. 'NF==3' >> reverse_ip.txt
        sleep 1
    fi
done
sort -u reverse_ip.txt -o reverse_ip.txt
echo "    Found: $(wc -l < reverse_ip.txt)"

# 方法7: urlscan.io
echo "[7] URLScan.io..."
curl -s "https://urlscan.io/api/v1/search/?q=domain:.ac.th&size=1000" 2>/dev/null | jq -r '.results[].page.domain' | grep '\.ac\.th$' | awk -F. 'NF==3' | sort -u > urlscan.txt
echo "    Found: $(wc -l < urlscan.txt)"

# 合并所有
echo ""
echo "[+] Merging all sources..."
cat chaos.txt commoncrawl.txt github.txt crtsh_fresh.txt censys_asn.txt reverse_ip.txt urlscan.txt /workspace/ac_th_final.txt | sort -u > all_merged.txt

before=$(wc -l < /workspace/ac_th_final.txt)
after=$(wc -l < all_merged.txt)
new=$((after - before))

echo ""
echo "============================================"
echo "  Previous: $before"
echo "  New found: $new"
echo "  Total: $after"
echo "============================================"

if [ $new -gt 0 ]; then
    cp all_merged.txt /workspace/ac_th_final.txt
    echo "✅ Updated: /workspace/ac_th_final.txt"
fi
