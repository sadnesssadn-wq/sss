# 🎯 全部APP完整资产清单（18个APK）

## 📋 总结

- **总APK数**: 18个
- **总URL数**: 200+
- **总域名数**: 50+
- **总API端点数**: 100+
- **内网IP数**: 3个
- **公网IP数**: 1个

---

## 🌐 核心域名清单（按优先级）

###  Priority A - 在线且发现API

| 域名 | 状态 | 协议 | 用途 | API数量 |
|------|------|------|------|---------|
| **gwmobile.emsone.com.vn** | ✅ 在线 | HTTPS | EMS One主API | 30+ |
| **ws.ems.com.vn** | ✅ 在线 | **HTTP** | EMS Portal API | **50+** |
| **img.emsone.com.vn** | ✅ 在线 | HTTPS | 图片服务器 | - |

### Priority B - 已知但未完整测试

| 域名 | 状态 | 协议 | 用途 |
|------|------|------|------|
| **api-dingdong.ems.com.vn** | ❓未测试 | HTTPS | Vinatti DingDong API |
| **bill.ems.com.vn** | ❓未测试 | HTTPS | 账单系统 |
| **ems.com.vn** | ✅ 在线 | HTTPS | 主站 |
| **postmart.vn** | ❓未测试 | HTTPS | PostMart服务 |

### Priority C - 可能离线

| 域名 | 状态 | 协议 | 用途 |
|------|------|------|------|
| **songkhoe.vn** | ❌ 离线 | HTTP | 健康APP（有漏洞但离线）|
| **media.songkhoe.vn** | ❌ 离线 | HTTP | 媒体服务器 |
| **m.songkhoe.vn** | ❌ 离线 | HTTP | 移动站 |
| **m.tinngan.vn** | ❓未测试 | HTTP | 短新闻广播 |

---

## 🔴 IP地址清单

### 内网IP（高价值）

| IP地址 | 端口 | 来源APP | 用途 | 可达性 |
|--------|------|---------|------|--------|
| **192.168.86.111** | ? | emsportal | 内网服务器 | ❌ 外网不可达 |
| **10.10.98.55** | ? | emsportal | 内网服务器 | ❌ 外网不可达 |
| **172.16.132.126** | 5003 | vinatti.dingdong | **内网API（HTTP明文！）** | ❌ 外网不可达 |

### 公网IP

| IP地址 | 端口 | 来源APP | 用途 | 状态 |
|--------|------|---------|------|------|
| **125.212.193.21** | 8886 | songkhoe | 搜索服务器 | ❌ 离线/超时 |

---

## 📡 完整API端点清单

### 1. emsone (gwmobile.emsone.com.vn)

**基础URL**: `https://gwmobile.emsone.com.vn`

**认证方式**: RSA签名 + JWT Token（无法绕过）

**已知端点**（从NetWorkController.java提取）:
```
EMPLOYEE_LOGIN_V2
ORDER_GET_BY_SHIPPING_CODE
SHOP_REGISTER
OTP_VERIFY_CODE
（还有20+个，需要token）
```

---

### 2. emsportal (ws.ems.com.vn) - **重点目标**

**基础URL**: `http://ws.ems.com.vn/api/v1`

**协议**: ⚠️ **HTTP明文传输**

**认证方式**: Token验证（所有端点都需要）

**完整端点列表**（50+个）:

#### 地址相关
```
GET  /address/district
GET  /address/postal
GET  /address/province-and-district
GET  /address/province-district-ward
GET  /address/search
GET  /address/ward
```

#### 认证相关
```
POST /auth/logout
POST /forgot-password
```

#### 订单管理
```
GET  /be/orders/list
POST /be/orders/create
POST /be/orders/cancel
POST /be/orders/estimate-fee
POST /be/list-address
```

#### 配置
```
GET  /be/config/list-status
GET  /config/service
GET  /metadata/vas
```

#### Grab集成
```
GET  /grab/list
GET  /grab/deliveries
GET  /grab/status
GET  /grab/service
POST /grab/quotations
POST /grab/cancel/
POST /grab/suggest-address
```

#### 库存
```
POST /inventory/create
GET  /inventory/list
POST /inventory/update
```

#### 商户
```
GET  /merchants/get-list-notify
POST /merchants/update
POST /merchants/update-notify
POST /merchants/update/password
POST /merchants/update-token
```

#### 通知
```
GET  /notifications/list
POST /notifications/update
```

#### 国际订单
```
POST /order-intl/create
GET  /order-intl/list
GET  /order-intl/tracking/{code}
GET  /order-intl/country/
GET  /order-intl/service
GET  /order-intl/item-type
POST /order-intl/calculate
POST /order-intl/address-suggestion
POST /order-intl/hscode-suggestion
GET  /order-intl/count-group
```

#### 国内订单
```
POST /orders/accept
GET  /orders/cod-by-date
（还有更多...）
```

**测试结果**: 全部返回 `{"code":"error","message":"The token could not be parsed from the request","flag":0}`

**突破可能性**:
- ⚠️ HTTP明文（中间人攻击可能）
- ⚠️ 可能存在未授权端点（需要逐个测试）
- ⚠️ Token可能在某些端点被弱化验证

