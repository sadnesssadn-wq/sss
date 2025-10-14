# DingDong APK 逆向分析报告

## 📱 应用基本信息

**应用名称**: DingDong  
**包名**: `com.vinatti.dingdong`  
**版本**: 3.3.2 (Version Code: 107)  
**开发商**: Vinatti / EMS (越南邮政)  
**APK 大小**: 约 35MB  
**最低 SDK 版本**: 23 (Android 6.0)  
**目标 SDK 版本**: 31 (Android 12)  

---

## 🎯 应用用途

这是一个**越南邮政（EMS）的快递员配送管理应用**，主要用于：

### 核心功能：
1. **快递配送管理** (Delivery Management)
   - 配送订单管理
   - 配送状态报告（成功/失败）
   - 批量配送处理

2. **订单收件** (Collection)
   - 收件确认
   - 批量收件
   - 邮局确认

3. **位置追踪** (Location Tracking)
   - GPS 定位
   - 路线规划
   - 地图导航（使用 VietMap）

4. **通话功能** (Call Service)
   - 拨打客户电话
   - 呼叫中心转接
   - 通话记录

5. **报表统计** (Statistics)
   - 配送统计
   - BD13 表单创建
   - 工作报表

6. **推送通知** (Push Notifications)
   - Firebase Cloud Messaging
   - 订单更新通知

---

## 🔐 API 配置信息

### API Base URL
```
https://api-dingdong.ems.com.vn/
```

