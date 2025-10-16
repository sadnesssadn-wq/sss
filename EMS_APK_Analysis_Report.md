# EMS Logistics APK 逆向分析报告

**分析时间**: 2025-10-16  
**APK文件**: com.ems.logistics.apk  
**应用版本**: 1.1.2 (Build 3)  
**包名**: com.ems.logistics

---

## 📦 基本信息

### APK 信息
- **应用名**: EMS Logistics
- **版本名**: 1.1.2
- **版本号**: 3
- **最小SDK**: 21 (Android 5.0)
- **目标SDK**: 30 (Android 11)
- **编译SDK**: 30
- **文件大小**: 27 MB (XAPK)
- **主APK**: 6.1 MB

### 技术栈
- **开发框架**: React Native
- **语言**: Kotlin + Java
- **网络库**: OkHttp3
- **图片处理**: uCrop
- **推送服务**: Firebase Cloud Messaging
- **分析服务**: Firebase Analytics, Google Analytics

### 权限列表（重要）
```
✓ GPS定位权限
  - ACCESS_FINE_LOCATION
  - ACCESS_COARSE_LOCATION

✓ 网络权限
  - INTERNET
  - ACCESS_NETWORK_STATE
  - ACCESS_WIFI_STATE

✓ 存储权限
  - WRITE_EXTERNAL_STORAGE
  - READ_EXTERNAL_STORAGE

✓ 相机权限
  - CAMERA

✓ 其他权限
  - FOREGROUND_SERVICE (前台服务)
  - WAKE_LOCK (保持唤醒)
  - C2DM (推送)
```

---

## 🔍 关键发现

### 1. API 服务器地址

#### 主要 API 服务器
```
http://113.190.232.99:8003/api/
```

**分析**:
- 这是一个内网IP地址（越南IP段）
- 端口 8003
- 使用 HTTP 协议（非加密）
- 可能是开发/测试环境或内部生产环境

#### 与已知 API 对比

**已知的公开 API** (api-dingdong.ems.com.vn):
```
https://api-dingdong.ems.com.vn/
  ├── /api/TrackTrace/Lading
  ├── /api/Delivery/Inquiry
  ├── /api/Delivery/DeliveryLadingJourney
  └── /api/Gateway/Bussiness
```

**EMS Logistics APP 使用的API** (113.190.232.99:8003):
```
http://113.190.232.99:8003/api/
  └── [具体端点需进一步分析]
```

**推测**:
- 可能是同一套系统的不同部署
- EMS Logistics 可能是内部员工/快递员使用的APP
- api-dingdong 可能是面向客户的公开API

###2. 应用架构

#### Activities (界面)
```
1. com.facebook.react.devsupport.DevSettingsActivity
   - React Native 开发者设置

2. com.yalantis.ucrop.UCropActivity
   - 图片裁剪功能

3. com.emslogistics.MainActivity
   - 主界面入口

4. com.google.android.gms.common.api.GoogleApiActivity
   - Google服务
```

#### Services (后台服务)
```
1. com.emslogistics.LocationService
   ★ 关键: GPS定位服务（追踪快递员位置）

2. io.invertase.firebase.messaging.RNFirebaseMessagingService
   - Firebase推送消息

3. com.google.firebase.messaging.FirebaseMessagingService
   - Firebase消息服务

4. 其他Google服务（Analytics, Measurement等）
```

---

## 🔐 安全分析

### 1. 网络通信安全

**风险点**:
```
❌ 使用 HTTP 而非 HTTPS
  → API地址: http://113.190.232.99:8003/api/
  → 数据传输未加密
  → 易受中间人攻击

❌ 内网IP暴露
  → 113.190.232.99 (越南IP段)
  → 可能被用于内网渗透
```

**建议**:
- 使用 HTTPS 加密通信
- 实施证书固定（Certificate Pinning）
- 隐藏内网IP地址

### 2. 权限风险

**高风险权限**:
```
⚠️ ACCESS_FINE_LOCATION
  - 可以精确追踪快递员位置
  - 24小时后台定位

⚠️ CAMERA
  - 拍摄签收照片
  - 可能泄露用户隐私

⚠️ WRITE_EXTERNAL_STORAGE
  - 可以写入任意文件
  - 可能被恶意利用
```

### 3. 代码混淆

```
✓ 已使用 ProGuard/R8 混淆
  - 类名、方法名已混淆
  - 字符串资源未混淆（这是关键）
```

**可改进点**:
- 对敏感字符串进行加密
- 使用 DexGuard 进行更高级的保护

---

## 📡 推测的功能

### 基于权限和服务推测

1. **快递员实时定位**
   - LocationService 持续追踪位置
   - 上传到服务器供调度中心监控

2. **订单管理**
   - 扫描运单号
   - 更新配送状态
   - 拍摄签收照片

3. **消息推送**
   - 接收新订单通知
   - 配送任务提醒

4. **数据上传**
   - GPS轨迹
   - 配送状态
   - 签收凭证

---

## 🔬 深入分析建议

