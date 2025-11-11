#!/bin/bash
BUNDLE="/workspace/vwms_extracted/main_apk/assets/index.android.bundle"

echo "=== 1. 订单管理API (Order Management) ==="
strings "$BUNDLE" | grep -iE "/order" | grep "api/v" | sort -u

echo ""
echo "=== 2. 出库请求API (Outbound Request) ==="
strings "$BUNDLE" | grep -iE "outbound|pickup|shipment|delivery" | grep "api/v" | sort -u

echo ""
echo "=== 3. 入库请求API (Inbound Request) ==="
strings "$BUNDLE" | grep -iE "inbound|receiving|checkin" | grep "api/v" | sort -u

echo ""
echo "=== 4. 订单搜索/查询API ==="
strings "$BUNDLE" | grep -iE "order.*(search|detail|list|query|get|find)" | head -30

echo ""
echo "=== 5. 订单状态更新API ==="
strings "$BUNDLE" | grep -iE "order.*(update|status|complete|cancel|confirm)" | head -30

echo ""
echo "=== 6. 订单参数字段 ==="
strings "$BUNDLE" | grep -iE '"(order_id|order_code|order_number|tracking_number|bill_code)"' | head -20
