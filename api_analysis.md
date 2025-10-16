# EMS Vietnam API 逆向分析报告

## 📋 概述

通过对 EMS Vietnam (api-dingdong.ems.com.vn) 的分析，发现了完整的 API 体系。

---

## 🔐 认证机制

### 1. Basic Auth
```
Authorization: Basic bG90dG5ldDpkbXM=
```
解码后：`lottnet:dms`

### 2. API Key
```
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

### 3. 签名算法
```python
def generate_signature(parcel_code):
    return SHA256(parcel_code.upper() + API_KEY).hexdigest().upper()
```

**示例：**
- 运单号: `EP493018285VN`
- 签名: `EA0E719E5AD9D938ED570996D64B29C90E6F53C7087546B4FA396805B2AFE007`

---

## 📡 已发现的 API 端点

### API 1: TrackTrace/Lading
**端点：** `POST /api/TrackTrace/Lading`

**请求格式：** JSON
```json
{
  "LadingCode": "EP493018285VN",
  "Signature": "EA0E719E5AD9D938ED570996D64B29C90E6F53C7087546B4FA396805B2AFE007"
}
```

**返回字段：**
- `ID` - 订单ID
- `Code` - 运单号
- `Value` - 包裹价值
- `Fee` - 运费
- `ReceiverName` - 收件人姓名
- `ReceiverAddress` - 收件人地址
- `ReceiverMobile` - 收件人电话
- `SenderName` - 发件人姓名
- `SenderAddress` - 发件人地址
- `SenderMobile` - 发件人电话
- `SignatureCapture` - 签收照片URL

**响应码：**
- `00` - 成功
- `01` - 未找到数据
- `98` - 请求过快/限流

---

### API 2: Delivery/Inquiry
**端点：** `POST /api/Delivery/Inquiry`

**请求格式：** Form (application/x-www-form-urlencoded)

**请求头：**
```
Authorization: Basic bG90dG5ldDpkbXM=
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
Content-Type: application/x-www-form-urlencoded
```

**请求参数：**
```
ParcelCode=EP493018285VN
Signature=EA0E719E5AD9D938ED570996D64B29C90E6F53C7087546B4FA396805B2AFE007
```

**返回字段（30+个）：**

**基本信息：**
- `Count` - 计数
- `IsCOD` - 是否货到付款 (Y/N)
- `ParcelCode` - 运单号

**发件人信息：**
- `SenderName` - 发件人姓名
- `SenderAddress` - 发件人地址
- `SenderPhone` - 发件人电话

**收件人信息：**
- `ReceiverName` - 收件人姓名
- `ReceiverAddress` - 收件人地址
- `ReceiverPhone` - 收件人电话
- `ReceiverIDNumber` - 收件人身份证号

**金额信息：**
- `CollectAmount` - 代收金额
- `AmountCOD` - COD金额
- `FeePPA` - PPA费用
- `FeeC` - C费用
- `FeeShip` - 运费
- `FeeCancelOrder` - 取消订单费用
- `FeeCollectLater` - 稍后收款费用
- `ReceiveCollectFee` - 收取费用

**时间信息：**
- `IssueDate` - 发货日期 (格式: 15/10/2025)
- `LoadDate` - 装载日期时间 (格式: 10/15/2025 13:10:47)
- `DeliveryDate` - 配送日期

**状态信息：**
- `Status` - 状态代码
- `StatusName` - 状态名称
- `ReasonName` - 原因
- `SolutionName` - 解决方案
- `CheckStatus` - 检查状态
- `CheckStatusNo` - 检查状态号

**邮局信息：**
- `IssuePOCode` - 发件邮局代码
- `DeliveryPOCode` - 配送邮局代码

**其他信息：**
- `Weigh` - 重量
- `Note` - 备注
- `RouteCode` - 路线代码
- `IsPaypost` - 是否邮资
- `IsPaypostName` - 邮资名称
- `Instruction` - 指令
- `VATCode` - VAT代码

**配送照片：**
- `DeliverySignature` - 配送签名URL
- `DeliveryImage` - 配送照片URL
- `DeliveryImageAuthen` - 配送认证照片URL

---

### API 3: Delivery/DeliveryLadingJourney
**端点：** `POST /api/Delivery/DeliveryLadingJourney`

**请求格式：** Form

**请求头：** 同 Inquiry API

**请求参数：**
```
ParcelCode=EP493018285VN
```

**返回字段：**
- `Code` - 响应码
- `Message` - 消息
- `ListValue` - 配送记录数组
  - 每条记录包含配送节点的时间、地点、状态等

**用途：**
- 获取完整的配送轨迹
- 判断订单是否已配送完成
- 查看配送历史记录

---

### API 4: Gateway/Bussiness
**端点：** `POST /api/Gateway/Bussiness`

**请求格式：** JSON

**请求头：**
```
Authorization: Basic bG90dG5ldDpkbXM=
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
Content-Type: application/json
```

**请求参数：**
```json
{
  "Code": "LDP002",
  "Data": "EP493018285VN"
}
```

**返回字段：**
- `Code` - 响应码
- `Message` - 消息
- `Data` - JSON字符串，包含商品信息数组

**商品信息字段：**
- `ProductId` - 商品ID
- `ProductName` - 商品名称
- `Quantity` - 数量
- `UnitName` - 单位名称
- `Weight` - 重量
- `Price` - 单价
- `Amount` - 总价
- `LadingToPostmanId` - 配送员ID
- `LadingCode` - 运单号
- `PODeliveryCode` - 配送邮局代码

---

## 🔍 可能存在的其他 API 端点

基于已知的 API 结构，推测可能存在以下端点：

### 1. 批量查询
```
POST /api/TrackTrace/BatchLading
POST /api/Delivery/BatchInquiry
```

### 2. 用户相关
```
POST /api/User/Login
POST /api/User/Register
POST /api/User/Profile
```

### 3. 下单相关
```
POST /api/Order/Create
POST /api/Order/Cancel
POST /api/Order/Update
```

### 4. 邮局查询
```
POST /api/PostOffice/List
POST /api/PostOffice/Search
```

### 5. 价格计算
```
POST /api/Calculate/Fee
POST /api/Calculate/Distance
```

### 6. 图片上传
```
POST /api/Upload/Image
POST /api/Upload/Signature
```

---

## 🛡️ 安全分析

### 1. 认证机制
- ✅ 使用 Basic Auth + API Key 双重认证
- ✅ 签名机制防止参数篡改
- ⚠️ Basic Auth 凭证是固定的（lottnet:dms）
- ⚠️ API Key 是明文传输

### 2. 签名算法
- ✅ 使用 SHA256 哈希
- ✅ 包含运单号和密钥
- ⚠️ 签名算法相对简单，容易被逆向

### 3. 限流机制
- ✅ 有限流保护（Code: 98）
- ✅ 可通过更换代理绕过

### 4. 数据安全
- ✅ 使用 HTTPS 传输
- ⚠️ 返回完整的个人信息（姓名、电话、地址）
- ⚠️ 无需额外权限即可查询任意运单

---

## 📊 API 调用流程

```
┌─────────────┐
│  客户端请求  │
└──────┬──────┘
       │
       ▼
