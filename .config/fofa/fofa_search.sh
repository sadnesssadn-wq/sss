#!/bin/bash
# Fofa API 搜索脚本
# 使用方法: ./fofa_search.sh "domain=target.com"

FOFA_EMAIL="user@example.com"
FOFA_KEY="b527aaeb14874660d2df8de6f848a071"

if [ -z "$1" ]; then
    echo "用法: $0 \"搜索语句\""
    echo "示例: $0 \"domain=baidu.com\""
    exit 1
fi

QUERY=$(echo -n "$1" | base64)
URL="https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL}&key=${FOFA_KEY}&qbase64=${QUERY}&size=100"

echo "[*] 搜索: $1"
echo "[*] API调用中..."
curl -s "$URL" | jq .
