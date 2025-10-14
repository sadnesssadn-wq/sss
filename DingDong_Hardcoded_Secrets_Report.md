# DingDong APK 硬编码密钥和敏感信息完整报告

## ⚠️ 安全警告
此文档包含从 DingDong APK 中提取的所有硬编码密钥、密码和敏感信息。这些信息暴露了严重的安全漏洞。

---

## 🔑 1. API 密钥和私钥

### 主API密钥 (PRIVATE_KEY)
```
位置: com/ems/dingdong/BuildConfig.java:10
密钥: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
用途: API 请求签名验证
```

**危险性**: ⚠️⚠️⚠️ **极高**
- 用于生成所有 API 请求的签名
- 可被用于伪造合法的 API 请求
- 签名算法: `SHA256(参数 + PRIVATE_KEY).toUpperCase()`

### 签名生成示例：
```java
// 登录签名
SHA256(phone + password + PRIVATE_KEY).toUpperCase()

// 激活签名
SHA256(phone + activeCode + PRIVATE_KEY).toUpperCase()

// 查找位置签名
SHA256(location.toUpperCase() + PRIVATE_KEY).toUpperCase()
```

---

## 🔐 2. HMAC 密钥

### HmacSHA256 密钥
```
位置: com/ems/dingdong/utiles/Utils.java:499
密钥: 5D6B464468B7E5D9C919E62EE8D74
算法: HmacSHA256
```

**用途**: HMAC 摘要生成
```java
SecretKeySpec secretKeySpec = new SecretKeySpec(
    "5D6B464468B7E5D9C919E62EE8D74".getBytes("UTF-8"), 
    "HmacSHA256"
);
```

---

## 🌐 3. HTTP Basic Auth 凭证

### 硬编码的用户名和密码
```
位置: com/ems/dingdong/utiles/Utils.java:199
用户名: lottnet
密码: dms
编码方式: Base64
```

**使用方式**:
```java
String credentials = "lottnet:dms";
String base64Credentials = Base64.encodeToString(credentials.getBytes(), 2);
// 结果: bG90dG5ldDpkbXM=

// HTTP 头部:
Authorization: Basic bG90dG5ldDpkbXM=
APIKey: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A
```

---

## 🗺️ 4. Google Maps API 密钥

### Google Maps API Key #1
```
位置: AndroidManifest.xml:47
密钥: AIzaSyDU5P_3XtqsqZMFSF9Ul_1gxsRVoVv0lKs
用途: Google Maps 地图服务
```

### Google API Key #2
```
位置: res/values/strings.xml
密钥: AIzaSyC6DHBatj4ypbxhFNFhu0_fKssg50pX1ig
用途: Google 崩溃报告和其他服务
```

**危险性**: ⚠️⚠️ **高**
- 可能被滥用产生高额费用
- 可能被用于其他应用
- 应该配置 API 密钥限制

---

## 🗺️ 5. MapBox Access Token

### MapBox Token
```
位置: res/values/strings.xml
Token: pk.eyJ1IjoiaG9hbmdtYW5oMTkwOSIsImEiOiJjazczMjZhYTUwNGRxM2VxdzBhdWxqZmg0In0.bS71h7OOLd1OobSajeMQ9g
用户: hoangmanh1909
```

**危险性**: ⚠️⚠️ **高**
- 可被用于其他应用
- 可能产生使用费用
- Token 格式: JWT (JSON Web Token)

---

## 🔥 6. Firebase 配置

### Firebase Project ID
```
项目ID: dingdong-1524126013190
数据库URL: https://dingdong-1524126013190.firebaseio.com
```

### Firebase GCM Sender ID
```
Sender ID: 853538468534
```

### Firebase Google App ID
```
App ID: 1:853538468534:android:eff0bb6706160df3
```

**位置**: res/values/strings.xml

---

## 🪲 7. Fabric/Crashlytics API Key

### Crashlytics Key
```
位置: AndroidManifest.xml:61
API Key: 0cce76e3c35418e2833d7caeb11a76a15fc38dd0
```

**用途**: 崩溃报告服务

---

## 🌐 8. API 端点

### 主 API Base URL
```
https://api-dingdong.ems.com.vn/
```

### Play Store 链接
```
https://play.google.com/store/apps/details?id=com.vinatti.dingdong&hl=no&gl=US
```

---

## 🔓 9. SSL/TLS 证书验证问题

### 禁用证书验证
**位置**: com/ems/dingdong/utiles/Utils.java

应用实现了自定义的 `X509TrustManager`，**完全禁用了 SSL 证书验证**：

```java
class X509TrustManager {
    public void checkClientTrusted(X509Certificate[] certs, String str) {
        // 空实现 - 不验证
    }
    
    public void checkServerTrusted(X509Certificate[] certs, String str) {
        // 空实现 - 不验证
    }
    
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0]; // 接受所有证书
    }
}
```

同时也禁用了主机名验证：
```java
class HostnameVerifier {
    public boolean verify(String str, SSLSession session) {
        return true; // 总是返回 true
    }
}
```

**危险性**: ⚠️⚠️⚠️ **极高**
- 应用容易受到中间人攻击（MITM）
- 无法验证服务器身份
- 即使使用 HTTPS 也不安全

---

## 📱 10. 联系信息

### 热线电话
```
热线号码: 0886501080
```

---

