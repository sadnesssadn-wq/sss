# 🔥🔥🔥 重大突破：EMPLOYEE_LOGIN_V2不需要Token！

## 关键发现

### 1. EMPLOYEE_LOGIN_V2绕过Token验证

测试结果：
```json
{
  "Code": "95",
  "Message": "Chữ ký không hợp lệ",
  "Data": null,
  "Time": "03/11/2025 21:46:27",
  "Signature": null,
  "Token": null
}
```

**重要**：
- ❌ 不是 Code 97（Thiếu token）
- ✅ 是 Code 95（Chữ ký không hợp lệ）

这意味着：
1. **服务器跳过了Token验证**（合理，因为登录是为了获取Token）
2. **直接进入签名验证**（需要有效的RSA签名）

---

### 2. 服务器端验证逻辑推测

```
EMPLOYEE_LOGIN_V2 专用流程：
  1. 跳过Token验证 ✅
  2. 检查RSA签名
     → 如果签名无效 → Code 95
     → 如果签名有效 → 检查用户名密码
  3. 返回Token

其他Command的流程：
  1. 检查Token
     → 如果没有Token → Code 97
     → 如果Token无效 → Code 96
  2. 检查RSA签名
     → 如果签名无效 → Code 95
  3. 处理请求
```

---

### 3. 为什么这是突破点

**登录接口的特殊性**：
```
• 不需要现有Token（否则无法登录）
• 只需要：
  1. 有效的RSA签名
  2. 正确的用户名/密码
```

**问题**：
```
• RSA签名仍然需要AndroidKeyStore中的私钥
• 无法从外部伪造签名
```

---

### 4. 可能的攻击路径

#### 路径1: Frida Hook登录流程
```javascript
// Hook登录方法
Java.perform(function() {
    var NetWorkController = Java.use("com.ems.emsone.netword.NetWorkController");
    
    NetWorkController.emsLoginV2.implementation = function(employee) {
        console.log("[+] emsLoginV2 called");
        console.log("[+] Employee: " + employee);
        
        // 调用原方法
        var result = this.emsLoginV2(employee);
        
        // 拦截响应
        result.subscribe({
            onSuccess: function(data) {
                console.log("[+] Login success!");
                console.log("[+] Token: " + data.getToken());
            }
        });
        
        return result;
    };
});
```

#### 路径2: 修改APK
```
1. 反编译APK
2. 修改登录逻辑：
   • 硬编码用户名/密码
   • 或绕过验证
3. 重新打包
4. 安装修改版APK
5. 获取Token
```

#### 路径3: 暴力破解（如果有弱密码）
```
如果：
• 服务器没有速率限制
• 存在弱密码账户

则可以：
1. 枚举用户名（如果有泄露）
2. 尝试常见密码
3. 但仍需要有效RSA签名
```

---

### 5. RSA签名问题

**关键障碍**：
```
即使EMPLOYEE_LOGIN_V2不需要Token，
仍然需要有效的RSA签名。

RSA签名需要：
• AndroidKeyStore中的私钥
• 私钥是不可导出的
• 必须在真实设备/模拟器上运行
```

**签名生成过程**（拦截器）：
```
1. 构建签名字符串（9个参数）：
   platform | client_id | client_secret | 
   manufacturer | model | device_id | 
   date_time | time_zone | version

2. 如果有Token，追加：
   signString += " | " + token

3. RSA签名：
   signature = RSAUtils.sign(signString)
   
4. 添加到Header：
   signature: {signature}
   public_key: {public_key}
```

---

### 6. 登录需要的参数（待确认）

可能的字段（从常见模式推测）：
```json
{
  "Username": "string",
  "Password": "string"
}

或

{
  "Email": "string",
  "Password": "string"
}

或

{
  "Phone": "string",
  "Password": "string"
}
```

需要从Smali代码中提取 `Employee` 或 `LoginRequest` 类的结构。

---

### 7. 下一步行动

#### 必须做的：
1. **提取Employee/LoginRequest类的完整结构**
   - 确定登录需要的字段
   
2. **提取emsLoginV2的完整实现**
   - 理解参数构造
   
3. **分析RSAUtils**
   - 确认签名算法细节
   
4. **部署Frida测试环境**
   - 在真实设备/模拟器上测试
   - Hook拦截器获取签名
   
#### 可选的：
5. 分析是否有其他不需要Token的Command
6. 查找是否有测试账户硬编码

---

## 结论

✅ **重大突破**：EMPLOYEE_LOGIN_V2不需要Token

❌ **仍有障碍**：需要有效的RSA签名

🎯 **唯一可行路径**：
1. 使用真实Android环境
2. 通过Frida Hook
3. 或修改APK
4. 获取登录Token
5. 利用Token访问数据

💡 **关键insight**：
- 纯API层面的绕过已不可能
- 必须利用客户端环境
- RSA签名机制非常牢固
