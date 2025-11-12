# LightNode API端点测试完整报告

生成时间: 2024-11-12

## 🔐 认证绕过测试结果

### 发现的可访问端点

**无认证成功 (HTTP 200):**
- `https://console.lightnode.com/api` ✅
  - 无认证: ✅
  - JWT None: ✅
  - 空Token: ✅
  - **注意**: 返回HTML页面，可能是Next.js路由

**需要认证但暴露错误信息 (HTTP 400):**
- `https://console.lightnode.com/api/admin`
  - 错误: "The interface request is invalid and no authentication information is obtained"
- `https://console.lightnode.com/api/users`
  - 错误: "The interface request is invalid and no authentication information is obtained"
- `https://console.lightnode.com/api/v1/auth/login`
  - 错误: "The interface request is invalid and no authentication information is obtained"

**需要认证 (HTTP 401):**
- `https://openapi.lightnode.com` (所有路径)
  - 错误: "The current request is not authenticated and access is not allowed"

## 🔍 敏感端点测试结果

### 可访问的路径 (HTTP 200)

以下路径返回200，但都是HTML页面（Next.js前端路由）:
- `/admin` ✅
- `/internal` ✅
- `/debug` ✅

**分析**: 这些是前端路由，不是后端API端点。Next.js会将所有未匹配的路由返回前端应用。

### 需要认证的API端点 (HTTP 400)

- `/api/admin` - 需要认证
- `/api/users` - 需要认证
- `/api/config` - 需要认证
- `/api/secrets` - 需要认证
- `/api/keys` - 需要认证
- `/api/tokens` - 需要认证

## 📊 GraphQL测试结果

### 测试方法

1. **GET查询参数**: HTTP 200 (返回HTML页面)
2. **POST JSON**: HTTP 405 (Not Allowed)
3. **POST GraphQL格式**: HTTP 405 (Not Allowed)

**结论**: GraphQL端点可能不存在或需要特定配置。GET请求返回的是Next.js前端页面。

## 🔌 API端点分析

### 发现的端点结构

**认证端点:**
- `/api/v1/auth/login` - 需要认证信息
- `/api/auth/login` - 需要认证信息
- `/api/user/login` - 需要认证信息
- `/api/login` - 需要认证信息

**用户端点:**
- `/api/user` - 需要认证
- `/api/users` - 需要认证
- `/api/v1/user` - 需要认证
- `/api/v1/users` - 需要认证

**OpenAPI端点:**
- `https://console.lightnode.com/openapi.json` - HTTP 200 (HTML页面)
- `https://console.lightnode.com/swagger` - HTTP 200 (HTML页面)
- `https://openapi.lightnode.com` - HTTP 401 (需要认证)

## ⚠️ 安全发现

### 1. 错误信息泄露

**发现的错误信息:**
- "The interface request is invalid and no authentication information is obtained"
- "The current request is not authenticated and access is not allowed"

**影响**: 
- 暴露了API端点存在性
- 暴露了认证机制
- 可能用于枚举有效端点

### 2. 路径遍历测试

测试路径: `/api/test/../../etc/passwd`
- 结果: HTTP 401 (需要认证)
- 错误信息: "The current request is not authenticated and access is not allowed"

**结论**: 路径遍历被认证层阻止，但错误信息可能泄露信息。

### 3. SQL注入测试

测试payload: `?id=1' OR '1'='1`
- 结果: 需要进一步测试（需要有效认证）

## 📦 技术栈确认

### 前端
- **Next.js** ✅ (确认)
- **React** ✅ (推断)
- **UMI** ✅ (版本: 3.5.22 - 从HTML中发现)
- **Cloudflare** ✅ (CDN/WAF)

### 后端
- **Nginx** ✅ (从405错误页面发现)
- 后端框架: 待确认

### 第三方服务
- Google Analytics (UA-193500388-2, G-7VNLW8B4R0)
- Google Ads (AW-332115241)
- SalesSmartly (plugin-code.salesmartly.com)

## 🔒 安全配置

### 安全头
- **HSTS**: max-age=31536000 ✅
- **Content-Security-Policy**: frame-ancestors 'self' ✅
- **WAF**: Cloudflare ✅

### 缺失的安全头
- X-Frame-Options
- X-Content-Type-Options
- X-XSS-Protection
- Referrer-Policy
- Permissions-Policy

## 📈 测试统计

- **测试端点总数**: 60+
- **无认证成功**: 1个 (`/api`)
- **需要认证**: 50+
- **错误信息泄露**: 6个
- **敏感端点**: 154个测试路径

## 🎯 攻击面分析

### 高价值目标

1. **认证端点**
   - `/api/v1/auth/login` - 需要测试弱密码、暴力破解
   - 错误信息可能用于枚举有效用户

2. **用户端点**
   - `/api/user`, `/api/users` - 需要测试IDOR
   - 需要有效认证token

3. **OpenAPI端点**
   - `https://openapi.lightnode.com` - 需要认证
   - 如果获得访问权限，可能暴露完整API文档

### 攻击建议

1. **认证绕过**
   - 测试JWT弱密钥
   - 测试JWT算法混淆
   - 测试空认证头
   - 测试API Key弱密钥

2. **暴力破解**
   - 针对 `/api/v1/auth/login` 进行密码暴力破解
   - 使用发现的邮箱列表

3. **IDOR测试**
   - 获得有效token后，测试用户端点IDOR
   - 测试订单/资源ID枚举

4. **错误信息利用**
   - 利用错误信息枚举有效端点
   - 利用错误信息判断用户存在性

## 📁 测试文件

- `test_results/api_auth_bypass.txt` - 认证绕过测试结果
- `test_results/sensitive_endpoints.txt` - 敏感端点测试结果
- `test_results/error_info_leak.txt` - 错误信息泄露
- `test_results/graphql_*.json` - GraphQL测试结果
- `test_results/manual_test_results.txt` - 手动测试结果

## ✅ 下一步行动

1. **继续收集**
   - 从LinkedIn提取更多员工邮箱
   - 从证书透明度深度分析
   - 从GitHub Issues提取更多信息

2. **深度测试**
   - 测试JWT认证机制
   - 测试API Key认证
   - 获得有效token后测试IDOR

3. **漏洞利用**
   - 针对认证端点进行暴力破解
   - 测试CSRF漏洞
   - 测试SSRF漏洞（如果有相关端点）
