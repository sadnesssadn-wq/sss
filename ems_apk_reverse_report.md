# 🔍 EMS Portal APK 深度逆向分析报告

## 📱 基本信息
- **包名**: com.emsportal
- **文件大小**: 11.7MB (11,720,930 bytes)
- **编译日期**: 2023-03-24
- **Min SDK**: Android 5.0+
- **Smali类数**: 7,481个

## 🌐 API架构分析

### 主API域名
- **主域名**: `http://ws.ems.com.vn`
- **认证方式**: Bearer Token (JWT)
- **网络库**: Android Volley

### 认证机制

```java
// HTTP请求头构建（c/b/t/b$c.smali）
headers.put("Authorization", "Bearer " + getToken());
headers.put("Content-Type", "application/json;charset=UTF-8");

// Token获取（b/u/a.smali）  
String token = SharedPreferences.get("PREF_TOKEN_USER");
```

## 📍 完整API端点列表

### 1. 认证相关
```
POST /auth/login                                  # 登录
POST /api/v1/forgot-password                      # 忘记密码
GET  /api/v1/auth/logout                          # 登出
POST /rc/send-confirmation-code                   # 发送验证码
POST /api/v1/merchants/update/password            # 修改密码
POST /api/v1/merchants/update-token               # 更新Token
POST /api/v1/merchants/update                     # 更新商家信息
```

### 2. 订单管理
```
GET  /api/v1/orders/list                          # 订单列表
POST /api/v1/orders/create-v2                     # 创建订单V2
GET  /api/v1/orders/tracking/{tracking_number}    # 订单追踪
GET  /api/v1/orders/order-cod                     # COD订单
POST /api/v1/orders/quotes                        # 订单报价
GET  /api/v1/orders/summary                       # 订单摘要
POST /api/v1/orders/accept                        # 接受订单
POST /api/v1/orders/manual-cancel-order           # 手动取消订单
GET  /api/v1/orders/count-group                   # 订单计数分组
GET  /api/v1/orders/cod-by-date                   # 按日期COD
POST /api/v1/orders/rc-create                     # RC创建
POST /api/v1/orders/rc-edit                       # RC编辑
GET  /api/v1/orders/rc-list                       # RC列表
POST /api/v1/orders/suggest-address               # 地址建议
POST /api/v1/orders/suggest-item                  # 商品建议
POST //orders/manual-cancel-order                 # 手动取消(旧版)
```

### 3. 国际订单
```
GET  /api/v1/order-intl/list                      # 国际订单列表
POST /api/v1/order-intl/create                    # 创建国际订单
GET  /api/v1/order-intl/tracking/{number}         # 国际订单追踪
POST /api/v1/order-intl/calculate                 # 费用计算
GET  /api/v1/order-intl/count-group               # 计数分组
GET  /api/v1/order-intl/service                   # 服务列表
GET  /api/v1/order-intl/country/{code}            # 国家信息
GET  /api/v1/order-intl/item-type                 # 商品类型
GET  /api/v1/order-intl/hscode-suggestion         # HS编码建议
GET  /api/v1/order-intl/address-suggestion        # 地址建议
```

### 4. Grab配送集成
```
POST /api/v1/grab/deliveries                      # 创建Grab配送
GET  /api/v1/grab/list                            # Grab配送列表
POST /api/v1/grab/quotations                      # Grab报价
POST /api/v1/grab/cancel/{id}                     # 取消Grab配送
GET  /api/v1/grab/service                         # Grab服务
GET  /api/v1/grab/status                          # Grab状态
POST /api/v1/grab/suggest-address                 # 地址建议
```

### 5. 地址服务
```
GET /api/v1/address/province-and-district         # 省市列表
GET /api/v1/address/district                      # 区县列表
GET /api/v1/address/ward                          # 街道列表
GET /api/v1/address/search                        # 地址搜索
GET /api/v1/address/postal                        # 邮编查询
GET /api/v1/address/province-district-ward        # 省市区联动
```

### 6. 仓库管理
```
GET  /api/v1/inventory/list                       # 仓库列表
POST /api/v1/inventory/create                     # 创建仓库
POST /api/v1/inventory/update                     # 更新仓库
```

