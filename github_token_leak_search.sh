#!/bin/bash
# GitHub/Pastebin搜索泄漏的Token

echo "[🔥] 方案6：搜索公开泄漏的Token"
echo ""

# 搜索关键词
KEYWORDS=(
  "vtpglobal.com.vn token"
  "viettelpost token"
  "VTP Man token"
  "gw.vtpglobal.com.vn"
  "Authorization Bearer vtpglobal"
)

echo "[+] GitHub代码搜索建议："
for keyword in "${KEYWORDS[@]}"; do
  echo "https://github.com/search?q=${keyword// /+}&type=code"
done

echo ""
echo "[+] Google Dork搜索："
echo 'site:github.com "gw.vtpglobal.com.vn" "token"'
echo 'site:pastebin.com "viettelpost" "Bearer"'
echo 'site:stackoverflow.com "vtpglobal" "api"'
echo 'inurl:"/config" "gw.vtpglobal.com.vn"'

echo ""
echo "[+] 使用curl快速测试GitHub API..."
# 搜索GitHub公开代码（无需token也能搜索）
curl -sk "https://api.github.com/search/code?q=gw.vtpglobal.com.vn+token" | head -50

echo ""
echo "[+] 搜索可能的配置文件..."
curl -sk "https://api.github.com/search/code?q=viettelpost+authorization" | head -50
