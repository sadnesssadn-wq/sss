# 🎯 严格验证测试结果

## ⚠️ 测试环境
- 测试时间: 2025-11-15
- 测试来源: VPS (82.29.71.156)
- 测试方法: curl命令 + 实际HTTP请求

---

## 🔴 测试1: com.vttm.songkhoe - 弱密码爆破

### 测试目标
```
基础URL: http://songkhoe.vn/wssongkhoe/svYte.svc/
端点: /getCategory/{user}/{pass}
```

### 测试账号
测试了56个账号密码组合：
- 用户名: admin, test, guest, mobile, app, demo, api
- 密码: 123456, password, admin, 123456789, songkhoe, admin123, demo, guest

### ❌ 实际测试结果
```
所有请求均返回: HTTP 000 (连接失败)
响应大小: 0 bytes
响应时间: 0.002-0.169秒
```

### 验证结论
- ❌ **songkhoe.vn 已离线或不可访问**
- ❌ 主站 http://songkhoe.vn 也无法连接
- ❌ API端点 /wssongkhoe/svYte.svc/ 无响应
- ⚠️ **无法验证弱密码爆破的可行性**

### 真实性评估
虽然从APK中发现了完整的API端点和认证方式（`/{user}/{pass}/`），但**目前无法测试，因为服务器离线**。

**理论可行性**: 60% （如果服务器在线）
**实际可行性**: 0% （服务器离线）

---

## 🟠 测试2: com.ems.emsone - 公开API查询

### 测试目标
```
主站: https://emsone.com.vn
API: https://gwmobile.emsone.com.vn
HTTP API: http://pogw.emsone.com.vn
```

### ✅ 服务器状态
- ✅ **emsone.com.vn - 在线** (HTTP 200)
  - Server: Microsoft-IIS/10.0
  - ASP.NET 4.0.30319
  
- ✅ **gwmobile.emsone.com.vn - 在线** (HTTP 200)
  - Server: Microsoft-IIS/10.0
  - 返回HTML页面（2825 bytes）

### 测试1: 标准REST API（无认证）

#### 测试的端点
```bash
GET /api/order/track?code=EM0000000001
POST /api/order/track
GET /api/track?code=EM0000000001
GET /api/tracking?code=EM0000000001
GET /api/query?code=EM0000000001
GET /api/public/track?code=EM0000000001
```

#### ❌ 结果
```json
{
  "Message": "No HTTP resource was found that matches the request URI 'http://gwmobile.emsone.com.vn:6363/api/order/track?code=EM0000000001'."
}
```

**所有端点均返回**: HTTP 404

### 测试2: APP真实API格式（POST + JSON）

#### 测试代码
```bash
curl -X POST "https://gwmobile.emsone.com.vn" \
  -H "Content-Type: application/json" \
  -d '{"code":"ORDER_GET_BY_SHIPPING_CODE","data":"{\"shippingCode\":\"EM0000000001\"}"}'
```

#### ⏳ 结果（待完成）
正在测试中...

### 验证结论（初步）
- ✅ 服务器在线
- ❌ 标准REST API不存在
- ⏳ 真实API格式需要进一步测试
- ⚠️ **可能需要RSA签名**（根据代码分析）

---

## 📊 当前验证状态

| 方法 | 服务器状态 | API可达 | 无需认证 | 验证结果 | 实际可行性 |
|------|----------|---------|---------|---------|-----------|
| **songkhoe弱密码** | ❌ 离线 | ❌ | ✅ | ❌ 无法测试 | **0%** |
| **songkhoe SQL注入** | ❌ 离线 | ❌ | ✅ | ❌ 无法测试 | **0%** |
| **emsone公开API** | ✅ 在线 | ⚠️ 部分 | ❌ | ⏳ 测试中 | **?%** |
| **emsone注册API** | ✅ 在线 | ⏳ | ⏳ | ⏳ 测试中 | **?%** |

---

## ⚠️ 重要发现

### 发现1: songkhoe完全离线
- HTTP主站无响应
- API端点无响应
- 可能原因：
  1. 网站已关闭
  2. 被防火墙屏蔽
  3. 需要特定网络环境访问

### 发现2: emsone使用非标准API
- 不是REST风格
- 可能是统一POST端点
- 需要特定的JSON格式
- **很可能需要RSA签名**

---

## 🎯 诚实的结论

### ❌ **无法验证的方法**

#### 1. songkhoe弱密码爆破
**原因**: 服务器完全离线（HTTP 000）

**证据**:
```bash
$ curl http://songkhoe.vn
# 无响应，超时

$ curl http://songkhoe.vn/wssongkhoe/svYte.svc/getCategory/admin/123456
# HTTP 000, Size: 0
```

**理论评估**: 如果服务器在线，方法可行（认证在URL，HTTP明文）
**实际评估**: 当前无法验证

#### 2. songkhoe SQL注入
**原因**: 服务器离线，无法测试

**代码证据**: DatabaseHelper.java确实有SQL注入
**实际评估**: 无法验证API是否复用相同代码

### ⏳ **待验证的方法**

#### 3. emsone公开API
**状态**: 服务器在线，但标准REST端点不存在

**下一步**:
1. 测试真实的POST端点格式
2. 尝试不带签名的请求
3. 分析响应判断是否需要签名

---

## 📝 下一步测试计划

### ✅ 继续测试
1. emsone真实API端点（POST + JSON格式）
2. emsone注册API（SHOP_REGISTER）
3. emsone OTP验证（OTP_VERIFY_CODE）

### ⏳ 待条件满足
4. songkhoe弱密码（需要服务器在线）
5. songkhoe SQL注入（需要服务器在线）

### ❌ 确认无法绕过
6. emsone RSA签名（私钥在Android KeyStore）

---

*更新时间: 2025-11-15*
*测试状态: 进行中*
*已测试: 2/3方法*
*待测试: 1/3方法*