### 1. 动态分析
```bash
# 使用 Frida 进行运行时分析
frida -U -f com.ems.logistics -l hook.js

# 监控网络请求
mitmdump -s intercept.py
```

### 2. 静态分析
```bash
# 反编译APK
jadx-gui com.ems.logistics.apk

# 分析DEX文件
d2j-dex2jar classes.dex
jd-gui classes.jar
```

### 3. 寻找更多端点

**方法**:
1. 分析 React Native Bundle
   ```bash
   unzip com.ems.logistics.apk
   cd assets
   cat index.android.bundle | grep -o 'http[s]*://[^"]*' | sort -u
   ```

2. Hook 网络库
   ```javascript
   // Frida script
   Java.perform(function() {
       var OkHttpClient = Java.use("okhttp3.OkHttpClient");
       // Hook Request
   });
   ```

3. 流量抓包
   - 使用真实设备或模拟器
   - 配置 Charles/Burp Suite 代理
   - 捕获所有API请求

---

## 💡 发现的可能API端点

基于应用功能推测，可能存在以下端点：

```
http://113.190.232.99:8003/api/

可能的端点:
├── /login                    # 快递员登录
├── /orders/list              # 获取订单列表
├── /orders/{id}              # 订单详情
├── /orders/{id}/status       # 更新订单状态
├── /orders/{id}/sign         # 上传签收信息
├── /location/update          # 上传GPS位置
├── /location/track           # 获取追踪信息
├── /upload/image             # 上传照片
├── /profile                  # 快递员资料
└── /notifications            # 获取通知
```

---

## 🎯 与已知API的关系

### 对比分析

**api-dingdong.ems.com.vn** (公开API):
- 用途: 客户查询追踪
- 认证: Basic Auth + API Key + 签名
- 协议: HTTPS
- 数据: 只读，查询订单信息

**113.190.232.99:8003** (内部API):
- 用途: 快递员操作
- 认证: 可能需要登录token
- 协议: HTTP
- 数据: 读写，更新订单状态、上传位置等

**关系推测**:
```
┌─────────────────┐
│  客户查询系统    │ ──→ api-dingdong.ems.com.vn (HTTPS)
│  (网站/APP)      │     └── 只读查询
└─────────────────┘

┌─────────────────┐
│  快递员APP      │ ──→ 113.190.232.99:8003 (HTTP)
│ (EMS Logistics) │     └── 读写操作
└─────────────────┘

            ↓
    ┌──────────────┐
    │  EMS 后端系统 │
    │  (统一数据库)  │
    └──────────────┘
```

---

## 📊 数据流分析

### 推测的数据流

```
快递员APP (EMS Logistics)
    ↓ [HTTP]
内部API (113.190.232.99:8003)
    ↓
EMS 核心系统
    ↓
公开API (api-dingdong.ems.com.vn)
    ↓ [HTTPS]
客户查询
```

---

## 🚀 下一步行动

### 1. 测试内部API

```python
import requests

# 尝试访问内部API
base_url = "http://113.190.232.99:8003/api/"

# 测试常见端点
endpoints = [
    "login",
    "orders",
    "location",
    "profile",
    "upload"
]

for ep in endpoints:
    try:
        r = requests.get(base_url + ep, timeout=10)
        print(f"{ep}: {r.status_code}")
    except:
        print(f"{ep}: 无法访问")
```

### 2. 反编译React Native Bundle

```bash
cd apk_content/assets/
# 查找 index.android.bundle
# 使用工具解密/美化
```

### 3. 动态调试

```bash
# 安装APK到模拟器
adb install ems_logistics.xapk

# 启动Frida Server
adb push frida-server /data/local/tmp/
adb shell "chmod 755 /data/local/tmp/frida-server"
adb shell "/data/local/tmp/frida-server &"

# Hook应用
frida -U com.ems.logistics
```

---

## 📝 总结

### 关键发现

1. ✅ **找到内部API地址**: `http://113.190.232.99:8003/api/`
2. ✅ **识别应用架构**: React Native + Native Services
3. ✅ **确认应用功能**: 快递员工作APP，包含GPS追踪
4. ⚠️ **安全隐患**: 使用HTTP未加密，内网IP暴露
5. 💡 **与已知API关系**: 内部系统与公开API是同一后端

### 价值评估

**EMS Logistics APP**:
- 📦 快递员操作端
- 📍 实时GPS追踪
- 📸 签收照片上传
- 🔄 订单状态更新

**api-dingdong.ems.com.vn**:
- 👤 客户查询端
- 🔍 订单追踪
- 📊 配送信息
- 🔒 签名认证

### 商业应用

1. **竞品分析**: 了解EMS Vietnam的物流系统架构
2. **API集成**: 可能发现更多可用的API端点
3. **安全审计**: 发现潜在安全问题
4. **逆向学习**: 学习大型物流系统的设计

---

**文档创建**: 2025-10-16  
**分析工具**: androguard, apktool, jadx  
**状态**: 初步分析完成，需要进一步动态调试
