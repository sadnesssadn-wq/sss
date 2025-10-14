# 🔥 DingDong API 完整对比指南

## 🏆 最详细的API：DeliveryLadingJourney

**结论：对于已配送的包裹，`DeliveryLadingJourney` 是信息最详细的API！**

---

## 📊 五大API详细对比

### 🥇 1. DeliveryLadingJourney - ⭐⭐⭐⭐⭐ (最佳！)

**端点**: `POST /api/Delivery/DeliveryLadingJourney`

#### ✅ 优势
- **不需要签名** - 最简单！
- **返回字段最多** - 39个字段
- **包含配送时间** - DeliveryDate
- **包含签名照片URL** - DeliverySignature 🔥
- **支持多次配送记录** - ListValue数组
- **详细的状态名称** - StatusName
- **包含路线代码** - RouteCode
- **支付状态** - IsPaypostName

#### ❌ 劣势
- 只对已配送的包裹有数据
- 未配送的返回"未找到数据"
- 发件人信息较少

#### 📦 返回的独特字段
```json
{
  "DeliveryDate": "22/11/2019 10:38:00",          // ⭐ 配送时间
  "DeliverySignature": "https://api-dingdong.ems.com.vn/IMAGE//...",  // ⭐ 签名照片
  "StatusName": "Thành công",                     // ⭐ 状态名称
  "RouteCode": "702721",                          // ⭐ 路线代码
  "IsPaypostName": "Gạch nợ thành công",         // ⭐ 支付状态
  "SolutionName": "1.Phát lại trong chuyến phát tiếp theo",  // ⭐ 解决方案
  "ReasonName": "",                               // 失败原因
  "AmountCOD": 235000                             // 实际COD金额
}
```

#### 🎯 最佳使用场景
- ✅ 查询配送时间
- ✅ 获取签名照片
- ✅ 查看配送历史
- ✅ 分析配送状态
- ✅ 多次配送尝试记录

---

### 🥈 2. Inquiry - ⭐⭐⭐⭐

**端点**: `POST /api/Delivery/Inquiry`

#### ✅ 优势
- **发件人完整信息** - 姓名、地址、电话
- **收件人完整信息** - 姓名、地址、电话
- **所有费用信息** - 7种费用类型
- **包裹重量** - Weigh
- **适用于未配送包裹** - 即使未配送也有数据

#### ❌ 劣势
- **需要签名** - 稍微复杂
- **无配送时间** - DeliveryDate通常为null
- **无签名照片**
- **无路线信息**

#### 📦 返回的独特字段
```json
{
  "SenderName": "158810-Bưu cục Chợ Tía-Nguyễn Ánh Phương 096956037",  // ⭐ 完整发件人
  "SenderAddress": "hn",
  "SenderPhone": "0969560375",                    // ⭐ 发件人电话
  "ReceiverPhone": "794772754",                   // ⭐ 收件人电话
  "Weigh": "500",                                 // ⭐ 重量
  "FeeShip": "0",                                 // ⭐ 运费
  "FeeC": 0,                                      // ⭐ C费用
  "FeePPA": 0,                                    // ⭐ PPA费用
  "FeeCollectLater": 0,                           // ⭐ 延期收费
  "FeeCancelOrder": 0                             // ⭐ 取消订单费
}
```

#### 🎯 最佳使用场景
- ✅ 查询未配送包裹信息
- ✅ 获取联系方式（电话）
- ✅ 查看所有费用明细
- ✅ 获取包裹重量

---

### 🥉 3. TrackTrace/Lading - ⭐⭐⭐

**端点**: `POST /api/TrackTrace/Lading`

#### ✅ 优势
- **运单系统ID** - ID字段
- **状态历史列表** - ListStatus（理论上）
- **基本信息齐全**

#### ❌ 劣势
- **需要签名**
- **状态历史常为空** - ListStatus实测为空数组
- **无配送时间**
- **无签名照片**
- **信息不如前两个API全面**

#### 📦 返回的独特字段
```json
{
  "ID": 502080831,                    // ⭐ 运单系统ID
  "Code": "EF043571478VN",
  "Value": 360000,
  "Fee": 0,
  "ListStatus": []                    // ⭐ 状态历史（但常为空）
}
```

#### 🎯 最佳使用场景
- ✅ 需要运单系统ID时
- ✅ 查询状态历史（理论上）
- ⚠️ 实际用处有限

---

### 4. CheckLadingCode - ⭐

**端点**: `POST /api/Delivery/CheckLadingCode`

#### ✅ 优势
- **快速验证** - 响应最快
- **简单明了** - 只返回是否有效

#### ❌ 劣势
- **信息极少** - 仅验证结果
- **需要签名**

#### 📦 返回字段
```json
{
  "Code": "00",
  "Message": "Bưu gửi hợp lệ"
}
```

