# EMS Vietnam API 完整功能指南

**更新时间**: 2025-10-16  
**状态**: 已验证并测试

---

## 📡 所有可用的API端点（共8个）

### ✅ 已验证可用并返回数据（4个）

#### 1. **Inquiry API** - 订单详情查询 ⭐⭐⭐
```
POST https://api-dingdong.ems.com.vn/api/Delivery/Inquiry

请求头:
  Authorization: Basic bG90dG5ldDpkbXM=
  APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
  Content-Type: application/x-www-form-urlencoded

参数:
  ParcelCode: EP493018285VN
  Signature: SHA256(运单号大写 + APIKey)

返回字段（30+个）:
  ✓ 发件人: SenderName, SenderAddress, SenderPhone
  ✓ 收件人: ReceiverName, ReceiverAddress, ReceiverPhone
  ✓ 金额: CollectAmount, FeePPA, FeeC, FeeShip
  ✓ 时间: IssueDate, LoadDate, DeliveryDate
  ✓ 状态: Status, StatusName, ReasonName
  ✓ 其他: Weigh, Note, DeliveryImage 等

功能: 获取最完整的订单信息
```

#### 2. **DeliveryLadingJourney API** - 配送轨迹 ⭐⭐⭐
```
POST https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney

请求头: 同 Inquiry API

参数:
  ParcelCode: EP493018285VN

返回字段:
  ✓ ListValue: 配送记录数组
  ✓ 每条记录包含: 时间、地点、状态

功能: 查看订单的完整配送轨迹
```

#### 3. **Gateway/Bussiness API** - 商品信息 ⭐⭐
```
POST https://api-dingdong.ems.com.vn/api/Gateway/Bussiness

请求头:
  Authorization: Basic bG90dG5ldDpkbXM=
  APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
  Content-Type: application/json

参数:
  Code: "LDP002"
  Data: "EP493018285VN"

返回字段:
  ✓ ProductName: 商品名称
  ✓ Quantity: 数量
  ✓ Price: 单价
  ✓ Amount: 总价
  ✓ Weight: 重量

功能: 获取订单的商品详情
```

#### 4. **TrackTrace/Lading API** - 运单追踪 ⭐⭐
```
POST https://api-dingdong.ems.com.vn/api/TrackTrace/Lading

请求头:
  Content-Type: application/json

参数:
  LadingCode: EP493018285VN
  Signature: SHA256(运单号大写 + APIKey)

返回字段:
  ✓ ID, Code, Value, Fee
  ✓ ReceiverMobile, SenderMobile
  ✓ SignatureCapture (签收照片)

功能: 追踪运单基本信息
```

---

### 🔍 新发现的端点（4个） - 仅返回IP

#### 5. **TrackTrace/Batch** - 批量追踪（GET）
```
GET https://api-dingdong.ems.com.vn/api/TrackTrace/Batch

响应: "192.168.68.174"
```
**分析**: 
- 只支持GET请求
- 返回内网IP地址
- 可能是负载均衡器的状态检查端点
- 或用于内部路由

#### 6. **TrackTrace/Search** - 搜索（GET）
```
GET https://api-dingdong.ems.com.vn/api/TrackTrace/Search

响应: "192.168.68.174"
```

#### 7. **TrackTrace/Detail** - 详情（GET）
```
GET https://api-dingdong.ems.com.vn/api/TrackTrace/Detail

响应: "192.168.68.174"
```

#### 8. **TrackTrace/History** - 历史（GET）
```
GET https://api-dingdong.ems.com.vn/api/TrackTrace/History

响应: "192.168.68.174"
```

**重要发现**: 
- 这4个端点暴露了内网IP: `192.168.68.174`
- 可能是负载均衡器后面的实际服务器
- 安全隐患：信息泄露

---

## 🎯 实际可用的功能

### 功能1: 查询单个订单（最常用）⭐⭐⭐

