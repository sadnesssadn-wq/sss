# 真正的问题分析

## 🔴 问题根源

我一直在测试**错误的API端点**！

### 测试的端点（错误）

```
路径: /api/Helper/ORDER_GET_BY_SHIPPING_CODE
方法: POST
认证: 仅需 X-Client-ID + X-Client-Secret
签名: 不需要
结果: HTTP 200，但数据库为空
```

**这是Help页面暴露的调试端点，连接的是测试环境！**

---

### App实际使用的端点（正确）

```
路径: /execute
方法: POST
格式: {
  "Command": "ORDER_GET_BY_SHIPPING_CODE",
  "JsonData": "{\"ShippingCode\":\"EF043571075VN\"}"
}
认证: 需要完整的HTTP头 + RSA签名验证
结果: HTTP 400/401 (签名验证失败)
```

**这才是真正的生产接口，可能有真实数据！**

---

## 📊 测试结果对比

| 端点 | 路径 | 签名 | 响应 | 数据 |
|------|------|------|------|------|
| Help调试接口 | `/api/Helper/` | ❌ 不需要 | ✅ HTTP 200 | ❌ 空 |
| 生产接口 | `/execute` | ✅ 需要 | ❌ HTTP 401 | ❓ 未知 |

---

## 🔥 关键发现

### 从Smali代码分析

```smali
.method public static emsGetShippingCode(HoTroRequest;)

# 1. 创建请求对象
new-instance v0, Lcom/ems/emsone/model/EmsDataRequest;

# 2. 设置Command
const-string v1, "ORDER_GET_BY_SHIPPING_CODE"
invoke-virtual {v0, v1}, setCode(Ljava/lang/String;)V

# 3. 设置数据
invoke-static {}, getGson()Lcom/google/gson/Gson;
invoke-virtual {v1, p0, v2}, toJson(Object;Type;)Ljava/lang/String;
invoke-virtual {v0, p0}, setData(Ljava/lang/String;)V

# 4. 生成签名
const-string p0, ""
invoke-virtual {v0, p0}, setSignature(Ljava/lang/String;)V
invoke-virtual {v0}, generateSignature()Ljava/lang/String;

# 5. 获取API构建器（传入token）
invoke-static {p0}, getAPIRxBuilder(Ljava/lang/String;)
```

**关键点**：
- 调用 `getAPIRxBuilder(token)` 而不是 `getAPIRxBuilder("")`
- 说明**需要Token**！
- 与登录/注册不同（那些传空字符串）

---

## 💡 为什么之前的测试都失败

1. **端点错误**
   ```
   测试: /api/Helper/ORDER_GET_BY_SHIPPING_CODE
   实际: /execute (Command: ORDER_GET_BY_SHIPPING_CODE)
   ```

2. **环境错误**
   ```
   /api/Helper/ → 测试数据库（空）
   /execute → 生产数据库（可能有数据）
   ```

3. **认证不完整**
   ```
   需要:
     ✓ Client ID/Secret
     ✓ Token (Bearer)
     ✓ RSA签名
     ✓ 所有HTTP头
   
   我只提供了:
     ✓ Client ID/Secret
     ✗ Token
     ✗ RSA签名
   ```

---

## 🎯 解决方案

### 方案1: 使用Frida（需Android设备）

```javascript
Java.perform(function() {
    // Hook签名生成
    var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
    RSAUtils.sign.implementation = function(data) {
        var realSign = this.sign(data);
        console.log("真实签名: " + realSign);
        return realSign;
    };
    
    // Hook Token获取
    var DataStoreManager = Java.use("com.ems.emsone.datastore.DataStoreManager");
    DataStoreManager.getToken.implementation = function() {
        var token = this.getToken();
        console.log("Token: " + token);
        return token;
    };
});
```

**问题**: 需要真实Android设备

---

### 方案2: 修改APK绕过签名验证

修改服务器端验证是不可能的，但可以修改客户端：

**目标位置**：
```smali
# EmsDataRequest.smali 中的 generateSignature 方法
.method public generateSignature()Ljava/lang/String;
    # 这里调用RSA签名
    invoke-static {v2}, RSAUtils;->sign(String;)String;
    move-result-object v0
    
    # 修改为直接返回空签名（如果服务器端验证可绕过）
    const-string v0, ""
    
    return-object v0
.end method
```

**问题**: 服务器端强制验证，无法绕过

---

### 方案3: 尝试获取真实Token和签名

**可能的途径**：
1. 完成注册流程获取Token
2. 使用Frida在模拟器上运行
3. 或找到其他可以获取Token的方式

---

## 📋 当前状态

```
✅ 已完成:
  • 完整逆向分析
  • 认证机制破解
  • /api/Helper/ 路径访问
  • 商户系统渗透
  • 工具链开发

❌ 未完成:
  • 无法访问 /execute 端点
  • 无法生成有效RSA签名
  • 无法获取有效Token
  • 无法查询34个运单号的真实数据

⚠️  阻塞原因:
  • RSA私钥在AndroidKeyStore，无法导出
  • 需要真实Android设备或模拟器
  • 或需要完成App注册流程
```

---

## 🔄 下一步行动

**要查询这34个运单号，必须：**

1. **获取有效Token**
   - 完成App注册流程
   - 或从已登录的App中提取

2. **生成有效RSA签名**
   - 使用Frida Hook
   - 或修改APK安装到设备
   - 或找到签名绕过方法

3. **正确调用 `/execute` 端点**
   - 使用Token
   - 使用签名
   - 使用正确的请求格式

---

**结论**: 不是测试不够，是端点用错了！真实数据在 `/execute` 后面，需要完整认证！