---

### 3. vinatti.dingdong (api-dingdong.ems.com.vn)

**基础URL**: `https://api-dingdong.ems.com.vn/`

**内网IP**: `http://172.16.132.126:5003` （HTTP明文！）

**状态**: 未完整测试

---

### 4. songkhoe（离线但代码有漏洞）

**基础URL**: `http://songkhoe.vn/wssongkhoe/svYte.svc/`

**认证方式**: `/{user}/{pass}/` 在URL中（弱！）

**已知端点**（20+个）:
```
/getCategory/{user}/{pass}
/getHome/{user}/{pass}
/GetDiseasesDetail/{user}/{pass}/{pid}/{cid}/{id}
/getCommonQuestion/{user}/{pass}
/getSubcate/{user}/{pass}/{catId}
/getBySubCategory/{user}/{pass}/{subCatId}/{page}
/getPartData/{user}/{pass}/{cId}
/get_Search/{query}/{user}/{pass}
（还有10+个...）
```

**漏洞**:
- ✅ 弱密码爆破可能
- ✅ SQL注入（DatabaseHelper.java确认）
- ❌ 但服务器完全离线

---

## 🔑 硬编码凭证清单

### emsone
```java
CLIENT_ID = "android_app_987654"
CLIENT_SECRET = "android_s3cr3t_uvwxzy"
SALT = "Ems@2021"
```
⚠️ **无用**：仍需RSA签名

### songkhoe
```java
DOMAIN_AVATAR = "http://songkhoe.vn/"
DOMAIN_IMAGE = "http://media.songkhoe.vn/"
DOMAIN_SEARCH = "http://125.212.193.21:8886/"
REST = "http://songkhoe.vn/wssongkhoe/svYte.svc/"
GCM_SENDER_ID = "235549050500" (Firebase)
```

---

## 🎯 打进内网的可能方法

### 方法1: SSRF通过emsone（需要token）

**SSRF点**: 
- `DriverInfo.PhotoURL`
- `TaoYeuCauHoTroRequest.images`

**Payload示例**:
```json
{
  "PhotoURL": "http://192.168.86.111/api/orders"
}
```

**前提**: 需要绕过RSA签名获取token（当前不可行）

---

### 方法2: 利用ws.ems.com.vn的HTTP明文

**思路**:
1. 中间人攻击（如果在同一网络）
2. 尝试找无需认证的端点
3. 尝试token验证绕过

**当前状态**: 所有端点都需要token

---

### 方法3: 直接攻击内网IP（需要进入内网）

**内网目标**:
```
192.168.86.111       (emsportal内网)
10.10.98.55          (emsportal内网)
172.16.132.126:5003  (vinatti HTTP API)
```

**前提**: 需要VPN或跳板机进入内网

---

### 方法4: songkhoe恢复在线（被动等待）

**如果在线，可以**:
1. 弱密码爆破（admin/123456）
2. SQL注入攻击
3. IDOR枚举数据

**当前状态**: 服务器离线

---

## 📊 可行性评估

| 方法 | 前提条件 | 当前可行性 | 成功率 |
|------|---------|-----------|--------|
| **SSRF→内网** | 需要token | ❌ 0% | 70%（如果有token）|
| **ws.ems绕过认证** | 找到无认证端点 | 🟡 20% | 未知 |
| **内网直连** | 进入内网 | ❌ 0% | 80%（如果在内网）|
| **songkhoe弱密码** | 服务器在线 | ❌ 0% | 60%（如果在线）|
| **HTTP中间人** | 同网段 | ❌ 0% | 50%（如果同网段）|

---

## 🔥 下一步建议

### 优先级1: 测试ws.ems.com.vn绕过（最有希望）

**理由**:
- ✅ HTTP明文
- ✅ 50+个API端点
- ✅ 服务器在线
- 🟡 可能存在未授权端点

**行动**:
1. 逐个测试所有50+端点
2. 尝试不同的认证绕过方法
3. 测试HTTP Parameter Pollution
4. 测试路径穿越

---

### 优先级2: 查找其他APP的API（可能更弱）

**目标**:
- com.postsale（39个API文件）
- vn.vnpost.myvnpost（49个API文件）
- com.vnpost.tellers（10个API文件）

**行动**:
1. 深度分析这3个APP
2. 提取API端点
3. 测试认证机制

---

### 优先级3: 社工/合法账号（最可行）

**理由**:
- 技术手段已到瓶颈
- 合法账号可以突破所有限制

**方法**:
- 注册企业账号
- 申请测试账号
- （不推荐）社工

---

## 🔚 当前瓶颈

### 技术瓶颈
1. **RSA签名无法绕过**（emsone主要障碍）
2. **所有公开API都需要token**（ws.ems.com.vn）
3. **内网隔离**（无法从外网访问）
4. **songkhoe离线**（最有希望的目标不可用）

### 突破需要
1. 一个真实账号 OR
2. Root设备 + Frida OR
3. 进入目标内网 OR
4. songkhoe恢复在线

---

*完整资产清单 - 2025-11-15*
*总计: 18个APK, 50+域名, 100+API端点, 3个内网IP*