### 7. 超速快递（BE）
```
GET  /api/v1/be/list-address                      # 地址列表
POST /api/v1/be/orders/create                     # 创建订单
GET  /api/v1/be/orders/list                       # 订单列表
POST /api/v1/be/orders/cancel                     # 取消订单
POST /api/v1/be/orders/estimate-fee               # 估算费用
GET  /api/v1/be/config/list-status                # 状态配置
```

### 8. 客服工单
```
GET  /api/v1/tickets/list                         # 工单列表
POST /api/v1/tickets/create                       # 创建工单
POST /api/v1/tickets/update                       # 更新工单
GET  /api/v1/tickets/count-group                  # 工单计数
GET  /api/v1/tickets/case                         # 工单详情
```

### 9. 配置与报表
```
GET /api/v1/config/service                        # 服务配置
GET /api/v1/metadata/vas                          # VAS元数据
GET /api/v1/reports/dashboard                     # 报表仪表盘
```

### 10. 通知管理
```
GET  /api/v1/notifications/list                   # 通知列表
POST /api/v1/notifications/update                 # 更新通知状态
POST /api/v1/merchants/update-notify              # 更新通知设置
GET  /api/v1/merchants/get-list-notify            # 获取通知列表
```

## 🔐 安全分析

### 1. 认证流程
```
1. POST /auth/login {username, password}
   ↓
2. Response: {token: "eyJhbGc..."}
   ↓
3. Save to SharedPreferences["PREF_TOKEN_USER"]
   ↓
4. 后续请求 Header: Authorization: Bearer {token}
```

### 2. Token存储
- **存储方式**: SharedPreferences (明文存储)
- **Key名称**: `PREF_TOKEN_USER`
- **安全风险**: ⚠️ Token未加密，Root设备可读取

### 3. 网络请求类
- **基础类**: `c.b.t.b`
- **Volley封装**: `c.b.t.b$c extends com.android.volley.Request`
- **请求方法**: 
  - `a()` - GET请求
  - `d()` - POST请求（HashMap参数）
  - `e()` - POST请求（JSON参数）

### 4. 请求头构建（关键代码）
```smali
# c/b/t/b$c.smali - getHeaders()方法

new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

# 添加Authorization头
const-string v2, "Bearer "
invoke-static {}, Lb/u/a;->G()Ljava/lang/String;  # 获取Token
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

const-string v2, "Authorization"
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

# 如果是JSON请求，添加Content-Type
const-string v1, "Content-Type"
const-string v2, "application/json;charset=UTF-8"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
```

## 📊 对比分析：你的API vs APK的API

| 项目 | 你的脚本 (api-dingdong) | APK (ws.ems.com.vn) |
|------|------------------------|---------------------|
| API域名 | `api-dingdong.ems.com.vn` | `ws.ems.com.vn` |
| 认证方式 | Basic Auth + APIKey | Bearer Token (JWT) |
| API Key | `34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A` | 动态JWT Token |
| Basic Auth | `bG90dG5ldDpkbXM=` | 无 |
| 签名方式 | SHA256(tracking + key) | 无 (JWT已包含签名) |
| 查询端点 | `/api/Delivery/Inquiry` | `/api/v1/orders/tracking/{id}` |
| 需要登录 | ❌ 否 | ✅ 是 |
| 用途 | 公共查询API | 商家管理API |

### 结论
**你使用的是完全不同的API系统！**

- **api-dingdong.ems.com.vn**:
  - 公共查询API
  - 无需登录
  - 固定APIKey
  - 可能是内部工具或物流查询系统
  
- **ws.ems.com.vn**:
  - 商家门户API
  - 需要登录获取Token
  - 完整的订单管理功能
  - 这个APK使用的API

## 🎯 关键发现

### 1. 为什么APK中找不到你的APIKey？
因为**这不是同一个系统**！

- 你的`api-dingdong` API可能来自：
  1. EMS内部查询工具
  2. 物流司机/快递员APP
  3. EMS官网的查询接口
  4. 第三方集成的查询API

### 2. 如何找到api-dingdong的源头？
需要逆向其他相关APP：

