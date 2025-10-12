# DingDong APP 完整API文档

## 🔑 认证信息

### 密钥
```
PRIVATE_KEY = 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

### 签名算法
```python
import hashlib

code = "EA775900041VN"
signature = hashlib.sha256((code.upper() + PRIVATE_KEY).encode()).hexdigest().upper()
```

### 请求格式
```json
POST https://api-dingdong.ems.com.vn/api/TrackTrace/Lading

Headers:
{
  "Content-Type": "application/json"
}

Body:
{
  "LadingCode": "EA775900041VN",
  "Signature": "EFB45DB554BA9AEF545156AA5C7636897D05EB5FFE8E6EC80894E90592925A47"
}
```

## 📡 所有API端点

### ✅ 已验证可用

#### 1. TrackTrace/Lading - 运单追踪
```
POST /api/TrackTrace/Lading

参数:
  - LadingCode: 运单号
  - Signature: SHA256(CODE + KEY)

返回:
  - Code: 00 (成功) / 01 (不存在) / 96 (签名错误) / 98 (数据错误)
  - Value: 运单详细信息（寄件人、收件人、地址、电话等）
```

### ⚠️ 需要特定参数或权限

#### 2. Authorized - 认证相关
```
/api/Authorized/Login        - 登录
/api/Authorized/Validation   - 验证
/api/Authorized/Active       - 激活
```

#### 3. Delivery - 配送相关
```
/api/Delivery/CheckLadingCode      - 检查运单号
/api/Delivery/Inquiry              - 查询
/api/Delivery/InquiryAmount        - 查询金额
/api/Delivery/DeliveryPostman      - 邮递员配送 (系统错误99)
/api/Delivery/DeliveryStatistic    - 配送统计
/api/Delivery/DeliveryPartial      - 部分配送
/api/Delivery/Payment              - 支付
/api/Delivery/PaymentPaypost       - Paypost支付
/api/Delivery/PushToPNS            - 推送到PNS
/api/Delivery/ReceiverVpostcode    - 接收Vpost码
/api/Delivery/UpdateMobile         - 更新手机号
/api/Delivery/AddSuport            - 添加支持
/api/Delivery/GetPaypostError      - 获取Paypost错误
```

#### 4. Collect - 收集相关
```
/api/Collect/SearchOrderPostman    - 搜索邮递员订单
/api/Collect/SearchConfirmArrved   - 搜索确认到达
/api/Collect/CollectOrderPostman   - 收集邮递员订单
/api/Collect/ConfirmArrived        - 确认到达
/api/Collect/ConfirmOrderPostman   - 确认邮递员订单
```

#### 5. CallCenter - 呼叫中心
```
/api/CallCenter/Search       - 搜索 (系统错误99)
/api/CallCenter/AddNew       - 添加新记录
/api/CallCenter/CallForward  - 呼叫转移
```

#### 6. BD13 - BD13系统
```
/api/BD13/Search    - 搜索 (系统错误99)
/api/BD13/AddNew    - 添加新记录
```

#### 7. Dictionary - 字典
```
/api/Dictionary/GetReasons       - 获取原因列表
/api/Dictionary/GetSolutions     - 获取解决方案列表
/api/Dictionary/GetSupportType   - 获取支持类型
```

#### 8. Gateway - 网关
```
/api/Gateway/Bussiness  - 业务网关
```

#### 9. Handle - 处理
```
/api/Handle/UploadImage  - 上传图片
```

#### 10. VietMap - 地图
```
/api/VietMap/Decode    - 解码
/api/VietMap/Encode    - 编码
/api/VietMap/Reverse   - 反向查询
/api/VietMap/Route_V2  - 路线V2
/api/VietMap/Search    - 搜索
```

## 🎯 状态码说明

```
Code 00: 成功
Code 01: 运单不存在
Code 96: 签名错误
Code 98: 数据处理错误
Code 99: 系统错误
```

## 💡 可能的其他认证方式

1. **Bearer Token** - 某些端点可能需要JWT
2. **Session Cookie** - Web端点可能需要
3. **多重签名** - 某些端点可能需要额外的签名参数

## 📋 已知有效的运单号范围

```
EA77590xxxx - 部分有效
已确认有效: EA775900007VN, EA775900038VN, EA775900041VN, 
            EA775900055VN, EA775900069VN, EA775900090VN
```
