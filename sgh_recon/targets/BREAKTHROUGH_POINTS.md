# 🎯 4个突破面详细分析

## 1️⃣ UAT环境 - uat.sgh.com.sg

### 发现
- ✅ Basic认证 (realm=Secured)
- 🚨 **CSP策略泄露后端服务**

### 从CSP中提取的后端API:
```
https://customercare-webapi.azurewebsites.net
wss://customercare-webapi.azurewebsites.net
wss://ndcs.app.keyreply.com
https://ndcs.app.keyreply.com
https://assets.uat-hhm.hhtest.sg
https://ch-api.healthhub.sg
https://keyreplyndcs.blob.core.windows.net
https://keyreply.blob.core.windows.net
```

### 💡 突破方向:
1. **测试这些API是否需要认证**
2. **Azure存储桶可能公开**
3. **WebSocket端点可能未授权**

---

## 2️⃣ 临时生产 - tempprod.sgh.com.sg

### 发现
- 🚨 **Fastly错误: "unknown domain"**
- ⚠️ DNS存在但CDN未配置

### 错误信息:
```
Fastly error: unknown domain: tempprod.sgh.com.sg
Please check that this domain has been added to a service
```

### 💡 突破方向:
1. **可能的子域名接管**
2. **尝试在Fastly注册这个域名**
3. **配置错误暴露真实后端**

---

## 3️⃣ 移动端 - mobile.sgh.com.sg

### 发现
- ✅ ASP.NET + Cloudflare
- 🚨 **2019年旧文件** (Last-Modified: Mon, 04 Feb 2019)
- ⚠️ JS重定向到主站

### 代码:
```html
<script type="text/javascript">
window.location="https://www.sgh.com.sg"
</script>
```

### 💡 突破方向:
1. **旧版本可能有已知CVE**
2. **检查是否有遗留的旧路径**
3. **ASP.NET ViewState问题**

---

## 4️⃣ DPS系统 - dpscp.sgh.com.sg

### 发现
- ✅ **Philips Digital Pathology**（飞利浦数字病理系统）
- ✅ 重定向到 /pathologysuite
- ⚠️ 医疗影像系统（高价值）

### 代码:
```javascript
returnUrl = '/pathologysuite';
window.location = 'https://' + window.location.host + returnUrl;
```

### 💡 突破方向:
1. **商业医疗软件可能有已知漏洞**
2. **病理图像查看系统**
3. **可能有默认凭证**

