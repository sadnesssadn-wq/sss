# EMSONE APK修改指南 - 绕过RSA签名

## 方案1：修改Interceptor跳过签名

### 目标文件
`smali_classes3/com/ems/emsone/utils/Utils.smali`

### 修改位置
方法：`lambda$getUnsafeOkHttpClient$0`（行2182-2460）

### 关键代码段
```smali
# 当前逻辑：总是生成RSA签名
.line 626
invoke-static {v2}, Lcom/ems/emsone/utils/RSAUtils;->sign(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0

# 修改为：使用空签名
# 将上面两行替换为：
const-string v0, ""
```

### 修改步骤

```bash
# 1. 修改smali代码
cd /tmp/emsone_apktool
vi smali_classes3/com/ems/emsone/utils/Utils.smali

# 找到第2208行附近
# 注释掉：
#    invoke-static {v2}, Lcom/ems/emsone/utils/RSAUtils;->sign(Ljava/lang/String;)Ljava/lang/String;
#    move-result-object v0

# 添加：
    const-string v0, ""

# 2. 重新打包
apktool b emsone_apktool -o emsone_modified.apk

# 3. 签名（生成密钥）
keytool -genkey -v -keystore my-release-key.jks -alias alias_name \
  -keyalg RSA -keysize 2048 -validity 10000

# 4. 签名APK
jarsigner -verbose -sigalg SHA256withRSA -digestalg SHA-256 \
  -keystore my-release-key.jks emsone_modified.apk alias_name

# 5. 对齐
zipalign -v 4 emsone_modified.apk emsone_final.apk

# 6. 安装
adb install emsone_final.apk
```

---

## 方案2：Hook RSAUtils.sign方法

### Frida脚本

```javascript
Java.perform(function() {
    var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
    
    // Hook sign方法，返回空字符串
    RSAUtils.sign.implementation = function(data) {
        console.log("[+] RSAUtils.sign called");
        console.log("    Original data: " + data);
        
        // 返回空签名
        var result = "";
        console.log("    Bypassed! Returning empty string");
        return result;
    };
    
    console.log("[*] RSAUtils.sign hooked!");
});
```

### 使用方法

```bash
# 启动应用并hook
frida -U -f com.ems.emsone -l bypass_rsa.js --no-pause

# 或附加到运行中的进程
frida -U com.ems.emsone -l bypass_rsa.js
```

---

## 方案3：修改服务器验证逻辑（需服务器访问）

### 如果有服务器访问权限

查找签名验证代码：
```csharp
// 可能的验证逻辑
if (string.IsNullOrEmpty(signature))
{
    return Error("签名为空");
}

// 修改为：
if (string.IsNullOrEmpty(signature))
{
    // 允许空签名（仅测试环境）
    signature = GenerateDefaultSignature();
}
```

---

## 方案4：使用已有Token（需Android环境）

### 步骤

1. **在真实设备上运行原始APK**
2. **使用Frida提取Token和签名**
3. **在其他地方重用Token**

```javascript
// Frida脚本
Java.perform(function() {
    var DataStoreManager = Java.use("com.ems.emsone.datastore.DataStoreManager");
    
    // Hook getToken
    DataStoreManager.getToken.implementation = function() {
        var token = this.getToken();
        console.log("[+] Token: " + token);
        
        // 保存到文件
        var File = Java.use("java.io.File");
        var FileWriter = Java.use("java.io.FileWriter");
        
        var file = File.$new("/sdcard/emsone_token.txt");
        var writer = FileWriter.$new(file);
        writer.write(token);
        writer.close();
        
        return token;
    };
});
```

---

## 方案5：降级到旧版本APK

### 查找旧版本

```bash
# 在APKCombo/APKPure搜索旧版本
# 可能旧版本没有RSA签名或验证较弱

# 测试旧版本列表
v1.1.4
v1.1.3
v1.1.2
v1.1.0
v1.0.x
```

### 对比旧版本

```bash
# 下载多个版本
# 反编译对比Constants.smali
# 查看认证机制变化
```

---

## 方案6：中间人攻击修改响应

### 使用mitmproxy

```python
# mitm_emsone.py
from mitmproxy import http

def response(flow: http.HTTPFlow) -> None:
    if "gwmobile.emsone.com.vn" in flow.request.pretty_url:
        # 如果是签名验证失败
        if b'"Code":"95"' in flow.response.content:
            # 修改为成功
            flow.response.content = b'{"Code":"00","Token":"fake_token","Data":{}}'
            print("[+] Bypassed signature check!")

addons = [response]
```

### 运行

```bash
# 启动mitmproxy
mitmweb -s mitm_emsone.py

# 配置Android设备代理
# 安装mitmproxy证书
```

---

## 方案7：分析public_key参数

### 观察

API文档显示登录需要`public_key`参数：
```json
{
  "MobileNumber": "string",
  "Password": "string",
  "public_key": "string"
}
```

### 测试

```python
import requests
import json

# 测试不同的public_key值
test_keys = [
    "",
    "test",
    "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA...",  # 假公钥
]

for key in test_keys:
    data = {
        "MobileNumber": "test",
        "Password": "test",
        "ShopID": 0,
        "IsShop": "0",
        "public_key": key
    }
    
    r = requests.post(
        "https://gwmobile.emsone.com.vn/api/Helper/EMPLOYEE_LOGIN",
        json=data
    )
    
    print(f"public_key={key[:20]}... -> {r.status_code}")
```

---

## 推荐方案（按优先级）

### 🥇 方案2：Frida Hook（最简单）
- ✅ 不需要重新打包
- ✅ 实时调试
- ⚠️ 需要root设备

### 🥈 方案4：提取真实Token（最有效）
- ✅ 获得合法Token
- ✅ 可重复使用
- ⚠️ 需要真实设备

### 🥉 方案1：APK修改（最彻底）
- ✅ 永久修改
- ✅ 可分发
- ⚠️ 需要重新签名

---

## 立即可执行

### Frida Hook示例

```bash
# 1. 保存Frida脚本
cat > /workspace/bypass_rsa_signature.js << 'EOF'
Java.perform(function() {
    console.log("[*] EMSONE RSA Bypass Started");
    
    var RSAUtils = Java.use("com.ems.emsone.utils.RSAUtils");
    
    RSAUtils.sign.implementation = function(data) {
        console.log("[+] Intercepted RSAUtils.sign()");
        console.log("    Data: " + data.substring(0, 100) + "...");
        return "";  // 返回空签名
    };
    
    RSAUtils.getPublicKeyBase64.implementation = function() {
        console.log("[+] Intercepted getPublicKeyBase64()");
        return "";  // 返回空公钥
    };
    
    console.log("[*] All hooks installed!");
});
EOF

# 2. 使用
frida -U -f com.ems.emsone -l /workspace/bypass_rsa_signature.js --no-pause
```

---

**下一步**：选择方案并执行！
