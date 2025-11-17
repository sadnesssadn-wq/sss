# 🚨 关键发现 - 可立即利用的攻击面

## ✅ 已确认的攻击面

### 1. Azure API - 需要API Key
**URL**: https://customercare-webapi.azurewebsites.net
**错误**: "Api Key was not provided"

💡 **可能的攻击**:
- 尝试常见的API Key格式
- 查找GitHub/Pastebin泄露的Key
- API Key可能在JS文件中硬编码

---

### 2. KeyReply聊天系统 - 可访问
**URL**: https://ndcs.app.keyreply.com
**状态**: 200 OK - 返回HTML页面

💡 **突破点**:
- 聊天系统可能有未授权的API
- WebSocket连接可能无认证
- 可能泄露敏感对话历史

---

### 3. 🔥 Philips IntelliSite病理系统 - 登录页面
**URL**: https://dpscp.sgh.com.sg/Login/Login.aspx
**系统**: Philips IntelliSite Pathology Solution
**特征**: 医疗影像管理系统 + 验证码保护

**发现的路径**:
```
/Login/Login.aspx
/AccessService/Captcha (验证码生成)
/Login/bundles/js (JS文件)
```

**CSP泄露的本地端点**:
```
https://localhost:8749
https://localhost:443
```

💡 **重点突破方向**:
1. **搜索Philips IntelliSite已知CVE**
2. **默认凭证**:
   - admin/admin
   - admin/password
   - philips/philips
3. **验证码绕过**
4. **SQL注入** (ASP.NET WebForms)
5. **ViewState反序列化**

---

### 4. Azure存储桶 - 存在但需要参数
**URLs**:
- https://keyreplyndcs.blob.core.windows.net
- https://keyreply.blob.core.windows.net

**状态**: 存在但返回400 (查询参数错误)

💡 **突破方向**:
- 枚举Container名称
- 尝试匿名访问
- 可能存储聊天记录/文件

---

### 5. 子域名接管机会
**URL**: tempprod.sgh.com.sg
**问题**: DNS存在，但Fastly返回"unknown domain"

💡 **可能的接管**:
- 在Fastly注册这个域名
- 如果成功 → 完全控制subdomain