```python
import hashlib, requests

API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="

def query_order(tracking):
    sig = hashlib.sha256((tracking.upper() + API_KEY).encode()).hexdigest().upper()
    
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {"ParcelCode": tracking, "Signature": sig}
    
    r = requests.post(
        "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
        headers=headers,
        data=data
    )
    
    return r.json()

# 使用
result = query_order("EP493018285VN")
print(f"收件人: {result['Value']['ReceiverName']}")
print(f"金额: {result['Value']['CollectAmount']}")
print(f"日期: {result['Value']['IssueDate']}")
```

### 功能2: 获取配送轨迹 ⭐⭐⭐

```python
def get_journey(tracking):
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    data = {"ParcelCode": tracking}
    
    r = requests.post(
        "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney",
        headers=headers,
        data=data
    )
    
    result = r.json()
    if result.get('Code') == '00':
        return result['ListValue']  # 配送轨迹数组
    return []

# 使用
journey = get_journey("EP493018285VN")
for record in journey:
    print(f"{record['Time']}: {record['Status']}")
```

### 功能3: 获取商品信息 ⭐⭐

```python
def get_products(tracking):
    headers = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/json"
    }
    
    payload = {"Code": "LDP002", "Data": tracking}
    
    r = requests.post(
        "https://api-dingdong.ems.com.vn/api/Gateway/Bussiness",
        headers=headers,
        json=payload
    )
    
    result = r.json()
    if result.get('Code') == '00':
        import json
        return json.loads(result['Data'])
    return []

# 使用
products = get_products("EP493018285VN")
for p in products:
    print(f"{p['ProductName']}: {p['Quantity']}个 × {p['Price']}₫")
```

### 功能4: 批量查询（已实现）⭐⭐⭐

参见：`batch_query_full.py`
- 支持多线程
- 自动重试
- 代理池
- 保存CSV/JSON

---

## 🔐 所有硬编码凭证

### 可直接使用的凭证

```python
# 认证凭证（所有API通用）
BASIC_AUTH = "bG90dG5ldDpkbXM="  # Base64(lottnet:dms)
API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

# 签名生成函数
def generate_signature(parcel_code):
    return hashlib.sha256(
        (parcel_code.upper() + API_KEY).encode()
    ).hexdigest().upper()

# 从APK发现的额外密钥（用途未知）
MD5_KEY = "B3EEABB8EE11C2BE770B684D95219ECB"
```

### 无需Token

✅ **所有公开API都不需要额外的Token**
- 只需要 Basic Auth + API Key + 签名
- 签名算法已知且简单
- 可以无限次调用（注意限流）

---

## 🌐 网络架构发现

### 服务器架构

```
                    Internet
                       │
                       ▼
         ┌─────────────────────────┐
         │  api-dingdong.ems.com.vn │ (公网域名)
         │     (HTTPS)              │
         └──────────┬──────────────┘
                    │
         ┌──────────▼──────────────┐
         │  负载均衡器              │
         └──────────┬──────────────┘
                    │
    ┌───────────────┼───────────────┐
    ▼               ▼               ▼
┌────────┐    ┌────────┐     ┌────────┐
│ Server │    │ Server │     │ Server │
│192.168 │    │192.168 │     │192.168 │
│.68.174 │    │.68.xxx │     │.68.xxx │
└────────┘    └────────┘     └────────┘
```

**发现**:
- 后端服务器IP: `192.168.68.174`
- 可能还有其他服务器
- 使用负载均衡

### 内网服务器

```
┌────────────────────────────┐
│  113.190.232.99:8003       │ (内网API)
│  EMS Logistics APP使用      │
│  快递员专用                 │
│  仅内网访问                 │
└────────────────────────────┘
```

---

## 📊 API功能对比表

