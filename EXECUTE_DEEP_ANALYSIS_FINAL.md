# /execute 端点深度逆向分析 - 最终报告

## 执行摘要

经过完整的逆向工程和代码审计，得出以下关键结论：

### 🔥 重大发现

1. **EMPLOYEE_LOGIN_V2不需要Token验证**
   - 返回 Code 95（签名错误）而非 Code 97（缺Token）
   - 这是唯一绕过Token验证的Command
   
2. **双重签名机制**
   - HTTP头签名（拦截器层）
   - 请求体签名（EmsDataRequest层）
   
3. **AndroidKeyStore私钥**
   - RSA私钥存储在AndroidKeyStore
   - 不可导出
   - 必须在真实设备环境中使用

---

## 技术架构分析

### 1. 端点信息

```
URL: https://gwmobile.emsone.com.vn/execute (或 /Execute)
Method: POST
Content-Type: application/json
```

**Retrofit接口定义**:
```java
@POST("Execute")
Single<DataResult> execute(@Body EmsDataRequest request);
```

---

### 2. 请求结构

#### EmsDataRequest类
```java
public class EmsDataRequest {
    @SerializedName("Code")
    private String code;        // Command名称
    
    @SerializedName("Data")
    private String data;        // JSON数据（字符串）
    
    @SerializedName("Channel")
    private String channel;     // 固定为 "ANDROID"
    
    @SerializedName("Signature")
    String signature;           // 请求体签名（可能未使用）
    
    public String generateSignature() {
        return buildSignString(code, data, channel, signature);
    }
}
```

#### 请求示例
```json
{
  "Code": "EMPLOYEE_LOGIN_V2",
  "Data": "{\"Username\":\"admin\",\"Password\":\"admin\"}",
  "Channel": "ANDROID",
  "Signature": ""
}
```

---

### 3. HTTP头签名（拦截器层）

#### 签名参数（9个）
```java
1. platform = "android"
2. client_id = "android_app_987654"
3. client_secret = "android_s3cr3t_uvwxzy"
4. manufacturer = Build.MANUFACTURER
5. model = Build.MODEL
6. device_id = Utils.getDeviceID()
7. date_time = "dd-MM-yyyy HH:mm:ss"
8. time_zone = TimeZone.getDefault().getDisplayName()
9. version = "1.1.5"
```

#### 签名生成流程
```java
// 1. 构建基础签名字符串
String signString = buildSignString(
    platform, client_id, client_secret,
    manufacturer, model, device_id,
    date_time, time_zone, version
);

// 2. 如果Token非空，追加
if (token != null && !token.isEmpty()) {
    signString = buildSignString(token, signString);
}

// 3. RSA签名
String signature = RSAUtils.sign(signString);
String publicKey = RSAUtils.getPublicKeyBase64();
```

#### buildSignString实现
```java
// 用 " | " 分隔符连接所有参数
String buildSignString(String... params) {
    return String.join(" | ", params);
}
```

#### HTTP头
```
Authorization: Bearer {token}
signature: {RSA签名}
public_key: {RSA公钥Base64}
platform: android
X-Client-ID: android_app_987654
X-Client-Secret: android_s3cr3t_uvwxzy
device_name: {manufacturer}
device_model: {model}
device_id: {device_id}
date_time: {date_time}
time_zone: {time_zone}
version: 1.1.5
```

---

### 4. RSAUtils分析

#### 关键方法
```java
// 签名方法
public static String sign(String data) {
    // 1. 从AndroidKeyStore获取私钥
    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
    keyStore.load(null);
    
    // 2. 获取私钥
    PrivateKey privateKey = (PrivateKey) keyStore.getKey(ALIAS, null);
    
    // 3. SHA256withRSA签名
    Signature signature = Signature.getInstance("SHA256withRSA");
    signature.initSign(privateKey);
    signature.update(data.getBytes(UTF_8));
    byte[] signBytes = signature.sign();
    
    // 4. Base64编码
    return Base64.encodeToString(signBytes, Base64.NO_WRAP);
}

// 获取公钥
public static String getPublicKeyBase64() {
    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
    keyStore.load(null);
    
    Certificate cert = keyStore.getCertificate(ALIAS);
    PublicKey publicKey = cert.getPublicKey();
    
    return Base64.encodeToString(publicKey.getEncoded(), Base64.NO_WRAP);
}
```

---

