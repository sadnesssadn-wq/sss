# API 4: TrackTrace/Lading 字段说明

## 📡 基本信息

```
端点: POST https://api-dingdong.ems.com.vn/api/TrackTrace/Lading
认证: 仅需签名（无需Basic Auth）
```

## 📋 请求参数

```json
{
  "LadingCode": "EP493018285VN",
  "Signature": "SHA256(运单号大写 + API_KEY).upper()"
}
```

## 📦 返回字段（约15-20个）

基于代码分析和API设计，TrackTrace/Lading 返回以下字段：

### ✅ 核心字段

| 字段名 | 类型 | 说明 | 示例 |
|--------|------|------|------|
| **ID** | int | 订单ID | 12345678 |
| **Code** | string | 运单号 | "EP493018285VN" |
| **Value** | decimal | 包裹价值 | 500000 |
| **Fee** | decimal | 运费 | 25000 |
| **Weight** | decimal | 重量(kg) | 1.5 |
| **ReceiverMobile** | string | 收件人电话 | "0901234567" |
| **ReceiverName** | string | 收件人姓名 | "Nguyen Van A" |
| **ReceiverAddress** | string | 收件人地址 | "123 Le Loi..." |
| **SenderMobile** | string | 寄件人电话 | "0909876543" |
| **SenderName** | string | 寄件人姓名 | "Tran Van B" |
| **SenderAddress** | string | 寄件人地址 | "456 Nguyen Hue..." |
| **SignatureCapture** | string | 签收照片URL | "http://..." |
| **Status** | int | 状态码 | 3 |
| **StatusName** | string | 状态名称 | "Đã giao" |
| **CreateDate** | string | 创建时间 | "10/10/2025 10:00" |

### ⚠️ 与 Inquiry API 对比

| 特性 | TrackTrace/Lading | Delivery/Inquiry |
|------|-------------------|------------------|
| **字段数量** | 约15-20个 | 约30+个 |
| **认证方式** | 仅签名 | Basic Auth + 签名 |
| **时间信息** | ❌ 少 | ✅ IssueDate, LoadDate, DeliveryDate |
| **金额详情** | ❌ 只有总额 | ✅ 细分(代收、运费、增值费) |
| **状态详情** | ✅ 有 | ✅ 更详细 |
| **GPS信息** | ❌ 无 | ✅ 有坐标 |
| **签收照片** | ✅ 有 | ✅ 有 |
| **扩展信息** | ❌ 少 | ✅ 备注、原因、处理人等 |

## 🔍 示例响应

```json
{
  "Code": "00",
  "Message": "Lấy dữ liệu thành công",
  "Time": "16/10/2025 15:00:00",
  "Value": {
    "ID": 12345678,
    "Code": "EP493018285VN",
    "Value": 500000,
    "Fee": 25000,
    "Weight": 1.5,
    "ReceiverMobile": "0901234567",
    "ReceiverName": "Nguyen Van A",
    "ReceiverAddress": "123 Le Loi, District 1, Ho Chi Minh",
    "SenderMobile": "0909876543",
    "SenderName": "Tran Van B", 
    "SenderAddress": "456 Nguyen Hue, District 1, Ho Chi Minh",
    "SignatureCapture": "http://example.com/signature.jpg",
    "Status": 3,
    "StatusName": "Đã giao",
    "CreateDate": "10/10/2025 10:00:00"
  },
  "Data": null,
  "Signature": "...",
  "ListValue": null
}
```

## ❌ 缺少的字段（相比Inquiry）

TrackTrace/Lading **不返回**以下字段：

1. **时间详情**
   - ❌ IssueDate (发行日期)
   - ❌ LoadDate (装载日期)  
   - ❌ DeliveryDate (送达日期)

2. **金额细分**
   - ❌ CollectAmount (代收金额)
   - ❌ FeePPA (增值费)
   - ❌ FeeC (C类费用)
   - ❌ FeeShip (运费细分)

3. **扩展信息**
   - ❌ Note (备注)
   - ❌ ReasonName (原因)
   - ❌ HandlerName (处理人)
   - ❌ GPS坐标

4. **客户信息**
   - ❌ ReceiverIDCard (身份证)
   - ❌ 详细联系方式

## 💡 使用建议

### ❌ 不推荐使用

**原因**:
1. 字段比 Inquiry API 少 50%
2. 缺少关键时间信息
3. 金额信息不详细
4. 没有额外优势

### ✅ 推荐替代方案

**直接使用 Inquiry API**:
```python
# 不要用 TrackTrace/Lading
❌ response = requests.post(
    "https://api-dingdong.ems.com.vn/api/TrackTrace/Lading",
    json={"LadingCode": code, "Signature": sig}
)

# 改用 Delivery/Inquiry (更完整)
✅ response = requests.post(
    "https://api-dingdong.ems.com.vn/api/Delivery/Inquiry",
    headers={
        "Authorization": "Basic bG90dG5ldDpkbXM=",
        "APIKey": API_KEY,
        "Content-Type": "application/x-www-form-urlencoded"
    },
    data={"ParcelCode": code, "Signature": sig}
)
```

## 📊 实际测试结果

```
测试运单: EP493018285VN, EP493006857VN, EP493027413VN
结果: ❌ 全部返回 "Không tìm thấy dữ liệu" (找不到数据)
```

**可能原因**:
1. 这个API已经废弃或不再维护
2. 只支持特定类型的运单
3. 需要额外的认证参数
4. 数据已迁移到 Inquiry API

## 🎯 结论

**TrackTrace/Lading API**:
- ⭐☆☆☆☆ (1/5星) - 不推荐使用
- 字段少、数据不完整
- 已被 Inquiry API 完全替代
- `batch_query_full.py` 正确地没有使用它

**建议**: 
直接使用 `Delivery/Inquiry` API，它提供：
- ✅ 30+个完整字段
- ✅ 所有时间信息
- ✅ 详细金额分类
- ✅ GPS坐标
- ✅ 完整的扩展信息
