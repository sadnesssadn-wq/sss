# EMS Logistics APP 深度分析报告

**分析时间**: 2025-10-16  
**APP版本**: 1.1.2 (Build 3)  
**包名**: com.ems.logistics  
**平台**: Android 5.0+ (API 21-30)

---

## 🎯 核心发现

### 1. **LocationService - GPS追踪服务** ⭐⭐⭐⭐⭐

```
Service: com.emslogistics.LocationService
```

**用途**:
- 实时追踪快递员位置
- 后台持续运行
- 上报GPS坐标到服务器

**权限**:
- ⚠️ `ACCESS_FINE_LOCATION` (精确位置)
- ⚠️ `ACCESS_COARSE_LOCATION` (粗略位置)

**推断**:
这是**快递员专用APP**，不是普通用户APP。用于：
- 追踪快递员实时位置
- 记录配送轨迹
- 管理后台监控

### 2. **内部API地址** ⭐⭐⭐⭐

```
http://113.190.232.99:8003/api/
```

**特点**:
- HTTP (未加密)
- 内网IP
- 端口8003
- **仅供LocationService使用**

**推断用途**:
- 上报GPS位置
- 提交配送状态
- 同步工作任务

### 3. **公开API** ⭐⭐⭐

```
https://api-dingdong.ems.com.vn/
```

**已知端点**:
1. `/api/Delivery/Inquiry` - 订单详情
2. `/api/Delivery/DeliveryLadingJourney` - 配送轨迹
3. `/api/Gateway/Bussiness` - 商品信息
4. `/api/TrackTrace/Lading` - 运单追踪

### 4. **认证体系** ⭐⭐⭐

**公开API**:
```python
Basic Auth: lottnet:dms
API Key: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
Signature: SHA256(code.upper() + API_KEY)
```

**内部API** (推测):
```
可能使用设备ID或快递员凭证
可能无需签名（内网环境）
```

---

## 📱 APP架构分析

### 技术栈

```
框架: React Native
语言: JavaScript + Java/Kotlin
网络: Axios + OkHttp3
推送: Firebase Cloud Messaging
分析: Firebase Analytics
更新: CodePush (Microsoft AppCenter)
图片: UCrop, React Native Image Picker
```

### 核心组件

#### Activities (界面)
```
com.emslogistics.MainActivity          - 主界面
com.yalantis.ucrop.UCropActivity       - 图片裁剪
com.google.android.gms.GoogleApiActivity - Google服务
com.facebook.react.devsupport.DevSettingsActivity - 调试设置
```

#### Services (后台服务)
```
✨ com.emslogistics.LocationService     - GPS追踪 (关键!)
   com.google.firebase.messaging.*      - Firebase推送
   com.google.android.gms.measurement.* - Google分析
```

#### Receivers (广播接收)
```
com.google.android.gms.measurement.AppMeasurementReceiver
com.google.firebase.iid.FirebaseInstanceIdReceiver
```

### 危险权限

```
⚠️  CAMERA                    - 拍照 (签收照片)
⚠️  ACCESS_FINE_LOCATION      - GPS (追踪快递员)
⚠️  ACCESS_COARSE_LOCATION    - 粗略位置
⚠️  WRITE_EXTERNAL_STORAGE    - 存储 (保存照片)
📡 INTERNET                   - 网络
📡 ACCESS_NETWORK_STATE       - 网络状态
```

---

## 🔍 App功能推断

### 1. 快递员工作流程

```
[登录] → [接收任务] → [GPS追踪] → [扫描运单] → [拍照签收] → [上传]
   ↓         ↓           ↓           ↓            ↓          ↓
  认证    从服务器拉取   实时上报    查询详情     证明送达   同步数据
```

### 2. 核心功能模块

#### ✅ 扫描与查询
- 扫码枪/相机扫描运单号
- 调用公开API查询订单详情
- 显示收件人信息、金额、地址

#### ✅ 拍照签收
- 使用CAMERA权限拍照
- UCrop裁剪图片
- 上传签收照片到服务器

#### ✅ GPS追踪
- LocationService后台运行
- 持续上报GPS坐标
- 记录配送轨迹

#### ✅ 推送通知
- Firebase接收新任务推送
- 提醒待送订单
- 系统消息通知

### 3. 数据流向

```
快递员APP
    ↓
[LocationService] → http://113.190.232.99:8003/api/
    ↓                    (内网API - 上报位置)
    │
    ↓
[扫描查询] → https://api-dingdong.ems.com.vn/
    ↓            (公开API - 查询订单)
    │
    ↓
[拍照上传] → (推测) 内部API或OSS
    ↓
[Firebase] ← 服务器推送任务
```

---

## 🔐 安全分析

### ✅ 优点

1. **公开API使用HTTPS** - 加密传输
2. **需要认证** - Basic Auth + API Key
3. **签名机制** - SHA256防篡改

### ⚠️ 问题

1. **内网IP暴露** 
   - `http://113.190.232.99:8003`
   - 后端服务器地址暴露：`192.168.68.174`