### 5. 服务器端验证流程（推测）

```
┌─────────────────────────────────────────┐
│ 1. 检查Authorization头                  │
│    → 如果缺失或格式错误 → Code 97       │
└──────────────┬──────────────────────────┘
               ↓
┌─────────────────────────────────────────┐
│ 2. 验证Token (特殊处理登录接口)         │
│    → EMPLOYEE_LOGIN_V2: 跳过            │
│    → 其他Command: 验证Token有效性       │
│      → 如果Token无效 → Code 96          │
└──────────────┬──────────────────────────┘
               ↓
┌─────────────────────────────────────────┐
│ 3. 验证RSA签名                          │
│    → 提取signature和public_key头        │
│    → 重构签名字符串                     │
│    → 用public_key验证signature          │
│    → 如果签名无效 → Code 95             │
└──────────────┬──────────────────────────┘
               ↓
┌─────────────────────────────────────────┐
│ 4. 处理请求                             │
│    → 解析请求体                         │
│    → 执行Command逻辑                    │
│    → 返回数据                           │
└─────────────────────────────────────────┘
```

---

### 6. 所有Command分类

#### 不需要Token的Command（1个）
```
✅ EMPLOYEE_LOGIN_V2  ← 唯一可以无Token访问的！
```

#### 需要Token的Command（所有其他）
```
订单相关：
- ORDER_GET_BY_ID
- ORDER_GET_BY_SHIPPING_CODE
- ORDER_DETAIL_BY_SHIPPING_CODE
- ORDER_SEARCH
- ORDER_ADD
- ORDER_SEND_TRANSPORT
- ORDER_CANCEL_STATUS
- ...

商户相关：
- SHOP_REGISTER (需要Token!)
- SHOP_GET_BY_ID
- SHOP_LOCK
- ...

员工相关：
- EMPLOYEE_LIST
- EMPLOYEE_GET_BY_ID
- ...

其他：
- PRODUCT_LIST
- WAREHOUSE_LIST
- CUSTOMER_LIST
- STATISTICAL_ORDER
- ...
```

**重要**：即使是注册(SHOP_REGISTER)也需要Token！

---

### 7. 为什么无法绕过

#### Token层面
```
❌ Token存储在本地SharedPreferences
❌ 从DataStoreManager.getToken()读取
❌ 服务器端验证Token有效性
❌ 无法伪造有效Token
```

#### 签名层面
```
❌ RSA私钥在AndroidKeyStore（硬件支持）
❌ 私钥是不可导出的
❌ 签名算法：SHA256withRSA
❌ 服务器用公钥验证签名
❌ 无法从外部伪造签名
```

#### 登录层面
```
✅ EMPLOYEE_LOGIN_V2不需要Token
❌ 但需要有效RSA签名
❌ 还需要正确的用户名/密码
```

---

### 8. 唯一可行的攻击路径

#### 方法1: Frida动态Hook（推荐）
```javascript
// Hook拦截器，记录签名
Java.perform(function() {
    var Utils = Java.use("com.ems.emsone.utils.Utils");
    
    Utils.lambda$getUnsafeOkHttpClient$0.implementation = function(token, chain) {
        console.log("[+] Interceptor called");
        console.log("[+] Token: " + token);
        
        var result = this.lambda$getUnsafeOkHttpClient$0(token, chain);
        
        var request = result.request();
        console.log("[+] Signature: " + request.header("signature"));
        console.log("[+] Public Key: " + request.header("public_key"));
        
        return result;
    };
});
```

#### 方法2: 修改APK
```
1. 反编译APK
2. 修改DataStoreManager.getToken()返回硬编码Token
3. 或修改服务器URL指向代理
4. 重新打包并签名
5. 安装到设备
6. 通过代理拦截请求
```

#### 方法3: 使用模拟器 + Frida
```bash
# 1. 启动Android模拟器
emulator -avd Pixel_5_API_30

# 2. 安装APK
adb install com.ems.emsone.apk

# 3. 启动Frida Server
adb push frida-server /data/local/tmp/
adb shell chmod 755 /data/local/tmp/frida-server
adb shell /data/local/tmp/frida-server &

# 4. 运行Frida脚本
frida -U -f com.ems.emsone -l hook_script.js
```

---

### 9. 登录接口利用（理论上）

#### 前置条件
```
1. 真实Android设备或模拟器
2. Frida环境
3. 修改版APK（可选）
4. 有效的员工账户
```

