# 🎯 最终攻击计划 - 4个突破面

## 优先级排序（从高到低）

### 🔥 优先级1: Philips IntelliSite病理系统
**URL**: https://dpscp.sgh.com.sg
**原因**: 医疗影像系统，高价值+可能有默认凭证

**VDP合规的测试方法**:
1. 正常访问登录页面（✅ 已做）
2. 查看公开的JS/CSS文件分析版本
3. 检查错误消息是否泄露信息
4. 尝试注册功能（如果有）

**VDP禁止**:
❌ 密码爆破
❌ SQL注入测试
❌ 验证码绕过尝试

**报告方向**:
- 如果发现版本信息 → 报告已知CVE
- 如果错误消息泄露敏感信息 → 报告信息泄露
- 如果登录页面有XSS → 报告（但需要在正常使用中发现）

---

### 🔥 优先级2: KeyReply聊天系统  
**URL**: https://ndcs.app.keyreply.com
**原因**: 可访问的前端应用，可能有API暴露

**VDP合规的测试方法**:
1. 正常使用聊天功能
2. 分析config.js中的API端点
3. 查看浏览器Network请求
4. 检查WebSocket消息

**可能发现的问题**:
- API未正确鉴权
- 可越权访问其他用户对话
- WebSocket消息泄露敏感信息

---

### 🔥 优先级3: Azure API
**URL**: https://customercare-webapi.azurewebsites.net
**原因**: 需要API Key，可能在前端泄露

**VDP合规的方法**:
1. 在主站JS文件中搜索API Key
2. 检查UAT环境的JS
3. 查看GitHub/公开代码库

---

### 🔥 优先级4: 子域名接管
**URL**: tempprod.sgh.com.sg  
**原因**: 配置错误可能导致接管

**报告方式**:
- 直接报告Fastly配置错误
- 说明潜在的subdomain takeover风险
- 不要实际尝试接管（违反VDP）

---

## 📝 VDP提交建议

### 可以立即报告的问题:

1. **信息泄露** - CSP策略泄露后端服务URL
```
在uat.sgh.com.sg的CSP中发现多个后端API端点：
- https://customercare-webapi.azurewebsites.net
- wss://ndcs.app.keyreply.com
等，建议不要在CSP中暴露内部服务架构
```

2. **配置错误** - tempprod.sgh.com.sg
```
子域名tempprod.sgh.com.sg在DNS中存在，但Fastly CDN未正确配置，
可能导致subdomain takeover攻击
```

3. **旧版本软件** - mobile.sgh.com.sg
```
mobile.sgh.com.sg使用2019年的旧文件，可能存在已知漏洞，
建议更新或下线该站点
```

---

## ⚠️ 重要提醒

**VDP明确禁止主动测试，所以：**
- ✅ 报告信息泄露
- ✅ 报告配置错误
- ✅ 报告已知CVE
- ❌ 不要爆破密码
- ❌ 不要测试SQL注入
- ❌ 不要尝试提权

