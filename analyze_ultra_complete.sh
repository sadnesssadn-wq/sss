#!/bin/bash
# 分析ULTRA_COMPLETE_ALL_APPS_ASSETS.txt

REMOTE="root@82.29.71.156"
PORT="2233"
PASS="@admin1314@"
FILE="/root/ULTRA_COMPLETE_ALL_APPS_ASSETS.txt"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 ULTRA_COMPLETE资产文件分析"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 1. 基础统计
echo "[*] 基础统计..."
echo "文件大小: 600KB"
echo "总行数: 16845行"

# 2. 唯一APP数量
echo ""
echo "[*] 统计唯一APP数量..."
APPS=$(sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep '^📦 APP:' $FILE | sed 's/📦 APP: //' | sort -u")
APP_COUNT=$(echo "$APPS" | wc -l)
echo "唯一APP数量: $APP_COUNT"

# 3. 提取所有URL
echo ""
echo "[*] 提取所有URL..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE 'https?://[a-zA-Z0-9./_-]+' $FILE | sort -u" > ultra_all_urls.txt
URL_COUNT=$(cat ultra_all_urls.txt | wc -l)
echo "唯一URL总数: $URL_COUNT"

# 4. 提取所有域名
echo ""
echo "[*] 提取所有域名..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+\.(com\.vn|com\.cn|vn|com|io|me|us|cn|net)' $FILE | sort -u" > ultra_all_domains.txt
DOMAIN_COUNT=$(cat ultra_all_domains.txt | wc -l)
echo "唯一域名总数: $DOMAIN_COUNT"

# 5. 提取所有IP地址
echo ""
echo "[*] 提取所有IP地址..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' $FILE | sort -u" > ultra_all_ips.txt
IP_COUNT=$(cat ultra_all_ips.txt | wc -l)
echo "唯一IP总数: $IP_COUNT"

# 6. 提取API路径
echo ""
echo "[*] 提取API路径..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '/api/[a-zA-Z0-9/_-]+' $FILE | sort -u" > ultra_all_api_paths.txt
API_PATH_COUNT=$(cat ultra_all_api_paths.txt | wc -l)
echo "唯一API路径: $API_PATH_COUNT"

# 7. 统计每个APP的资产数
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 按APP分类的资产统计"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "$APPS" | while read app; do
    # 统计每个APP的URL数量
    url_count=$(sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
        "awk '/📦 APP: ${app}/,/^━━━/' $FILE | grep -oE 'https?://' | wc -l")
    
    if [ "$url_count" -gt 0 ]; then
        printf "%-40s %4d个URL\n" "$app" "$url_count"
    fi
done | sort -k2 -rn | head -20

# 8. 域名TOP 20
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🌐 出现频率TOP 20的域名"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+\.(com\.vn|vn|com|io|me|us)' $FILE" | \
    sort | uniq -c | sort -rn | head -20

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 最终统计"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "分析的APP数量:    $APP_COUNT"
echo "唯一URL总数:      $URL_COUNT"
echo "唯一域名总数:     $DOMAIN_COUNT"
echo "唯一IP地址:       $IP_COUNT"
echo "唯一API路径:      $API_PATH_COUNT"
echo ""
TOTAL=$((URL_COUNT + DOMAIN_COUNT + IP_COUNT + API_PATH_COUNT))
echo "总资产数:         $TOTAL"
echo ""

echo "✅ 详细列表已保存:"
echo "   - ultra_all_urls.txt       ($URL_COUNT个)"
echo "   - ultra_all_domains.txt    ($DOMAIN_COUNT个)"
echo "   - ultra_all_ips.txt        ($IP_COUNT个)"
echo "   - ultra_all_api_paths.txt  ($API_PATH_COUNT个)"
