# DingDong API 快速参考指南

## 🔑 基础配置

```
API Base URL: https://api-dingdong.ems.com.vn/
Private Key:  34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A

Basic Auth:
  用户名: lottnet
  密码:   dms
  Base64: bG90dG5ldDpkbXM=
```

---

## 📦 订单查询API列表

### 1️⃣ 查询运单信息（需签名）

**接口**: `POST /api/Delivery/CheckLadingCode`

**参数**:
- `ParcelCode`: 运单号
- `Signature`: 签名 = SHA256(运单号 + Private Key).toUpperCase()

**示例**:
```bash
# 运单号: EH123456789VN
# 签名计算: SHA256("EH123456789VN" + "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A")

curl -X POST 'https://api-dingdong.ems.com.vn/api/Delivery/CheckLadingCode' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d 'ParcelCode=EH123456789VN&Signature=计算出的签名'
```

---

### 2️⃣ 查询包裹详情（需签名）

**接口**: `POST /api/Delivery/Inquiry`

**参数**:
- `ParcelCode`: 运单号
- `Signature`: 签名 = SHA256(运单号 + Private Key).toUpperCase()

**响应示例**:
```json
{
  "ErrorCode": "00",
  "Message": "Success",
  "Data": {
    "ParcelCode": "EH123456789VN",
    "Status": "配送中",
    "ReceiverName": "张三",
    "ReceiverAddress": "河内市",
    ...
  }
}
```

---

### 3️⃣ 查询快递员配送订单

**接口**: `POST /api/Delivery/DeliveryPostman`

**参数**:
- `PostmanId`: 快递员ID（必填）
- `FromDate`: 日期，格式 YYYY-MM-DD（必填）
- `ShiftID`: 班次ID（可选）
- `ChThu`: 支票（可选）
- `TuiSo`: 邮袋号（可选）

**示例**:
```bash
curl -X POST 'https://api-dingdong.ems.com.vn/api/Delivery/DeliveryPostman' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d 'PostmanId=12345&FromDate=2025-10-14&ShiftID=&ChThu=&TuiSo='
```

---

### 4️⃣ 查询收件订单

**接口**: `POST /api/Collect/SearchOrderPostman`

**参数**:
- `PostmanID`: 快递员ID
- `OrderID`: 订单ID（可选）
- `Status`: 状态（可选）
- `FromAssignDate`: 开始日期（可选）
- `ToAssignDate`: 结束日期（可选）
- `OrderCode`: 订单编号（可选）
- `TrackingCode`: 追踪编号（可选）

**示例**:
```bash
curl -X POST 'https://api-dingdong.ems.com.vn/api/Collect/SearchOrderPostman' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d 'PostmanID=12345&OrderID=&Status=&FromAssignDate=2025-10-01&ToAssignDate=2025-10-14'
```

---

### 5️⃣ 查询配送统计

**接口**: `POST /api/Delivery/DeliveryStatistic`

**参数**:
- `PostmanId`: 快递员ID
- `FromDate`: 开始日期
- `ToDate`: 结束日期
- `Status`: 状态（可选）
- `ShiftID`: 班次ID（可选）

**示例**:
```bash
curl -X POST 'https://api-dingdong.ems.com.vn/api/Delivery/DeliveryStatistic' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d 'PostmanId=12345&FromDate=2025-10-01&ToDate=2025-10-14&Status=&ShiftID='
```

---

### 6️⃣ 查询包裹配送历史

**接口**: `POST /api/Delivery/DeliveryLadingJourney`

**参数**:
- `ParcelCode`: 运单号

**示例**:
```bash
curl -X POST 'https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d 'ParcelCode=EH123456789VN'
```

---

### 7️⃣ 查询金额信息（需签名）

**接口**: `POST /api/Delivery/InquiryAmount`

**参数**:
- `ParcelCode`: 运单号
- `Signature`: 签名 = SHA256(运单号 + Private Key).toUpperCase()

---

## 🔐 签名算法