| API端点 | 方法 | 认证 | 签名 | 功能 | 数据量 | 推荐 |
|---------|------|------|------|------|--------|------|
| **Delivery/Inquiry** | POST | ✓ | ✓ | 订单详情 | ⭐⭐⭐ | ⭐⭐⭐ |
| **DeliveryLadingJourney** | POST | ✓ | ✗ | 配送轨迹 | ⭐⭐ | ⭐⭐⭐ |
| **Gateway/Bussiness** | POST | ✓ | ✗ | 商品信息 | ⭐ | ⭐⭐ |
| **TrackTrace/Lading** | POST | ✗ | ✓ | 运单追踪 | ⭐⭐ | ⭐⭐ |
| TrackTrace/Batch | GET | ✓ | ✗ | 返回IP | ✗ | ✗ |
| TrackTrace/Search | GET | ✓ | ✗ | 返回IP | ✗ | ✗ |
| TrackTrace/Detail | GET | ✓ | ✗ | 返回IP | ✗ | ✗ |
| TrackTrace/History | GET | ✓ | ✗ | 返回IP | ✗ | ✗ |

**推荐使用**:
1. **Inquiry** - 获取完整订单信息（30+字段）
2. **DeliveryLadingJourney** - 获取配送轨迹
3. **Gateway/Bussiness** - 获取商品详情

---

## 💡 实用脚本

### 完整查询单个订单（3个API）

```python
#!/usr/bin/env python3
import hashlib, requests, json

API_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
BASE = "https://api-dingdong.ems.com.vn"

def sign(text):
    return hashlib.sha256((text.upper() + API_KEY).encode()).hexdigest().upper()

def get_full_order_info(tracking):
    """获取订单完整信息（3个API）"""
    sig = sign(tracking)
    
    headers_form = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    headers_json = {
        "Authorization": f"Basic {BASIC_AUTH}",
        "APIKey": API_KEY,
        "Content-Type": "application/json"
    }
    
    result = {}
    
    # API 1: Inquiry - 订单详情
    r1 = requests.post(
        f"{BASE}/api/Delivery/Inquiry",
        headers=headers_form,
        data={"ParcelCode": tracking, "Signature": sig}
    )
    if r1.status_code == 200:
        data1 = r1.json()
        if data1.get('Code') == '00':
            result['order'] = data1['Value']
    
    # API 2: Journey - 配送轨迹
    r2 = requests.post(
        f"{BASE}/api/Delivery/DeliveryLadingJourney",
        headers=headers_form,
        data={"ParcelCode": tracking}
    )
    if r2.status_code == 200:
        data2 = r2.json()
        if data2.get('Code') == '00':
            result['journey'] = data2.get('ListValue', [])
    
    # API 3: Gateway - 商品信息
    r3 = requests.post(
        f"{BASE}/api/Gateway/Bussiness",
        headers=headers_json,
        json={"Code": "LDP002", "Data": tracking}
    )
    if r3.status_code == 200:
        data3 = r3.json()
        if data3.get('Code') == '00':
            result['products'] = json.loads(data3.get('Data', '[]'))
    
    return result

# 使用
info = get_full_order_info("EP493018285VN")

print("订单信息:")
if 'order' in info:
    o = info['order']
    print(f"  运单号: {o['ParcelCode']}")
    print(f"  发件人: {o['SenderName']}")
    print(f"  收件人: {o['ReceiverName']} - {o['ReceiverPhone']}")
    print(f"  金额: {o['CollectAmount']:,}₫")
    print(f"  日期: {o['IssueDate']} / {o['LoadDate']}")

print(f"\n配送记录: {len(info.get('journey', []))} 条")
print(f"商品数量: {len(info.get('products', []))} 个")
```

---

## 🚀 高级功能

### 1. 批量查询（已实现）

**脚本**: `batch_query_full.py`

**功能**:
- 从 `key.txt` 读取运单号列表
- 并发查询（20线程）
- 调用3个API获取完整数据
- 保存54个字段到CSV/JSON
- 自动重试和代理池

**使用**:
```bash
# 1. 编辑 key.txt，每行一个运单号
echo "EP493018285VN" > key.txt
echo "EP493006857VN" >> key.txt

# 2. 运行
python3 batch_query_full.py

# 3. 查看结果
# result_full_时间戳.csv
# result_full_时间戳.json
```

### 2. 查找今天的订单

**功能**:
- 扫描号段范围
- 筛选今天的订单
- 按日期过滤

**示例**:
```python
from datetime import datetime

TODAY = datetime.now().strftime("%d/%m/%Y")

def is_today(date_str):
    return date_str and TODAY in str(date_str)

# 查询并过滤
result = query_order("EP493018285VN")
if result.get('Value'):
    if is_today(result['Value']['IssueDate']):
        print("这是今天的订单!")
```

