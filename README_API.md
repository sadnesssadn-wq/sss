# EMS Delivery Inquiry API 使用说明

## 概述

这个项目包含了调用 EMS Delivery Inquiry API 来获取运单时间信息的Python脚本。

## 文件说明

- `inquiry_api.py` - 主要的API调用脚本
- `test_api.py` - API测试脚本
- `requirements.txt` - Python依赖包列表

## API 信息

### Inquiry API (获取时间信息)

- **URL**: https://api-dingdong.ems.com.vn/api/Delivery/Inquiry
- **方法**: POST
- **Content-Type**: application/x-www-form-urlencoded

### 请求头

```
Authorization: Basic bG90dG5ldDpkbXM=
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
Content-Type: application/x-www-form-urlencoded
```

### 请求参数

- `ParcelCode`: 运单号 (例如: EP493018285VN)
- `Signature`: SHA256签名

### 返回的时间字段

- `IssueDate`: 发行日期 (格式: 15/10/2025)
- `LoadDate`: 装载日期时间 (格式: 10/15/2025 13:10:47)

## 安装依赖

```bash
pip install -r requirements.txt
```

## 使用方法

### 方法1: 运行交互式脚本

```bash
python inquiry_api.py
```

这将启动交互式界面，您可以输入运单号进行查询。

### 方法2: 运行测试脚本

```bash
python test_api.py
```

这将使用默认的运单号 `EP493018285VN` 进行测试。

### 方法3: 在代码中使用

```python
from inquiry_api import EMSInquiryAPI

# 创建API客户端
api = EMSInquiryAPI()

# 查询运单
parcel_code = "EP493018285VN"
result = api.inquiry(parcel_code)

# 解析时间信息
if result:
    time_info = api.parse_time_info(result)
    print(f"IssueDate: {time_info['IssueDate']}")
    print(f"LoadDate: {time_info['LoadDate']}")
```

## 注意事项

1. **签名算法**: ✅ 已确认！签名算法为 `SHA256(运单号 + APIKey)` 并转为大写。

2. **网络连接**: 确保您的网络可以访问 `api-dingdong.ems.com.vn`

3. **API密钥**: 代码中使用的是您提供的API密钥，如果失效请更新。

## 签名算法说明

✅ **已确认的签名算法（当前使用）**:

```python
def generate_signature(self, parcel_code):
    api_key = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
    # 签名 = SHA256(运单号 + APIKey) 转大写
    signature = hashlib.sha256((parcel_code + api_key).encode('utf-8')).hexdigest().upper()
    return signature
```

**示例**:
- 运单号: `EP493018285VN`
- APIKey: `34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A`
- 签名: `EA0E719E5AD9D938ED570996D64B29C90E6F53C7087546B4FA396805B2AFE007`

## 故障排除

如果API调用失败，请检查：

1. 网络连接是否正常
2. 运单号是否正确
3. API密钥是否有效
4. 签名算法是否正确
5. API服务是否可用

## 示例输出

```
==============================================================
EMS Delivery Inquiry API - 时间信息查询
==============================================================

请输入运单号 (按回车使用默认: EP493018285VN): 

正在查询运单: EP493018285VN
签名: [生成的SHA256签名]
请求URL: https://api-dingdong.ems.com.vn/api/Delivery/Inquiry
------------------------------------------------------------
响应状态码: 200

==============================================================
时间信息:
==============================================================
IssueDate (发行日期): 15/10/2025
LoadDate (装载日期): 10/15/2025 13:10:47

提取的时间字段:
  IssueDate: 15/10/2025
  LoadDate: 10/15/2025 13:10:47

==============================================================
查询完成！
==============================================================
```