**可能的APP：**
```
1. EMS Vietnam (com.ems.vn) - 用户查询APP
2. EMS Tracking (com.ems.tracking) - 物流追踪APP  
3. EMS Driver (com.ems.driver) - 司机APP
4. 或者直接分析 ems.com.vn 网站的JavaScript
```

### 3. 提取的资源

**Google Maps API Keys:**
```
AIzaSyD6C4LdceVok8mCH-4ykyoTLBKHv2hrtbc
AIzaSyDTOEeScCiXjH33IXBC_fKzTP7tX3aZpOY
```

**Firebase配置:**
```
https://ems-khl-app-notify.firebaseio.com
```

## 💡 下一步建议

### 方案1: 继续查找api-dingdong的来源
```bash
# 1. 搜索其他EMS相关APK
apkpure.com: "EMS Vietnam"
apkmirror.com: "EMS Tracking"

# 2. 分析EMS官网
curl https://ems.com.vn/tra-cuu-hanh-trinh-buu-pham
# 查看JS文件中的API调用

# 3. 搜索GitHub
github.com: "api-dingdong.ems.com.vn"
github.com: "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A"
```

### 方案2: 使用商家API (ws.ems.com.vn)
```python
# 1. 登录获取Token
response = requests.post('http://ws.ems.com.vn/auth/login', {
    'username': 'your_merchant_account',
    'password': 'your_password'
})
token = response.json()['token']

# 2. 查询订单
headers = {
    'Authorization': f'Bearer {token}',
    'Content-Type': 'application/json'
}
response = requests.get(
    f'http://ws.ems.com.vn/api/v1/orders/tracking/{tracking_number}',
    headers=headers
)
```

### 方案3: 动态分析（最彻底）
```bash
# 安装Frida
pip install frida-tools

# Hook网络请求
frida -U -f com.emsportal -l hook_network.js

# 实时查看所有API调用和参数
```

## 📦 反编译文件结构

```
ems_decompiled/
├── AndroidManifest.xml
├── smali/
│   ├── com/emsportal/          # 主应用代码
│   │   ├── MainActivity.smali
│   │   ├── user/               # 用户相关
│   │   ├── express/            # 快递
│   │   ├── international/      # 国际
│   │   ├── instant/            # 即时
│   │   ├── grab/               # Grab集成
│   │   └── base/               # 基础类
│   ├── c/b/                    # 自定义库
│   │   ├── t/b.smali           # 网络请求管理
│   │   ├── k/a.smali           # 工具类
│   │   └── m/                  # 模型类
│   └── b/u/a.smali             # SharedPreferences管理
├── res/
│   └── values/
│       └── strings.xml         # 字符串资源
└── assets/

总计：7,481个smali文件
```

## 🔍 进一步分析工具

### 已安装的逆向工具
```bash
✅ radare2 (5.9.8) - 二进制分析
✅ apktool - APK反编译
✅ binwalk - 固件分析
✅ strings - 字符串提取
✅ objdump - 反汇编
✅ strace - 系统调用追踪
✅ ltrace - 库函数追踪

Python库:
✅ capstone - 反汇编引擎
✅ keystone - 汇编引擎
✅ unicorn - CPU模拟器
✅ pefile - PE文件分析
```

### Frida Hook示例
```javascript
// hook_ems_api.js
Java.perform(function() {
    // Hook网络请求类
    var RequestClass = Java.use("c.b.t.b$c");
    
    // Hook getHeaders方法
    RequestClass.getHeaders.implementation = function() {
        var headers = this.getHeaders();
        console.log("[*] Request Headers:");
        console.log(JSON.stringify(headers));
        return headers;
    };
    
    // Hook getBody方法
    RequestClass.getBody.implementation = function() {
        var body = this.getBody();
        console.log("[*] Request Body:");
        console.log(new String(body));
        return body;
    };
});
```

## 📝 总结

1. ✅ **成功反编译** EMS Portal APK
2. ✅ **提取了完整API列表** (60+ 端点)
3. ✅ **分析了认证机制** (Bearer Token + JWT)
4. ✅ **定位了网络请求核心类** (c.b.t.b)
5. ❌ **未找到api-dingdong相关信息** (不是同一系统)

### 你的API来源仍是谜团 🤔
需要进一步查找使用`api-dingdong.ems.com.vn`的客户端！