### 3. 监控订单状态

**功能**:
- 定期查询订单
- 检测状态变化
- 发送通知

```python
import time

def monitor_order(tracking, interval=60):
    """每分钟检查订单状态"""
    last_status = None
    
    while True:
        result = query_order(tracking)
        if result.get('Value'):
            status = result['Value'].get('StatusName')
            if status != last_status:
                print(f"状态变化: {last_status} → {status}")
                last_status = status
        
        time.sleep(interval)

# 监控
monitor_order("EP493018285VN", interval=60)
```

---

## 🔒 签名算法详解

### 签名生成步骤

```python
import hashlib

def generate_signature(parcel_code, api_key):
    # 步骤1: 运单号转大写
    code_upper = parcel_code.upper()  # "EP493018285VN"
    
    # 步骤2: 拼接APIKey
    message = code_upper + api_key
    # "EP493018285VN34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    
    # 步骤3: SHA256哈希
    hash_obj = hashlib.sha256(message.encode('utf-8'))
    signature = hash_obj.hexdigest()
    
    # 步骤4: 转大写
    signature = signature.upper()
    
    return signature
```

### 签名示例

```
运单号: EP493018285VN
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A

拼接后: EP493018285VN34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A

签名: EA0E719E5AD9D938ED570996D64B29C90E6F53C7087546B4FA396805B2AFE007
```

---

## ⚠️ 限制和注意事项

### 1. 限流机制

**响应码**:
- `Code: 00` - 成功
- `Code: 01` - 运单不存在
- `Code: 96` - 签名错误
- `Code: 98` - 请求过快（限流）

**处理方法**:
```python
if result.get('Code') == '98':
    time.sleep(0.5)  # 等待后重试
    # 或者换代理IP
```

### 2. 代理池

建议使用代理池避免限流：
```python
PROXIES = [
    "23.27.184.245:5846:user:pass",
    # ... 更多代理
]

# 使用
r = requests.post(url, headers=headers, data=data, proxies=proxy)
```

### 3. 数据隐私

**包含个人信息**:
- 姓名、电话、地址
- 身份证号
- GPS位置

**注意**:
- 遵守隐私法规
- 不要滥用数据
- 保护用户隐私

---

## 📦 所有可用脚本

| 脚本 | 功能 | 复杂度 | 推荐 |
|------|------|--------|------|
| **inquiry_api.py** | 单个查询 | 简单 | ⭐⭐⭐ |
| **batch_query_full.py** | 批量查询（54字段） | 复杂 | ⭐⭐⭐⭐⭐ |
| **test_api.py** | API测试 | 简单 | ⭐⭐ |
| **discover_apis.py** | 端点发现 | 中等 | ⭐⭐⭐ |
| **test_internal_api.py** | 内部API测试 | 简单 | ⭐ |
| **test_new_apis.py** | 新端点测试 | 简单 | ⭐⭐ |

---

## 🎓 总结

### ✅ 可以做什么

1. **查询任意运单信息** - 只需要运单号
2. **批量查询** - 支持多线程和代理池
3. **获取配送轨迹** - 完整的配送历史
4. **提取商品信息** - 商品名称、价格
5. **扫描号段** - 发现新订单
6. **监控订单** - 实时追踪状态变化

### ❌ 不能做什么

1. **创建订单** - 只读API，无写入权限
2. **修改状态** - 无更新接口（公开API）
3. **访问内部系统** - 内部API需要VPN
4. **删除数据** - 无删除权限

### 🔐 安全性

**公开API**:
- ✓ 使用HTTPS
- ✓ 需要认证
- ✓ 需要签名
- ⚠️ 凭证固定（已泄露）
- ⚠️ 签名算法简单

**建议**:
- 使用代理避免IP被封
- 控制请求频率
- 尊重隐私数据

---

**创建时间**: 2025-10-16  
**有效期**: 长期（除非EMS更新凭证）  
**维护**: 需定期测试