#### 攻击流程
```
1. 在真实设备上安装APK
2. Hook RSAUtils.sign()方法
3. 构造登录请求
4. 获取生成的RSA签名
5. 重放请求（带签名）
6. 获取Token
7. 使用Token访问其他Command
```

#### Frida脚本示例
```javascript
Java.perform(function() {
    var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
    
    RSAUtils.sign.implementation = function(data) {
        console.log("[+] RSAUtils.sign called");
        console.log("[+] Data: " + data);
        
        var signature = this.sign(data);
        console.log("[+] Signature: " + signature);
        
        return signature;
    };
    
    RSAUtils.getPublicKeyBase64.implementation = function() {
        var publicKey = this.getPublicKeyBase64();
        console.log("[+] Public Key: " + publicKey);
        return publicKey;
    };
});
```

---

### 10. 测试结果总结

#### 端点测试
```
✅ /execute: 可用 (HTTP 401)
✅ /Execute: 可用 (HTTP 401)
✅ /EXECUTE: 可用 (HTTP 401)
```

#### Token验证
```
无Authorization头 → Code 97
Authorization: Bearer fake_token → Code 96
正确Token但无签名 → Code 95
```

#### 登录接口
```
EMPLOYEE_LOGIN_V2:
  - 无Token → Code 95 (签名错误)
  - 其他参数测试均返回 Code 95
  - 说明：绕过Token验证，但需要签名
```

#### 其他Command
```
所有测试的Command:
  - 无Token → Code 97
  - 需要Token验证
```

---

## 🎯 最终结论

### 安全性评估
```
✅ Token验证: 强
✅ 签名验证: 非常强（RSA + AndroidKeyStore）
✅ API设计: 安全
⚪ 登录接口: 正常（不需要Token是合理的）
```

### 为什么无法从外部攻击
```
1. 所有数据访问Command都需要Token
2. Token验证在服务器端
3. RSA签名使用硬件密钥存储
4. 私钥不可导出
5. 签名包含时间戳（防重放）
```

### 唯一可行方案
```
✅ 必须使用真实Android环境
✅ 必须使用Frida或APK修改
✅ 必须获取有效登录凭证
✅ 然后才能访问数据
```

### 与/api/Helper/的对比
```
/api/Helper/:
  ✗ 不需要Token
  ✗ 不需要签名
  ✗ 但数据库为空（测试环境）

/execute:
  ✓ 需要Token (除登录)
  ✓ 需要RSA签名
  ✓ 连接真实数据库（推测）
  ✓ 安全性极高
```

---

## 技术细节补充

### AndroidKeyStore特性
```
• 硬件支持（TEE/SE）
• 密钥不可导出
• 使用时需要用户授权（可选）
• 防止Root/调试（可选）
• 密钥与App绑定
```

### 为什么绕过困难
```
1. 客户端签名在拦截器自动完成
2. 应用层代码无法访问私钥
3. 即使Root也难以提取私钥
4. 签名验证在服务器端
5. 双重防护（Token + 签名）
```

---

## 后续建议

### 如果必须继续：
1. ✅ 部署Android模拟器
2. ✅ 配置Frida环境
3. ✅ Hook关键方法
4. ✅ 获取真实签名
5. ✅ 尝试重放攻击

### 现实考虑：
```
• 需要物理设备/模拟器
• 需要有效员工账户
• 即使成功也只能访问权限内数据
• 服务器可能有其他防护
```

---

## 代码位置参考

```
关键文件：
├── NetWorkController.smali (API定义)
│   ├── getAPIRxBuilder() - Retrofit构建
│   └── emsLoginV2() - 登录方法
├── Utils.smali (拦截器)
│   └── lambda$getUnsafeOkHttpClient$0() - 签名逻辑
├── RSAUtils.smali (签名)
│   ├── sign() - RSA签名
│   └── getPublicKeyBase64() - 获取公钥
├── DataStoreManager.smali (存储)
│   ├── getToken() - 读取Token
│   └── saveToken() - 保存Token
├── EmsDataRequest.smali (请求体)
│   └── generateSignature() - 生成签名字符串
└── EMSONERxAPI.smali (Retrofit接口)
    └── execute() - API方法
```

---

**结论：/execute端点的安全机制非常牢固，纯API层面的绕过已不可能。**
