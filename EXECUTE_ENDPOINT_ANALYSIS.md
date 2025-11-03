# /execute 端点深度逆向分析

## 🔥 关键发现

### 1. Retrofit接口定义

```java
public interface EMSONERxAPI {
    @POST("Execute")  // ← 注意首字母大写！
    Single<DataResult> execute(@Body EmsDataRequest request);
    
    @POST("Execute")
    Observable<DataResult> executeObservable(@Body EmsDataRequest request);
    
    @POST("sendMessage")
    Single<DataResult> executeV1(@Body ChatMode chat);
    
    @POST("Handle/UploadImage")
    @Multipart
    Observable<DataResult> postImageObservable(@Part MultipartBody.Part file);
}
```

**重要**：端点名称是 `"Execute"`（首字母大写），不是小写的 `"execute"`！

---

### 2. EmsDataRequest 结构

```java
public class EmsDataRequest {
    @SerializedName("Code")
    private String code;        // Command名称
    
    @SerializedName("Data") 
    private String data;        // JSON数据字符串
    
    @SerializedName("Channel")
    private String channel;     // 默认 "ANDROID"
    
    @SerializedName("Signature")
    String signature;           // 请求体签名
    
    public String generateSignature() {
        // Code | Data | Channel | Signature
        String signString = buildSignString(code, data, channel, signature);
        return signString;
    }
}
```

---

### 3. 双重签名机制

#### 签名1: HTTP头签名（拦截器层）

**位置**: `Utils.getUnsafeOkHttpClient()` 的拦截器

**参数** (9个):
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

**签名字符串**:
```
signString = platform | client_id | client_secret | manufacturer | model | device_id | date_time | time_zone | version
```

**生成签名**:
```java
String signString = buildSignString(9个参数);

// 如果Token不为空，追加Token
if (!token.isEmpty()) {
    signString += " | " + token;
}

// RSA签名
String signature = RSAUtils.sign(signString);
String publicKey = RSAUtils.getPublicKeyBase64();
```

**添加到Header**:
```
Authorization: Bearer {token}
signature: {RSA签名}
public_key: {RSA公钥}
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

#### 签名2: 请求体签名（EmsDataRequest层）

**参数** (4个):
```java
1. Code = "ORDER_GET_BY_SHIPPING_CODE"
2. Data = "{\"ShippingCode\":\"EF043571075VN\"}"
3. Channel = "ANDROID"
4. Signature = ""  // 初始为空
```

**签名字符串**:
```
signString = Code | Data | Channel | Signature
```

**问题**: 
- `generateSignature()` 方法只是返回拼接的字符串
- 不做RSA签名
- 但Signature字段被发送到服务器

---

### 4. Token获取流程

```java
// 从DataStoreManager获取
String token = DataStoreManager.getToken();

// 使用场景：
1. 登录后保存: setToken(token)
2. 每次请求读取: getToken()
3. 注销时清空: clearToken()
```

**关键**: 
- Token不是参数传入
- 而是从本地存储读取
- 所有请求都会自动附加Token（如果存在）

---

### 5. 调用流程分析

```java
// 客户端代码
public static Single<DataResult> getOrderByShippingCode(HoTroRequest request) {
    EmsDataRequest emsRequest = new EmsDataRequest();
    
    // 1. 设置Command
    emsRequest.setCode("ORDER_GET_BY_SHIPPING_CODE");
    
    // 2. 序列化数据
    String jsonData = gson.toJson(request, HoTroRequest.class);
    emsRequest.setData(jsonData);
    
    // 3. 初始化签名为空字符串
    emsRequest.setSignature("");
    
    // 4. 生成签名字符串（但不实际签名）
    String signString = emsRequest.generateSignature();
    
    // 5. 调用API
    return getAPIRxBuilder(signString).execute(emsRequest);
}
```

**getAPIRxBuilder流程**:
```java
private static EMSONERxAPI getAPIRxBuilder(String token) {
    // 1. 创建Retrofit
    Retrofit retrofit = new Retrofit.Builder()
        .baseUrl("https://gwmobile.emsone.com.vn")
        .addConverterFactory(GsonConverterFactory.create())
        // 2. 添加拦截器（关键！）
        .client(Utils.getUnsafeOkHttpClient(120, 120, true, token))
        .addCallAdapterFactory(RxJava2CallAdapterFactory.create())
        .build();
    
    return retrofit.create(EMSONERxAPI.class);
}
```

**拦截器流程**:
```java
OkHttpClient.Builder builder = new OkHttpClient.Builder();

builder.addInterceptor(chain -> {
    Request request = chain.request();
    
    // 1. 获取真实Token
    String realToken = DataStoreManager.getToken();
    
    // 2. 构建签名字符串（9个参数）
    String signString = buildSignString(
        platform, client_id, client_secret,
        manufacturer, model, device_id,
        date_time, time_zone, version
    );
    
    // 3. 如果有Token，追加到签名字符串
    if (!realToken.isEmpty()) {
        signString += " | " + realToken;
    }
    
    // 4. RSA签名
    String signature = RSAUtils.sign(signString);
    String publicKey = RSAUtils.getPublicKeyBase64();
    
    // 5. 构建新请求，添加所有Header
    Request newRequest = request.newBuilder()
        .addHeader("Authorization", "Bearer " + realToken)
        .addHeader("signature", signature)
        .addHeader("public_key", publicKey)
        .addHeader("platform", "android")
        // ... 其他头
        .build();
    
    return chain.proceed(newRequest);
});
```

---

### 6. 服务器端验证流程（推测）

```
1. 检查Authorization头
   → 如果没有或格式错误 → Code 97
   
