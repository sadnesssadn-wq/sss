#!/bin/bash
# 完整提取报告中的所有资产

REMOTE="root@82.29.71.156"
PORT="2233"
PASS="@admin1314@"
REPORT="/root/FINAL_COMPLETE_REPORT.md"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 完整资产提取（从报告中）"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 1. 提取所有域名（完整域名）
echo "[*] 提取所有域名..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+\.(com\.vn|vn|com|io|me)' $REPORT | sort -u" > all_domains.txt
DOMAINS=$(cat all_domains.txt | wc -l)
echo "    域名总数: $DOMAINS"

# 2. 提取所有IP地址
echo "[*] 提取所有IP地址..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' $REPORT | sort -u" > all_ips.txt
IPS=$(cat all_ips.txt | wc -l)
echo "    IP总数: $IPS"

# 3. 提取所有API路径
echo "[*] 提取所有API路径..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '/api/[a-zA-Z0-9/_-]+' $REPORT | sort -u" > all_api_paths.txt
API_PATHS=$(cat all_api_paths.txt | wc -l)
echo "    API路径总数: $API_PATHS"

# 4. 提取所有完整URL
echo "[*] 提取所有完整URL..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE 'https?://[a-zA-Z0-9./_-]+' $REPORT | sort -u" > all_urls.txt
URLS=$(cat all_urls.txt | wc -l)
echo "    完整URL总数: $URLS"

# 5. 提取API密钥
echo "[*] 提取API密钥..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -E 'AIzaSy|pk\.eyJ|470fa2b4|3e058ce3' $REPORT" > all_keys.txt
KEYS=$(grep -cE 'AIzaSy|pk\.eyJ|470fa2b4|3e058ce3' all_keys.txt 2>/dev/null || echo 0)
echo "    API密钥: $KEYS"

# 6. 提取邮箱
echo "[*] 提取邮箱..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}' $REPORT | sort -u" > all_emails.txt
EMAILS=$(cat all_emails.txt | wc -l)
echo "    邮箱总数: $EMAILS"

# 7. 提取Firebase项目
echo "[*] 提取Firebase项目..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '[a-zA-Z0-9-]+\.firebaseio\.com' $REPORT | sort -u" > firebase_projects.txt
FIREBASE=$(cat firebase_projects.txt | wc -l)
echo "    Firebase项目: $FIREBASE"

# 8. 提取所有路径参数
echo "[*] 提取带参数的路径..."
sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT $REMOTE \
    "grep -oE '/[a-zA-Z0-9/_-]+\?[a-zA-Z0-9=&_-]+' $REPORT | sort -u" > all_paths_with_params.txt
PARAMS=$(cat all_paths_with_params.txt | wc -l)
echo "    带参数路径: $PARAMS"

# 汇总统计
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 完整统计结果"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "域名总数:           $DOMAINS"
echo "IP地址:             $IPS"
echo "API路径:            $API_PATHS"
echo "完整URL:            $URLS"
echo "带参数路径:         $PARAMS"
echo "API密钥:            $KEYS"
echo "邮箱地址:           $EMAILS"
echo "Firebase项目:       $FIREBASE"
echo ""
echo "────────────────────────────────────────"
TOTAL=$((DOMAINS + IPS + API_PATHS + URLS + PARAMS + KEYS + EMAILS + FIREBASE))
echo "总资产数:           $TOTAL"
echo ""

# 显示前20个域名
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🌐 前20个域名："
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
head -20 all_domains.txt | nl

# 显示前20个API路径
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔌 前20个API路径："
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
head -20 all_api_paths.txt | nl

echo ""
echo "✅ 完整资产列表已保存到当前目录"
echo "   - all_domains.txt"
echo "   - all_ips.txt"
echo "   - all_api_paths.txt"
echo "   - all_urls.txt"
echo "   - all_keys.txt"
echo "   - all_emails.txt"
echo "   - firebase_projects.txt"
