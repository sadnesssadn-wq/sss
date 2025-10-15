# DingDong API 完整扫描工具

## 📋 概述

这是一个增强版的DingDong订单扫描工具，**同时调用3个API**获取运单的**所有完整字段**。

### ✨ 主要功能

- ✅ **同时调用3个API**，获取完整信息
- ✅ **42+ 个字段**全部保存
- ✅ **只扫描今天发件**的订单
- ✅ **只保存未签收**的订单
- ✅ 支持 **100个代理池** 高速扫描
- ✅ 输出 **CSV + JSON** 双格式

---

## 🔌 调用的API

### API 1: `api/Delivery/Inquiry` ⭐ 核心
- **字段数**: 38个
- **作用**: 获取运单的所有基础信息
- **包含内容**:
  - 发件人/收件人完整信息（姓名、电话、地址、身份证）
  - 所有金额信息（COD、运费、各项费用）
  - 日期信息（发件、装载、配送日期）
  - 配送信息（邮局、路线、状态）
  - 配送证据（签名照片、现场照片URL）

### API 2: `api/Delivery/DeliveryLadingJourney` 🚚
- **字段数**: 列表类型（多条记录）
- **作用**: 获取配送轨迹
- **包含内容**:
  - 配送历史记录（时间、地点、状态）
  - 判断是否已签收

### API 3: `api/Gateway/Bussiness` 📦
- **字段数**: 列表类型（多个商品）
- **作用**: 获取商品信息
- **包含内容**:
  - 商品名称、数量、单位
  - 重量、单价、总金额

---

## 📊 获取的完整字段（42+个）

### 基础信息（5个）
```
ParcelCode        运单号
Weigh            重量
Status           状态代码
StatusName       状态名称
IsCOD            是否COD
```

### 发件人信息（3个）
```
SenderName       发件人姓名
SenderPhone      发件人电话
SenderAddress    发件人地址
```

### 收件人信息（4个）
```
ReceiverName          收件人姓名
ReceiverPhone         收件人电话
ReceiverAddress       收件人地址
ReceiverIDNumber      收件人身份证号
```

### 金额信息（7个）💰
```
CollectAmount         代收金额（COD）
AmountCOD            COD金额
FeeShip              运费
FeePPA               PPA费用
FeeC                 C费用
FeeCancelOrder       取消订单费
FeeCollectLater      稍后收款费
```

### 日期信息（3个）📅
```
IssueDate            发件日期
LoadDate             装载日期
DeliveryDate         配送日期
```

### 配送信息（6个）🚚
```
IssuePOCode          发件邮局代码
DeliveryPOCode       配送邮局代码
RouteCode            路线代码
DeliverySignature    配送签名照片URL
DeliveryImage        配送现场照片URL
DeliveryImageAuthen  配送认证照片URL
```

### 其他字段（10个）
```
Note                 备注
Instruction          指令
VATCode              VAT代码
ReasonName           原因
SolutionName         解决方案
IsPaypostName        是否邮资名称
CheckStatus          检查状态
CheckStatusNo        检查状态号
IsPaypost            是否邮资
ReceiveCollectFee    收取费用
Count                计数
```

### 扩展字段（3+个）
```
is_delivered         是否已配送（来自API 2）
journey_count        配送记录数（来自API 2）
journey_records[]    配送轨迹列表（来自API 2）
product_count        商品数量（来自API 3）
product_name         商品名称（来自API 3）
products[]           商品列表（来自API 3）
```

---

## 🚀 使用方法

### 1. 快速测试（推荐先运行）

```bash
python3 test_scan_full_api.py
```

**测试版特点**:
- ✅ 小范围扫描（100个号段）
- ✅ 只找10个订单
- ✅ 详细显示每个API的调用过程
- ✅ 快速验证功能是否正常

**预计时间**: 1-2分钟

---

### 2. 正式扫描

```bash
python3 scan_today_full_api.py
```

**正式版特点**:
- 🎯 目标：10,000个订单
- 🔄 30线程并发
- 🌐 100个代理池
- ⚡ 高速扫描

**预计时间**: 30-60分钟（取决于网络和订单密度）

---

## 📁 输出文件

### CSV 文件（适合Excel分析）
```
today_undelivered_full_20251015_143022.csv
```
- ✅ 包含所有42个扁平化字段
- ✅ UTF-8 BOM编码（Excel直接打开不乱码）
- ✅ 每列对应一个字段