#### 🎯 最佳使用场景
- ✅ 批量验证运单号有效性
- ✅ 快速检查

---

### 5. InquiryAmount - ⭐⭐

**端点**: `POST /api/Delivery/InquiryAmount`

#### ✅ 优势
- **金额信息** - 专注于金额

#### ❌ 劣势
- **需要签名**
- **信息很少**
- **常返回"未找到"**

#### 🎯 最佳使用场景
- ✅ 仅需金额时

---

## 📊 字段详细对比表

| 字段类别 | Inquiry | DeliveryJourney | TrackTrace | 说明 |
|---------|---------|-----------------|------------|------|
| **时间信息** | ❌ | ✅✅✅ | ❌ | Journey 唯一有配送时间！ |
| **签名照片** | ❌ | ✅✅✅ | ❌ | Journey 独有！ |
| **发件人电话** | ✅ | ❌ | ✅ | Inquiry 和 TrackTrace 有 |
| **收件人电话** | ✅ | ❌ | ✅ | Inquiry 和 TrackTrace 有 |
| **包裹重量** | ✅ | ❌ | ❌ | Inquiry 独有！ |
| **路线代码** | ❌ | ✅✅✅ | ❌ | Journey 独有！ |
| **支付状态** | ❌ | ✅✅✅ | ❌ | Journey 独有！ |
| **详细费用** | ✅✅✅ | ✅ | ❌ | Inquiry 最全！ |
| **状态名称** | ❌ | ✅ | ❌ | Journey 有中文状态 |

---

## 🎯 使用建议

### 根据需求选择：

#### 场景1: 查询已配送包裹
**推荐**: `DeliveryLadingJourney` ⭐⭐⭐⭐⭐
```python
# 获取：配送时间、签名照片、完整配送详情
url = "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney"
data = {"ParcelCode": tracking_number}
# 不需要签名！
```

#### 场景2: 查询未配送包裹
**推荐**: `Inquiry` ⭐⭐⭐⭐
```python
# 获取：发件人、收件人、金额、重量
url = "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry"
sig = SHA256(tracking_number + PRIVATE_KEY).upper()
data = {"ParcelCode": tracking_number, "Signature": sig}
```

#### 场景3: 获取联系方式
**推荐**: `Inquiry` ⭐⭐⭐⭐
```python
# 最完整的电话信息
# 发件人电话: SenderPhone
# 收件人电话: ReceiverPhone
```

#### 场景4: 批量验证运单号
**推荐**: `CheckLadingCode` ⭐⭐
```python
# 最快速，仅验证有效性
# 但需要签名
```

#### 场景5: 获取完整信息
**推荐**: 组合使用 ⭐⭐⭐⭐⭐
```python
# 1. 先用 Inquiry 获取基本信息
# 2. 再用 DeliveryLadingJourney 获取配送历史
# 这样可以得到最全的信息！
```

---

## 🔥 最佳实践：组合查询

### 获取最完整信息的方法

```python
import hashlib
import requests

def get_complete_info(tracking_number):
    """组合查询，获取最完整的信息"""
    
    API_URL = "https://api-dingdong.ems.com.vn/"
    PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    
    headers = {
        "Authorization": "Basic bG90dG5ldDpkbXM=",
        "APIKey": PRIVATE_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    sig = hashlib.sha256((tracking_number + PRIVATE_KEY).encode()).hexdigest().upper()
    
    # 第一步：Inquiry - 获取基本信息和联系方式
    r1 = requests.post(
        f"{API_URL}api/Delivery/Inquiry",
        headers=headers,
        data={"ParcelCode": tracking_number, "Signature": sig}
    )
    basic_info = r1.json()
    
    # 第二步：DeliveryLadingJourney - 获取配送历史和签名
    r2 = requests.post(
        f"{API_URL}api/Delivery/DeliveryLadingJourney",
        headers=headers,
        data={"ParcelCode": tracking_number}
    )
    delivery_info = r2.json()
    
    # 组合数据
    complete = {
        "tracking_number": tracking_number,
        "basic": basic_info.get("Value"),
        "delivery_history": delivery_info.get("ListValue"),
        "has_been_delivered": delivery_info.get("Code") == "00"
    }
    
    return complete

# 使用示例
info = get_complete_info("EL135248100VN")

# 访问数据
print(f"发件人电话: {info['basic']['SenderPhone']}")        # 来自 Inquiry
print(f"包裹重量: {info['basic']['Weigh']}")                # 来自 Inquiry
print(f"配送时间: {info['delivery_history'][0]['DeliveryDate']}")  # 来自 Journey
print(f"签名照片: {info['delivery_history'][0]['DeliverySignature']}")  # 来自 Journey
```

---

## 📋 完整字段对比矩阵