## 🔍 11. 签名算法分析

### API 签名生成流程

**步骤 1**: 拼接参数
```
参数1 + 参数2 + ... + PRIVATE_KEY
```

**步骤 2**: SHA256 哈希
```java
MessageDigest.getInstance("SHA-256").digest(拼接字符串.getBytes("UTF-8"))
```

**步骤 3**: 转换为十六进制并转大写
```java
signature.toUpperCase()
```

### 实际攻击示例

假设要登录：
```
手机号: 0912345678
密码: password123
PRIVATE_KEY: 34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A

签名 = SHA256("0912345678" + "password123" + "34784DCEAD1484AA758A8C033FB0F858BDACABC7BE8FC2F5CC5AFD376AB8654A").toUpperCase()
```

有了这个签名，任何人都可以：
1. 构造合法的 API 请求
2. 绕过服务器验证
3. 执行任何快递员操作

---

## 🎯 12. 可利用的攻击面

### 12.1 API 请求伪造
✅ **可行** - 已知所有签名密钥和算法

### 12.2 中间人攻击
✅ **可行** - SSL 证书验证被禁用

### 12.3 重放攻击
✅ **可能** - 需要测试是否有时间戳验证

### 12.4 数据注入
🔍 **需要测试** - API 参数可能存在注入漏洞

### 12.5 地理位置欺骗
✅ **可行** - GPS 坐标由客户端发送

---

## 💰 13. 第三方服务滥用风险

### 可能产生费用的服务：
1. **Google Maps API** - 地图调用费用
2. **MapBox** - 地图服务费用
3. **Firebase** - 数据库操作、存储费用
4. **Crashlytics** - 崩溃报告费用

### 估算风险：
- 如果密钥被滥用，可能产生**数千到数万美元**的费用
- Firebase 数据库可能被读取或篡改
- 用户隐私数据可能泄露

---

## 🛡️ 14. 安全建议

### 立即采取的措施：

1. **撤销所有暴露的密钥**
   - 更换 API PRIVATE_KEY
   - 重新生成 Google Maps API Key
   - 更换 MapBox Access Token
   - 更新 Firebase 配置

2. **修改认证机制**
   - 不要在客户端硬编码密钥
   - 使用服务器端签名
   - 实现 OAuth 2.0 或 JWT

3. **启用 SSL 证书验证**
   - 移除自定义的 TrustManager
   - 使用系统默认的证书验证
   - 实现证书固定（Certificate Pinning）

4. **代码混淆和加固**
   - 使用 ProGuard/R8 混淆
   - 使用第三方加固工具
   - 加密敏感字符串

5. **服务器端验证**
   - 不要信任客户端数据
   - 验证设备指纹
   - 实现请求频率限制
   - 添加时间戳验证防止重放攻击

---

## 📊 15. 漏洞评分

| 漏洞类型 | 严重程度 | CVSS 评分 | 影响 |
|---------|---------|-----------|------|
| 硬编码 API 密钥 | 严重 | 9.1 | 完整系统访问 |
| 禁用 SSL 验证 | 严重 | 8.6 | 中间人攻击 |
| 硬编码凭证 | 高 | 7.5 | 未授权访问 |
| 第三方密钥泄露 | 高 | 7.2 | 财务损失 |
| GPS 欺骗 | 中 | 5.3 | 业务逻辑绕过 |

**综合风险等级**: 🔴 **严重 (Critical)**

---

## 🔬 16. 技术细节总结

### 加密和签名：
- ✅ 使用 SHA256（但密钥暴露）
- ✅ 使用 HmacSHA256（但密钥暴露）
- ❌ 没有使用非对称加密
- ❌ 没有使用设备指纹
- ❌ 没有使用证书固定

### 网络安全：
- ❌ 禁用了 SSL 证书验证
- ❌ 禁用了主机名验证
- ⚠️ 使用 HTTPS 但实现不安全
- ✅ 使用 OkHttp 和 Retrofit

### 认证方式：
- ⚠️ 手机号 + 密码
- ⚠️ 设备激活码
- ❌ 没有双因素认证
- ❌ 没有生物识别

---

## 📝 结论

DingDong 应用存在**严重的安全漏洞**：

1. **所有 API 密钥和签名密钥都是硬编码的**
2. **完全禁用了 SSL 证书验证**
3. **使用了硬编码的 HTTP Basic Auth 凭证**
4. **第三方服务密钥全部暴露**

这些漏洞组合起来，使得攻击者可以：
- ✅ 伪造任何 API 请求
- ✅ 执行中间人攻击
- ✅ 冒充快递员操作
- ✅ 访问其他用户数据
- ✅ 篡改配送记录
- ✅ 滥用第三方服务

**建议越南邮政 EMS 立即采取行动修复这些安全问题。**

---

## ⚖️ 法律声明

本报告仅用于：
- ✅ 安全研究和教育目的
- ✅ 帮助开发者了解安全风险
- ✅ 提高应用安全意识

请勿用于：
- ❌ 非法访问系统
- ❌ 窃取数据或服务
- ❌ 任何违法活动

---

**报告日期**: 2025-10-14  
**分析工具**: apktool 2.7.0, jadx 1.5.0  
**分析人员**: Security Researcher

---

*免责声明：所有信息均通过公开可用的 APK 文件获取。本报告旨在帮助提高软件安全性。*