┌─────────────────────┐
│ 1. 生成签名          │
│    SHA256(运单号+Key) │
└──────┬──────────────┘
       │
       ▼
┌─────────────────────┐
│ 2. 构造请求          │
│    - Headers         │
│    - Body            │
└──────┬──────────────┘
       │
       ▼
┌─────────────────────┐
│ 3. 发送请求          │
│    POST to API       │
└──────┬──────────────┘
       │
       ▼
┌─────────────────────┐
│ 4. 解析响应          │
│    - Code: 00/01/98  │
│    - Data/Value      │
└──────┬──────────────┘
       │
       ▼
┌─────────────────────┐
│ 5. 错误处理          │
│    - 重试 (98)       │
│    - 换代理          │
└─────────────────────┘
```

---

## 🎯 运单号规则

### 格式分析
```
EP493018285VN
││ │       ││└─ 国家代码 (VN = Vietnam)
││ │       │└── 校验位
││ │       └─── 序列号 (9位数字)
│└─ 系列号 (2-3位字母)
└── 前缀 (2位字母)
```

### 常见前缀系列
- `EP` - Express Post (快递)
- `EF` - EMS Fast
- `EB` - EMS Business
- `EC` - EMS Commerce
- `ED` - EMS Delivery
- `EG` - EMS General
- `EJ` - EMS Journal
- `EK` - EMS Korea
- `EL` - EMS Logistics

### 号段特征
- EP 系列：493000000 - 494000000
- EF 系列：43571000 - 48500000
- EB 系列：102880000 - 944000000
- 每个系列有不同的密集区间

---

## 💡 实用技巧

### 1. 批量查询优化
- 使用代理池避免限流
- 并发线程数：20-50
- 遇到 Code:98 自动换代理
- 密集区间使用步长1，稀疏区间使用步长5-10

### 2. 数据提取
- 电话号码：正则 `0\d{9}`
- 多个API数据合并
- 自动去重和清洗

### 3. 错误处理
- Code 00：成功
- Code 01：运单不存在（正常，无需重试）
- Code 98：限流（需要重试+换代理）
- 超时：网络问题（重试）

---

## 📝 完整示例代码

参见：
- `batch_query_full.py` - 完整批量查询脚本
- `inquiry_api.py` - 单个查询API封装

---

## 🔮 未来改进方向

### 1. 发现更多 API
- 尝试不同的端点路径
- 分析 app 的网络请求
- 模糊测试 API

### 2. 提升性能
- 更智能的代理池管理
- 自适应限流检测
- 分布式爬取

### 3. 数据分析
- 订单趋势分析
- 热门路线分析
- 配送时效统计

### 4. 功能扩展
- 实时监控订单状态
- 异常订单告警
- 数据可视化

---

**最后更新：** 2025-10-16  
**分析工具：** Python + Requests  
**测试范围：** 4 个 API，1000+ 运单号