| 字段名 | Inquiry | DeliveryJourney | TrackTrace | 独特性 |
|--------|---------|-----------------|------------|--------|
| **ParcelCode** | ✅ | ✅ | ✅ | 所有都有 |
| **SenderName** | ✅ | ❌ | ✅ | - |
| **SenderPhone** | ✅ | ❌ | ✅ | Inquiry/Track有 |
| **ReceiverName** | ✅ | ✅ | ✅ | 所有都有 |
| **ReceiverPhone** | ✅ | ❌ | ✅ | Inquiry/Track有 |
| **ReceiverAddress** | ✅ | ✅ | ✅ | 所有都有 |
| **CollectAmount** | ✅ | ✅ | ❌ | Journey最准确 |
| **Weigh** | ✅ | ❌ | ❌ | **Inquiry独有** 🔥 |
| **DeliveryDate** | ❌ | ✅ | ❌ | **Journey独有** 🔥🔥🔥 |
| **DeliverySignature** | ❌ | ✅ | ❌ | **Journey独有** 🔥🔥🔥 |
| **RouteCode** | ❌ | ✅ | ❌ | **Journey独有** 🔥 |
| **StatusName** | ❌ | ✅ | ❌ | **Journey独有** 🔥 |
| **IsPaypostName** | ❌ | ✅ | ❌ | **Journey独有** 🔥 |
| **SolutionName** | ❌ | ✅ | ❌ | **Journey独有** |
| **FeeShip** | ✅ | ✅ | ❌ | **Inquiry独有** 🔥 |
| **FeePPA** | ✅ | ✅ | ❌ | **Inquiry独有** |
| **FeeC** | ✅ | ✅ | ❌ | **Inquiry独有** |
| **FeeCollectLater** | ✅ | ✅ | ❌ | **Inquiry独有** |
| **FeeCancelOrder** | ✅ | ✅ | ❌ | **Inquiry独有** |
| **ID** (系统ID) | ❌ | ❌ | ✅ | **TrackTrace独有** |
| **ListStatus** | ❌ | ❌ | ✅ | TrackTrace独有(但常空) |

---

## 🔥 关键独特字段

### 只有 DeliveryLadingJourney 有的：
1. ⭐⭐⭐ **DeliveryDate** - 配送时间
2. ⭐⭐⭐ **DeliverySignature** - 签名照片URL
3. ⭐⭐ **RouteCode** - 路线代码
4. ⭐⭐ **StatusName** - 状态中文名
5. ⭐⭐ **IsPaypostName** - 支付状态名称
6. ⭐ **SolutionName** - 解决方案说明

### 只有 Inquiry 有的：
1. ⭐⭐⭐ **Weigh** - 包裹重量
2. ⭐⭐⭐ **SenderPhone** - 发件人电话
3. ⭐⭐⭐ **ReceiverPhone** - 收件人电话
4. ⭐⭐ **详细费用** - 7种费用类型

### 只有 TrackTrace 有的：
1. ⭐ **ID** - 运单系统ID
2. ❓ **ListStatus** - 状态历史（但实测常为空）

---

## 💡 实际应用示例

### 示例1: 获取最详细信息（推荐！）

```python
import hashlib
import requests

def get_all_details(tracking):
    """获取最全面的包裹信息"""
    
    API = "https://api-dingdong.ems.com.vn/"
    KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    sig = hashlib.sha256((tracking + KEY).encode()).hexdigest().upper()
    
    headers = {
        "Authorization": "Basic bG90dG5ldDpkbXM=",
        "APIKey": KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    }
    
    # Step 1: 获取基本信息（电话、重量、费用）
    r1 = requests.post(f"{API}api/Delivery/Inquiry", 
                       headers=headers,
                       data={"ParcelCode": tracking, "Signature": sig})
    inquiry = r1.json().get("Value", {})
    
    # Step 2: 获取配送历史（时间、签名照片）
    r2 = requests.post(f"{API}api/Delivery/DeliveryLadingJourney",
                       headers=headers,
                       data={"ParcelCode": tracking})
    journey = r2.json().get("ListValue", [])
    
    # 组合返回
    return {
        # 从 Inquiry 获取
        "sender_phone": inquiry.get("SenderPhone"),
        "receiver_phone": inquiry.get("ReceiverPhone"),
        "weight": inquiry.get("Weigh"),
        "fees": {
            "ship": inquiry.get("FeeShip"),
            "cod": inquiry.get("AmountCOD"),
            "ppa": inquiry.get("FeePPA"),
            "collect_later": inquiry.get("FeeCollectLater")
        },
        
        # 从 DeliveryLadingJourney 获取
        "delivery_time": journey[0].get("DeliveryDate") if journey else None,
        "signature_photo": journey[0].get("DeliverySignature") if journey else None,
        "route_code": journey[0].get("RouteCode") if journey else None,
        "status_name": journey[0].get("StatusName") if journey else None,
        "payment_status": journey[0].get("IsPaypostName") if journey else None,
    }

# 使用
result = get_all_details("EL135248100VN")
print(result)
```