### Python 实现:
```python
import hashlib

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

def generate_signature(*params):
    # 拼接所有参数和私钥
    concat = ''.join(str(p) for p in params) + PRIVATE_KEY
    
    # SHA256哈希并转大写
    signature = hashlib.sha256(concat.encode('utf-8')).hexdigest().upper()
    
    return signature

# 示例：查询运单
parcel_code = "EH123456789VN"
signature = generate_signature(parcel_code)
print(signature)
```

### JavaScript 实现:
```javascript
const crypto = require('crypto');

const PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A";

function generateSignature(...params) {
    // 拼接所有参数和私钥
    const concat = params.join('') + PRIVATE_KEY;
    
    // SHA256哈希并转大写
    const signature = crypto
        .createHash('sha256')
        .update(concat)
        .digest('hex')
        .toUpperCase();
    
    return signature;
}

// 示例：查询运单
const parcelCode = "EH123456789VN";
const signature = generateSignature(parcelCode);
console.log(signature);
```

### PHP 实现:
```php
<?php
$PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A";

function generateSignature(...$params) {
    global $PRIVATE_KEY;
    
    // 拼接所有参数和私钥
    $concat = implode('', $params) . $PRIVATE_KEY;
    
    // SHA256哈希并转大写
    $signature = strtoupper(hash('sha256', $concat));
    
    return $signature;
}

// 示例：查询运单
$parcelCode = "EH123456789VN";
$signature = generateSignature($parcelCode);
echo $signature;
?>
```

---

## 📋 常见响应码

| 错误码 | 说明 |
|--------|------|
| `00` | 成功 |
| `01` | 参数错误 |
| `02` | 数据不存在 |
| `03` | 系统错误 |
| `04` | 签名错误 |
| `05` | 设备已在其他地方激活 |

---

## 🔍 快速测试

### 1. 测试签名生成
```bash
# 在终端运行（需要安装 Python）
python3 -c "
import hashlib
pk = '34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A'
parcel = 'EH123456789VN'
sig = hashlib.sha256((parcel + pk).encode()).hexdigest().upper()
print(f'运单号: {parcel}')
print(f'签名: {sig}')
"
```

### 2. 测试API调用
```bash
# 使用 curl 测试（需要真实的运单号）
PARCEL_CODE="EH123456789VN"
SIGNATURE=$(python3 -c "import hashlib; print(hashlib.sha256(('${PARCEL_CODE}34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A').encode()).hexdigest().upper())")

curl -X POST 'https://api-dingdong.ems.com.vn/api/Delivery/CheckLadingCode' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Authorization: Basic bG90dG5ldDpkbXM=' \
  -H 'APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A' \
  -d "ParcelCode=${PARCEL_CODE}&Signature=${SIGNATURE}"
```

---

## 🛡️ 重要提醒

⚠️ **安全警告**:
1. 这些密钥是从APK中提取的硬编码密钥
2. 使用这些密钥可以访问EMS系统
3. 仅用于安全研究和教育目的
4. 请勿用于非法用途
5. API调用可能会被记录和追踪

⚠️ **SSL证书验证被禁用**:
- 原应用禁用了SSL证书验证
- 容易受到中间人攻击
- 测试时建议启用证书验证

---

## 📝 注意事项

1. **需要有效的快递员ID**才能查询订单
2. **需要真实的运单号**才能查询包裹信息
3. 某些API可能需要**用户登录后的Token**
4. 日期格式统一使用 `YYYY-MM-DD`
5. 所有需要签名的API，签名错误会返回错误码 `04`

---

## 🚀 快速开始

1. **安装Python脚本依赖**:
   ```bash
   pip install requests
   ```

2. **运行示例脚本**:
   ```bash
   python api_call_examples.py
   ```

3. **修改参数并测试**:
   - 替换运单号
   - 替换快递员ID
   - 替换日期范围

---

*免责声明：本文档仅用于安全研究和教育目的。请勿用于非法用途。*