2. 验证Token有效性
   → 如果Token无效或过期 → Code 96
   
3. 验证RSA签名
   → 提取signature和public_key头
   → 重构签名字符串
   → 用public_key验证signature
   → 如果签名无效 → Code 95
   
4. 处理请求
   → 解析请求体
   → 执行Command
   → 返回数据
```

---

### 7. 所有Command列表（从逆向提取）

```java
// 订单相关
ORDER_GET_BY_ID
ORDER_GET_BY_SHIPPING_CODE
ORDER_DETAIL_BY_SHIPPING_CODE
ORDER_SEARCH
ORDER_ADD
ORDER_ADD_AND_SEND_TRANSPORT
ORDER_SEND_TRANSPORT
ORDER_CANCEL_STATUS
ORDER_CANCEL_TRANSPORT
ORDER_BATCH_EDIT
ORDER_PRINT
ORDER_SEARCH_INFO_SEND_REQUEST_TRANSPORT

// 商户相关
SHOP_REGISTER
SHOP_GET_BY_ID
SHOP_LOCK
SHOP_FORGET_PASSWORD_BY_EMAIL
SHOP_FORGET_PASSWORD_UPDATE
SHOP_CHANGE_PICK_UP_ADDRESS
SHOP_GET_LIST_CRM_OR_PP_CODE
SHOP_TRANSPORT_SERVICE_BY_SHOP_ID
SHOP_GROUP_PERMISSION_LIST

// 员工相关
EMPLOYEE_LOGIN_V2
EMPLOYEE_LIST
EMPLOYEE_LIST_ACCOUNT
EMPLOYEE_COUNT_ACCOUNT
EMPLOYEE_CHECK_CONDITION
EMPLOYEE_CHANGE_IS_LOCK
EMPLOYEE_GET_BY_ID

// 统计相关
STATISTICAL_ORDER
STATISTICAL_TRANSPORT

// 产品相关
PRODUCT_LIST
PRODUCT_ADD
PRODUCT_OPTION_GET_BY_PRODUCT_ID

// 仓库相关
WAREHOUSE_LIST

// 客户相关
CUSTOMER_LIST
CUSTOMER_STICKER_LIST

// 支持请求
REQUEST_ORDER_ADD
REQUEST_SUPPORT_DETAIL

// Grab配送
GRAB_DELIVERY_ADD_ORDER
GRAB_DELIVERY_CANCEL_ORDER
GRAB_DELIVERY_DETAIL

// 集货点
COLLECTION_POST_OFFICE_SEARCH_LIST

// 运输
TRANSPORT_ORDER_UPDATE_STATUS
```

---

### 8. 无法绕过的原因

#### Token层
```
✗ Token从本地存储读取
✗ 无Token → Code 97
✗ 假Token → Code 96
✗ 无法伪造有效Token
```

#### 签名层
```
✗ RSA签名在拦截器中自动生成
✗ 私钥在AndroidKeyStore（不可导出）
✗ 签名包含Token（如果有）
✗ 服务器验证公钥和签名
✗ 无法伪造有效签名
```

---

### 9. 关键代码位置

```
NetWorkController.smali:
  - getAPIRxBuilder(String token): 构建Retrofit实例
  - 所有API方法定义
  
Utils.smali:
  - getUnsafeOkHttpClient(): 创建HTTP客户端
  - lambda$getUnsafeOkHttpClient$0(): 拦截器逻辑（关键！）
  - buildSignString(): 构建签名字符串
  
RSAUtils.smali:
  - sign(String data): RSA签名
  - getPublicKeyBase64(): 获取公钥
  
DataStoreManager.smali:
  - getToken(): 获取Token
  - setToken(String): 保存Token
  
EmsDataRequest.smali:
  - generateSignature(): 生成请求体签名字符串
  
EMSONERxAPI.smali:
  - execute(EmsDataRequest): Retrofit接口定义
```

---

## 🎯 结论

### 正确的端点
```
POST https://gwmobile.emsone.com.vn/Execute
或
POST https://gwmobile.emsone.com.vn/execute

(都可能有效，需测试)
```

### 必需的条件
```
1. 有效的Token（从登录获取）
2. 有效的RSA签名（拦截器自动生成）
3. AndroidKeyStore中的RSA私钥
```

### 为什么无法绕过
```
• Token验证在前
• 签名验证在后
• 双重防护
• 所有关键操作在客户端拦截器自动完成
• 无法从外部伪造
```

### 唯一可行的方法
```
1. 使用真实Android设备/模拟器
2. 安装原版或修改版APK
3. 使用Frida Hook拦截器
4. 完成登录获取Token
5. 利用App的真实请求
```