**CSV字段顺序**:
```
运单号, 发件日期, 装载日期, 配送日期,
发件人, 发件电话, 发件地址,
收件人, 收件电话, 收件地址, 收件人身份证,
COD代收金额, COD金额, 运费, PPA费用, C费用, 取消费, 稍后收款费,
重量, 状态代码, 状态名称,
发件邮局, 配送邮局, 路线代码,
是否COD, 是否邮资, 邮资名称,
配送签名URL, 配送照片URL, 配送认证照片URL,
备注, 指令, VAT代码, 原因, 解决方案,
检查状态, 检查状态号, 计数,
是否已配送, 配送记录数,
商品数量, 商品名称,
收取费用
```

---

### JSON 文件（适合程序分析）
```json
{
  "scan_date": "15/10/2025",
  "total_found": 156,
  "total_tested": 5000,
  "success_rate": 3.12,
  "orders": [
    {
      "tracking": "EF043571075VN",
      "SenderName": "Viên Tăng Cân Hoa Bảo",
      "ReceiverName": "Hoàng thị Thủy",
      "CollectAmount": 1500000,
      "is_delivered": false,
      "journey_records": [],
      "products": [
        {
          "ProductName": "***",
          "Quantity": 0
        }
      ],
      ... 所有其他字段
    }
  ]
}
```

**JSON优势**:
- ✅ 包含嵌套数据（配送记录列表、商品列表）
- ✅ 完整的统计信息
- ✅ 适合程序进一步处理

---

## ⚙️ 配置说明

### 扫描区间（scan_today_full_api.py）
```python
SCAN_RANGES = [
    ('EP', 493500000, 494500000, 10),   # EP系列，步长10
    ('EB', 943000000, 945000000, 20),   # EB系列，步长20
    ('EC', 149780000, 149790000, 5),    # EC系列，步长5
    ('EF', 48000000, 49000000, 50),     # EF系列，步长50
]
```

### 并发配置
```python
TARGET = 10000              # 目标订单数
max_workers = 30           # 并发线程数
PROXIES数量 = 100          # 代理池大小
```

### 过滤条件
```python
✅ 只保存今天发件的订单（通过 IssueDate 或 LoadDate 判断）
✅ 只保存未签收的订单（通过 API 2 判断）
```

---

## 📈 性能参数

### 测试版
- 扫描范围: 100个号段
- 目标: 10个订单
- 线程数: 5
- 速度: ~10-20次/秒
- 耗时: 1-2分钟

### 正式版
- 扫描范围: 4个系列的密集区间
- 目标: 10,000个订单
- 线程数: 30
- 代理池: 100个
- 速度: ~50-100次/秒
- 耗时: 30-60分钟

---

## 🛡️ 安全说明

### API限流处理
脚本会自动检测API限流（Code 98/429），并：
- ✅ 自动切换代理
- ✅ 重试请求
- ✅ 避免IP被封

### 数据隐私
- ⚠️ 获取的数据包含**真实的客户隐私信息**
- ⚠️ 请妥善保管输出文件
- ⚠️ 不要泄露个人信息

---

## 🎯 应用场景

### 1. 商业分析
- 统计某商家的日订单量
- 分析客单价分布
- 区域配送分析

### 2. 数据挖掘
- 客户数据库构建
- 物流时效分析
- 商品热度分析

### 3. 运营监控
- 未签收订单跟踪
- 配送异常分析
- 客服数据支持

---

## ❓ 常见问题

### Q1: 为什么有些字段是空的？
A: 部分字段只有在特定条件下才有值，例如：
- `IssueDate` 可能为空（老订单）
- `product_name` 可能是 `***`（商家隐藏）
- `journey_records` 为空（未配送）

### Q2: 如何只扫描特定系列？
A: 修改 `SCAN_RANGES`，删除不需要的系列即可。

### Q3: 速度太慢怎么办？
A: 
- 增加 `max_workers`（线程数）
- 增加步长（step）
- 缩小扫描区间

### Q4: 如何获取已签收的订单？
A: 修改 `check_order_full()` 函数：
```python
# 注释掉这一行
# if not order['is_delivered']:

# 改为保存所有订单
state['orders'].append(order)
```

---

## 📝 更新日志

### v2.0 (2025-10-15)
- ✅ 同时调用3个API
- ✅ 获取42+个完整字段
- ✅ 支持配送轨迹
- ✅ 支持商品信息
- ✅ CSV + JSON双格式输出

### v1.0
- ✅ 基础版本
- ✅ 仅调用2个API
- ✅ 基本字段输出

---

## 📧 技术支持

如有问题，请检查：
1. ✅ 代理是否正常
2. ✅ 网络连接是否稳定
3. ✅ API密钥是否有效
4. ✅ 扫描区间是否有订单

---

## ⚖️ 免责声明

本工具仅供学习和研究使用。使用者需遵守相关法律法规，不得用于非法用途。对于使用本工具产生的任何后果，开发者概不负责。

---

**Happy Scanning! 🚀**