### API 密钥
```
PRIVATE_KEY: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

### Google Maps API 密钥
```
AIzaSyDU5P_3XtqsqZMFSF9Ul_1gxsRVoVv0lKs
```

⚠️ **安全问题**: API 密钥和私钥硬编码在应用中，存在安全风险。

---

## 🔌 主要 API 接口

### 1. 认证相关
- **登录**: `POST /api/Authorized/Login`
  - 参数: MobileNumber, Password, DeviceID, Signature
  - 使用 SHA256 签名验证

- **激活设备**: `POST /api/Authorized/Active`
  - 参数: MobileNumber, ActiveCode, CodeDeviceActive, Signature

### 2. 配送相关
- `POST /api/Delivery/DeliverySuccess` - 配送成功
- `POST /api/Delivery/DeliveryPartial` - 部分配送
- `POST /api/Delivery/DeliveryFail` - 配送失败
- `GET /api/Delivery/GetPaypostError` - 获取支付错误

### 3. 收件相关
- `POST /api/Collect/CollectOrderPostman` - 收件
- `POST /api/Collect/ConfirmOrderPostman` - 确认收件
- `POST /api/Collect/ConfirmArrived` - 确认到达

### 4. 表单相关
- `POST /api/BD13/AddNew` - 创建 BD13 表单
- `POST /api/BD13/SML` - SML 相关操作

### 5. 其他
- `POST /api/CallCenter/AddNew` - 添加通话记录
- `POST /api/Upload/Single` - 上传单个文件
- `POST /api/Upload/Mutile` - 上传多个文件

---

## 📊 技术架构

### 开发框架
- **语言**: Java + Kotlin
- **架构模式**: VIPER (View-Interactor-Presenter-Entity-Router)
- **网络库**: Retrofit 2 + OkHttp3
- **异步处理**: RxJava 2
- **数据库**: Realm
- **依赖注入**: ButterKnife
- **图像处理**: Glide
- **二维码**: ZXing
- **地图**: Google Maps + VietMap

### 主要依赖库
```
- Retrofit 2
- RxJava 2
- Realm Database
- Firebase (FCM, Analytics, Crashlytics)
- Google Play Services
- ButterKnife
- Glide
- ZXing (Barcode Scanner)
- Material Camera
- MapBox
```

---

## 📱 权限分析

### 高风险权限
- `CAMERA` - 拍摄配送照片
- `CALL_PHONE` - 拨打客户电话
- `ACCESS_FINE_LOCATION` - 精确定位
- `ACCESS_COARSE_LOCATION` - 粗略定位
- `READ_EXTERNAL_STORAGE` - 读取存储
- `WRITE_EXTERNAL_STORAGE` - 写入存储

### 网络权限
- `INTERNET` - 网络访问
- `ACCESS_NETWORK_STATE` - 网络状态
- `ACCESS_WIFI_STATE` - WiFi 状态

### 其他权限
- `BLUETOOTH` / `BLUETOOTH_ADMIN` - 蓝牙（可能用于打印机）
- `VIBRATE` - 震动
- `WAKE_LOCK` - 保持唤醒

---

## 🔍 代码结构

### 主要包结构
```
com.ems.dingdong/
├── app/                    # 应用入口
├── base/                   # 基类
├── callback/               # 回调接口
├── dialog/                 # 对话框
├── fcm/                    # Firebase 推送
├── functions/              # 功能模块
│   ├── login/             # 登录
│   ├── mainhome/          # 主页
│   │   ├── phathang/     # 配送
│   │   ├── gomhang/      # 收件
│   │   ├── chiduong/     # 路线
│   │   ├── profile/      # 个人资料
│   │   └── location/     # 定位
├── model/                  # 数据模型
├── network/                # 网络层
├── utiles/                 # 工具类
└── views/                  # 自定义视图
```

---

## 🛡️ 安全性分析

### 发现的安全问题：

1. **硬编码的密钥** ⚠️⚠️⚠️
   - API 私钥直接写在代码中
   - Google Maps API 密钥暴露
   
2. **签名验证**
   - 使用 SHA256 进行签名: `SHA256(params + PRIVATE_KEY)`
   - 可被逆向后伪造请求

3. **明文传输**
   - 使用 HTTPS，但允许明文流量 (`usesCleartextTraffic="true"`)

4. **设备激活机制**
   - 设备绑定验证（ErrorCode: "05" 表示设备已在其他地方激活）
   - 需要激活码才能使用

5. **数据存储**
   - 使用 SharedPreferences 存储用户信息
   - 使用 Realm 数据库存储本地数据

---

## 📝 关键业务流程

### 登录流程
1. 输入手机号和密码
2. 生成设备 ID
3. 创建签名: `SHA256(phone + password + PRIVATE_KEY)`
4. 发送登录请求
5. 如果设备未激活 (ErrorCode: 05)，需要激活
6. 激活成功后，获取用户信息和配置
7. 跳转到主界面

### 配送流程
1. 获取配送订单列表
2. 导航到收件地址
3. 到达后拍照确认
4. 签名确认
5. 提交配送结果（成功/失败）
6. 上传照片和签名
7. 更新订单状态

---

## 🎨 用户界面

### 主要界面
- **LoginActivity** - 登录页面
- **MainActivity** - 主页
- **BaoPhatThanhCongActivity** - 配送成功报告
- **BaoPhatBangKhongThanhCongActivity** - 配送失败报告
- **ListCommonActivity** - 订单列表
- **LocationActivity** - 位置/地图
- **ProfileActivity** - 个人资料
- **NotificationActivity** - 通知
- **ConfirmActivity** - 邮局确认

---

## 🔧 可能的攻击面

### 1. API 请求伪造
- 已知 API Base URL 和私钥
- 可以构造合法的签名
- 可能伪造快递员请求

### 2. 设备激活绕过
- 如果能获取激活码，可以在多设备使用同一账号

### 3. 位置欺骗
- GPS 定位可被模拟
- 可能伪造配送位置

### 4. 数据注入
- API 参数可能存在注入风险
- 文件上传可能存在安全问题

---

## 📦 资源文件

### 重要配置
- `AndroidManifest.xml` - 应用配置
- `strings.xml` - 字符串资源
- `build.gradle` - 构建配置

### 资源统计
- Java 文件: 7393 个
- 使用多个第三方库
- 包含越南语字符串资源

---

## 🌐 第三方服务

1. **Firebase**
   - Cloud Messaging (推送)
   - Analytics (分析)
   - Crashlytics (崩溃报告)

2. **Google Services**
   - Google Maps
   - Play Services

3. **VietMap**
   - 越南本地地图服务

4. **Fabric/Crashlytics**
   - API Key: `0cce76e3c35418e2833d7caeb11a76a15fc38dd0`

---

## 💡 总结

DingDong 是一个功能完善的快递配送管理应用，专为越南邮政 EMS 的快递员设计。应用包含了配送、收件、导航、统计等完整功能。

**优点：**
- 功能完整，用户体验良好
- 使用现代化的开发框架
- 集成了多种实用功能

**缺点：**
- 存在严重的安全问题（硬编码密钥）
- API 密钥暴露
- 可能被逆向后伪造请求

**建议：**
- 不应将私钥硬编码在应用中
- 应使用更安全的认证机制（如 OAuth 2.0）
- 加强客户端和服务器的安全验证
- 使用代码混淆和加固

---

## 📚 附加信息

**分析日期**: 2025-10-14  
**分析工具**: apktool, jadx  
**APK 来源**: apkpure.net  

---

*本报告仅用于学习和安全研究目的。请勿用于非法用途。*
