#!/bin/bash
# 查找Web端公开跟踪页面

echo "[🔥] 第12波：查找Web端跟踪页面"

# 12. 检查主站是否有公开tracking
for domain in vtpglobal.com.vn viettelpost.com.vn viettelpost.vn; do
  echo "[+] 检查 https://$domain"
  curl -skL "https://$domain" -m 5 2>/dev/null | grep -iE "track|查询|truy.?v.?n|theo.?d.?i" | head -5
  
  echo "[+] 测试tracking路径"
  for path in /tracking /track /order-tracking /tra-cuu /theo-doi-don-hang; do
    curl -skI "https://$domain$path" -m 3 2>/dev/null | head -5
  done
done

echo ""
echo "[🔥] 第13波：查找隐藏参数"
# 13. 测试各种可能的参数名
PARAM_NAMES=(
  "orderId" "order_id" "ORDER_ID"
  "orderNo" "order_no" "ORDER_NO"
  "orderCode" "order_code" "ORDER_CODE"
  "trackingNo" "tracking_no" "TRACKING_NO"
  "trackingCode" "tracking_code"
  "billNo" "bill_no" "BILL_NO"
  "billCode" "bill_code"
  "waybillNo" "waybill_no"
  "shipmentNo" "shipment_no"
  "code" "CODE" "id" "ID"
  "q" "query" "search" "keyword"
)

for param in "${PARAM_NAMES[@]}"; do
  result=$(curl -sk "https://gw.vtpglobal.com.vn/api/v1/order-tracking?${param}=VTP1000001" -w "\nHTTP: %{http_code}" -m 3 2>/dev/null)
  if [[ ! "$result" =~ "404" ]] && [[ ! "$result" =~ "no Route matched" ]]; then
    echo "[!!!] 发现可能有效参数: $param"
    echo "$result" | head -10
  fi
done
