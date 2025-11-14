#!/bin/bash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔑 测试泄露的API密钥"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Shodan API
SHODAN_KEY="8U3fd9BSqyzentffLrhocQm7rSvy44jx"

# FOFA API
FOFA_EMAIL="heus@e8wf.com"
FOFA_KEY="b527aaeb14874660d2df8de6f848a071"

echo ""
echo "[1] 测试 Shodan API"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
curl -s "https://api.shodan.io/api-info?key=${SHODAN_KEY}" | jq . || echo "API失败"

echo ""
echo "[2] 测试 FOFA API"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
# FOFA需要base64编码查询
QUERY=$(echo 'domain="example.com"' | base64)
curl -s "https://fofa.info/api/v1/search/all?email=${FOFA_EMAIL}&key=${FOFA_KEY}&qbase64=${QUERY}&size=1" | jq . || echo "API失败"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ API测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