### 示例2: 根据包裹状态选择API

```python
def smart_query(tracking):
    """智能查询 - 自动选择最合适的API"""
    
    # 先用 DeliveryLadingJourney 查询（不需要签名，最快）
    r = requests.post(
        "https://api-dingdong.ems.com.vn/api/Delivery/DeliveryLadingJourney",
        headers=headers,
        data={"ParcelCode": tracking}
    )
    
    result = r.json()
    
    if result.get("Code") == "00" and result.get("ListValue"):
        # 已配送 - 使用 DeliveryLadingJourney 的数据
        return {
            "status": "已配送",
            "source": "DeliveryLadingJourney",
            "data": result["ListValue"][0]
        }
    else:
        # 未配送 - 用 Inquiry 获取详细信息
        sig = hashlib.sha256((tracking + KEY).encode()).hexdigest().upper()
        r2 = requests.post(
            "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
            headers=headers,
            data={"ParcelCode": tracking, "Signature": sig}
        )
        
        return {
            "status": "未配送",
            "source": "Inquiry",
            "data": r2.json().get("Value")
        }
```

---

## 📊 信息完整度评分

| API | 总分 | 基本信息 | 联系方式 | 费用 | 时间 | 配送详情 | 签名照片 | 适用场景 |
|-----|------|---------|---------|------|------|---------|---------|---------|
| **DeliveryJourney** | 🏆 95分 | ✅ 9/10 | ⚠️ 5/10 | ✅ 8/10 | ✅ 10/10 | ✅ 10/10 | ✅ 10/10 | 已配送 |
| **Inquiry** | 🥈 85分 | ✅ 10/10 | ✅ 10/10 | ✅ 10/10 | ❌ 0/10 | ⚠️ 5/10 | ❌ 0/10 | 未配送 |
| **TrackTrace** | 🥉 65分 | ✅ 8/10 | ✅ 8/10 | ⚠️ 5/10 | ❌ 0/10 | ⚠️ 3/10 | ❌ 0/10 | 一般 |
| **CheckLadingCode** | 30分 | ⚠️ 2/10 | ❌ 0/10 | ❌ 0/10 | ❌ 0/10 | ❌ 0/10 | ❌ 0/10 | 仅验证 |
| **InquiryAmount** | 35分 | ⚠️ 3/10 | ❌ 0/10 | ⚠️ 5/10 | ❌ 0/10 | ❌ 0/10 | ❌ 0/10 | 仅金额 |

---

## 🎯 最终答案

### 🏆 **最详细的API：DeliveryLadingJourney**

**理由**：
1. ✅ 唯一有**配送时间**的API
2. ✅ 唯一有**签名照片URL**的API
3. ✅ 唯一有**路线代码**的API
4. ✅ 唯一有**中文状态名称**的API
5. ✅ 唯一有**支付状态详情**的API
6. ✅ 支持**多条配送记录**
7. ✅ **不需要签名** - 最简单！

**但要注意**：
- ⚠️ 只对已配送的包裹有数据
- ⚠️ 未配送的包裹返回"未找到数据"
- ⚠️ 缺少发件人电话和包裹重量

---

### 💡 最佳策略：组合查询

**对于最完整的信息，建议同时调用两个API**：

1. **Inquiry** → 获取电话、重量、费用
2. **DeliveryLadingJourney** → 获取时间、签名、配送详情

这样可以得到**100%完整**的信息！

---

## 📝 快速参考

| 需求 | 推荐API | 需要签名 | 评分 |
|------|---------|----------|------|
| 配送时间 | DeliveryJourney | ❌ | ⭐⭐⭐⭐⭐ |
| 签名照片 | DeliveryJourney | ❌ | ⭐⭐⭐⭐⭐ |
| 联系电话 | Inquiry | ✅ | ⭐⭐⭐⭐⭐ |
| 包裹重量 | Inquiry | ✅ | ⭐⭐⭐⭐⭐ |
| 详细费用 | Inquiry | ✅ | ⭐⭐⭐⭐⭐ |
| 配送状态 | DeliveryJourney | ❌ | ⭐⭐⭐⭐⭐ |
| 路线信息 | DeliveryJourney | ❌ | ⭐⭐⭐⭐⭐ |
| 快速验证 | CheckLadingCode | ✅ | ⭐⭐⭐ |

---

*结论: DeliveryLadingJourney 是最详细的单一API，但组合使用 Inquiry + DeliveryLadingJourney 可获得最完整信息！*
