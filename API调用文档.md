# DingDong API 调用文档

## 🔑 认证信息

```python
API_URL = "https://api-dingdong.ems.com.vn/"
PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
BASIC_AUTH = "bG90dG5ldDpkbXM="
```

## 📝 签名生成

```python
import hashlib

def sign(tracking_number):
    return hashlib.sha256((tracking_number + PRIVATE_KEY).encode()).hexdigest().upper()
```

---

## API 1: 订单查询（包含发件日期）✅

### 请求

```python
import requests

url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"

headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
    "Content-Type": "application/x-www-form-urlencoded"
}

tracking = "EP493018285VN"
signature = sign(tracking)

data = {
    "ParcelCode": tracking,
    "Signature": signature
}

response = requests.post(url, headers=headers, data=data)
```

### 返回字段（重点）

```json
{
  "Code": "00",
  "Value": {
    "IssueDate": "15/10/2025",        ← 📅 发件日期
    "LoadDate": "10/15/2025 13:10:47", ← 📅 装载日期
    "DeliveryDate": "",                ← 📅 配送日期
    "SenderName": "发件人姓名",
    "ReceiverName": "收件人姓名",
    "ReceiverPhone": "收件人电话",
    "CollectAmount": 285000,            ← 💰 COD金额
    ...
  }
}
```

---

## API 2: 配送记录查询（包含配送时间）✅

### 请求

```python
url = "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney"

headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
    "Content-Type": "application/x-www-form-urlencoded"
}

data = {
    "ParcelCode": "EP493018285VN"
}

response = requests.post(url, headers=headers, data=data)
```

### 返回字段（重点）

```json
{
  "Code": "00",
  "ListValue": [
    {
      "RecDate": "15/10/2025 14:30:25",  ← 📅 记录时间
      "Status": "已收件",
      "Note": "备注信息",
      "POCode": "邮局代码",
      ...
    }
  ]
}
```

---

## API 3: 商品信息查询

### 请求

```python
url = "https://api-dingdong.ems.com.vn/api/Gateway/Bussiness"

headers = {
    "Authorization": "Basic bG90dG5ldDpkbXM=",
    "APIKey": "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A",
    "Content-Type": "application/json"
}

json_data = {
    "Code": "LDP002",
    "Data": "EP493018285VN"
}

response = requests.post(url, headers=headers, json=json_data)
```

---

## 🎯 如何找当天订单

### 方法1：使用 IssueDate（发件日期）

```python
result = api_delivery_inquiry("EP493018285VN")
if result['Code'] == '00':
    issue_date = result['Value']['IssueDate']
    if '15/10/2025' in issue_date:  # 今天的日期
        print("✅ 这是今天的订单")
```

### 方法2：使用 LoadDate（装载日期）

```python
load_date = result['Value']['LoadDate']
if '15/10/2025' in load_date or '10/15/2025' in load_date:
    print("✅ 今天装载的订单")
```

### 方法3：使用配送记录的 RecDate

```python
result = api_delivery_journey("EP493018285VN")
if result['Code'] == '00':
    for record in result['ListValue']:
        rec_date = record['RecDate']
        if '15/10/2025' in rec_date:
            print(f"✅ {rec_date}: {record['Status']}")
```

---

## 📦 完整示例代码

见 `api_examples.py` 文件

---

## 🔧 CURL 调用示例

### API 1: 订单查询

```bash
curl -X POST "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry" \
  -H "Authorization: Basic bG90dG5ldDpkbXM=" \
  -H "APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "ParcelCode=EP493018285VN&Signature=YOUR_SIGNATURE_HERE"
```

### API 2: 配送记录

```bash
curl -X POST "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney" \
  -H "Authorization: Basic bG90dG5ldDpkbXM=" \
  -H "APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "ParcelCode=EP493018285VN"
```

### API 3: 商品信息

```bash
curl -X POST "https://api-dingdong.ems.com.vn/api/Gateway/Bussiness" \
  -H "Authorization: Basic bG90dG5ldDpkbXM=" \
  -H "APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A" \
  -H "Content-Type: application/json" \
  -d '{"Code":"LDP002","Data":"EP493018285VN"}'
```

---

## ✅ 总结

**能看到日期的API：**

1. ✅ **API 1 (Inquiry)** - 最常用
   - `IssueDate`: 发件日期
   - `LoadDate`: 装载日期
   - `DeliveryDate`: 配送日期

2. ✅ **API 2 (DeliveryLadingJourney)** - 配送记录
   - `RecDate`: 每条记录的时间

**推荐：使用 API 1 的 IssueDate 判断是否是当天订单！**
