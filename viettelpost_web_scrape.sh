#!/bin/bash
# 抓取主站，查找跟踪表单和API

echo "[💥] 抓取viettelpost.com.vn主站（200 OK确认）"
echo ""

# 1. 抓取主页
curl -skL "https://viettelpost.com.vn" -o /tmp/viettelpost_home.html

# 2. 查找tracking相关内容
echo "[+] 查找tracking表单..."
cat /tmp/viettelpost_home.html | grep -iE "track|tra.?cuu|theo.?doi|search|查询" | head -20

echo ""
echo "[+] 查找API调用..."
cat /tmp/viettelpost_home.html | grep -oE "https?://[a-zA-Z0-9./_-]+(api|track|order)" | sort -u

echo ""
echo "[+] 查找JavaScript文件..."
cat /tmp/viettelpost_home.html | grep -oE "src=['\"]([^'\"]+\.js)" | cut -d'"' -f2 | head -10

# 3. 下载JS文件查找API
echo ""
echo "[+] 分析JavaScript文件..."
js_file=$(cat /tmp/viettelpost_home.html | grep -oE "/assets/[^'\"]+\.js" | head -1)
if [ -n "$js_file" ]; then
  echo "  [*] 下载JS: https://viettelpost.com.vn$js_file"
  curl -skL "https://viettelpost.com.vn$js_file" -o /tmp/viettelpost_main.js
  
  echo "  [*] 查找API端点..."
  cat /tmp/viettelpost_main.js | grep -oE '"/api/[^"]{5,50}"' | sort -u | head -30
  
  echo ""
  echo "  [*] 查找tracking方法..."
  cat /tmp/viettelpost_main.js | grep -iE "(track|query|search).{0,100}api" | head -10
fi

# 4. 测试找到的tracking路径
echo ""
echo "[+] 测试常见tracking路径..."
for path in /tra-cuu-hanh-trinh /theo-doi-don-hang /tracking /track-trace /dich-vu/tra-cuu; do
  echo "  [*] https://viettelpost.com.vn$path"
  curl -skI "https://viettelpost.com.vn$path" -m 3 | head -5
done
