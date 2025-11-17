# 🎯 SGH漏洞提交草稿（VDP合规）

## 📋 可立即提交的发现

### 1. 信息泄露 - CSP策略暴露后端架构
**严重程度**: Low  
**URL**: https://uat.sgh.com.sg
**类型**: Information Disclosure

**描述**:
UAT环境的Content-Security-Policy响应头中暴露了多个内部后端服务的完整URL：

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

**影响**:
- 攻击者可获取内部架构信息
- Azure存储桶名称暴露
- 可用于进一步的侦察和攻击

**复现步骤**:
1. 访问 https://uat.sgh.com.sg
2. 查看HTTP响应头
3. Content-Security-Policy中可见所有后端服务URL

**建议修复**:
- 避免在CSP中列出具体的第三方服务URL
- 使用通配符或限制范围
- 移除不必要的connect-src规则

---

### 2. 配置错误 - 子域名接管风险
**严重程度**: Medium
**URL**: tempprod.sgh.com.sg
**类型**: Subdomain Takeover Risk

**描述**:
子域名tempprod.sgh.com.sg在DNS中存在，但Fastly CDN返回错误：
"Fastly error: unknown domain: tempprod.sgh.com.sg"

**影响**:
- 潜在的子域名接管风险
- 攻击者可能在Fastly注册该域名
- 可用于钓鱼或恶意内容分发

**复现步骤**:
1. 访问 https://tempprod.sgh.com.sg
2. 观察返回500错误
3. 错误消息显示Fastly配置问题

**建议修复**:
- 从DNS中移除该记录
- 或在Fastly中正确配置该域名
- 定期审查所有子域名的CDN配置

---

### 3. 旧版本软件风险
**严重程度**: Low
**URL**: mobile.sgh.com.sg
**类型**: Outdated Software

**描述**:
mobile.sgh.com.sg返回2019年的旧文件：
Last-Modified: Mon, 04 Feb 2019 04:22:20 GMT

**影响**:
- 6年前的旧代码可能存在已知漏洞
- 未及时更新的安全补丁
- ASP.NET旧版本可能有CVE

**复现步骤**:
1. 访问 https://mobile.sgh.com.sg
2. 查看HTTP响应头的Last-Modified
3. 页面仅包含重定向到主站的JS

**建议修复**:
- 更新或下线该站点
- 如果不再使用，移除DNS记录
- 确保所有公开服务都及时更新

---

### 4. 信息泄露 - KeyReply API端点暴露
**严重程度**: Low
**URL**: https://ndcs.app.keyreply.com
**类型**: Information Disclosure

**描述**:
config.js文件暴露了后端API端点：

```javascript
window.appConfig = { 
  BASE_URL: "https://ndcs.app.keyreply.com/server/", 
  WEBCHAT_URL: "https://ndcs.app.keyreply.com/webchat/" 
};
```

**影响**:
- API端点直接可访问（返回"OK"）
- 可能存在未授权的API调用
- 需要进一步测试权限控制

**复现步骤**:
1. 访问 https://ndcs.app.keyreply.com/config.js
2. 查看API配置
3. 直接访问/server/端点返回200 OK

**建议修复**:
- 确保所有API端点都有适当的认证
- 使用API网关进行统一鉴权
- 限制公开访问的API范围

---

## 📊 总结

**发现总数**: 4个
- Medium: 1个（子域名接管风险）
- Low: 3个（信息泄露）

**测试方法**: 被动信息收集，符合VDP规则
**未进行**: 任何主动渗透测试、爆破、漏洞利用

---

## ⚠️ 免责声明

本测试严格遵守Synapxe VDP规则：
- ✅ 仅进行被动信息收集
- ✅ 未尝试利用或测试漏洞
- ✅ 未获取未授权访问
- ✅ 未进行任何破坏性操作