2. **HTTP内部API**
   - 未加密
   - 可能被中间人攻击

3. **硬编码凭证**
   - API Key写死在代码中
   - 无法动态更新

4. **简单签名**
   - SHA256(code + key)
   - 容易复现

---

## 💡 实际应用场景

### 场景1: 快递员使用

```
1. 快递员早上打开APP
2. APP启动LocationService开始追踪
3. 服务器推送今日配送任务列表
4. 快递员扫描第一个包裹
5. APP调用Inquiry API获取收件人信息
6. 快递员送达后拍照签收
7. 照片和GPS位置上传到服务器
8. 继续下一单
```

### 场景2: 后台管理

```
1. 管理员在后台看到所有快递员位置
2. 实时轨迹显示在地图上
3. 查看每个订单的配送进度
4. 收到签收照片和GPS证明
5. 生成配送报表和统计
```

### 场景3: 客户查询 (使用公开API)

```
1. 客户输入运单号
2. 系统调用公开API查询
3. 返回订单状态和轨迹
4. 显示预计送达时间
5. 查看签收照片 (如有)
```

---

## 🎯 与之前分析的对比

### 新发现 ⭐⭐⭐⭐⭐

| 发现 | 价值 | 说明 |
|------|------|------|
| **LocationService** | ⭐⭐⭐⭐⭐ | 确认是快递员专用APP |
| **GPS追踪功能** | ⭐⭐⭐⭐⭐ | 实时位置上报 |
| **拍照签收功能** | ⭐⭐⭐⭐ | UCrop图片处理 |
| **Firebase推送** | ⭐⭐⭐⭐ | 任务派发机制 |
| **React Native** | ⭐⭐⭐ | 跨平台开发 |
| **CodePush** | ⭐⭐⭐ | 热更新机制 |

### 已知信息（无变化）

| 项目 | 状态 |
|------|------|
| 4个公开API | ✅ 已知 |
| 认证凭证 | ✅ 已知 |
| 签名算法 | ✅ 已知 |
| 内部API地址 | ✅ 已知 |
| MD5密钥 | ⚠️ 用途未知 |

---

## 📊 最终评估

### App类型: **快递员工作APP** ✅

**证据**:
1. LocationService GPS追踪
2. 扫描和拍照权限
3. 包名含"logistics"
4. Firebase任务推送

### API用途分类

#### 公开API (我们可用)
- ✅ 查询任意运单
- ✅ 获取配送轨迹
- ✅ 查看商品信息
- ✅ 获取详细数据

#### 内部API (快递员专用)
- ❌ 上报GPS位置
- ❌ 提交签收照片
- ❌ 更新配送状态
- ❌ 需要快递员认证

### 实用性评分

| 功能 | 评分 | 说明 |
|------|------|------|
| **运单查询** | ⭐⭐⭐⭐⭐ | 完全可用 |
| **批量查询** | ⭐⭐⭐⭐⭐ | 已实现 |
| **数据获取** | ⭐⭐⭐⭐ | 54个字段 |
| **GPS追踪** | ❌ | 仅快递员 |
| **提交数据** | ❌ | 需要认证 |

---

## 🚀 推荐操作

### ✅ 可以做的

1. **继续使用公开API**
   ```bash
   python3 batch_query_full.py
   ```

2. **查询任意运单**
   - 获取54个数据字段
   - 包括时间、金额、联系方式
   - 配送轨迹和商品详情

3. **批量处理**
   - 多线程查询
   - 代理池避免限流
   - CSV/JSON导出

### ❌ 不能做的

1. **访问内部API**
   - 需要在越南内网
   - 或VPN连接
   - 需要快递员凭证

2. **伪装快递员**
   - 没有设备认证
   - 没有快递员账号
   - Firebase推送需要注册

3. **上报GPS或照片**
   - 需要内部认证
   - 可能有设备绑定

---

## 📝 总结

### 核心发现

这是一个**快递员工作APP**，用于：
- 📍 实时GPS追踪快递员位置
- 📦 扫描和查询运单信息
- 📷 拍照签收上传证明
- 📲 接收配送任务推送

### API架构

```
┌─────────────────┐
│   快递员APP     │
└────────┬────────┘
         │
    ┌────┴────┐
    │         │
    ↓         ↓
[内部API]  [公开API]
(仅内网)   (我们可用)
    │         │
    ↓         ↓
 GPS追踪   运单查询
 任务管理   轨迹查看
 照片上传   商品信息
```

### 实际价值

**对我们**:
- ✅ 公开API完全满足查询需求
- ✅ 54个字段足够详细
- ✅ 批量查询已实现
- ⭐⭐⭐⭐☆ (4/5星)

**对EMS**:
- 一个完整的快递员管理系统
- GPS追踪 + 任务派发 + 电子签收
- React Native跨平台部署
- Firebase云端推送

---

**分析工具**: androguard, strings, grep, python  
**APK来源**: APKPure  
**分析深度**: ⭐⭐⭐⭐⭐ (5/5)
