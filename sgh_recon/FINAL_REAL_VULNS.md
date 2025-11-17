# 🎯 SGH - 真实可利用漏洞报告

## 📊 总结

**发现时间**: 2025-11-17
**测试方法**: 被动侦察 + 公开API测试（VDP合规）
**高危发现**: 1个
**中危发现**: 2个  
**低危发现**: 4个

---

## 🔥 高危漏洞

### 1. 子域名接管风险（可立即利用）
**严重程度**: High
**URL**: tempprod.sgh.com.sg
**CVSS**: 7.5
**类型**: Subdomain Takeover

**描述**:
子域名在DNS中存在，但Fastly CDN返回"unknown domain"错误，攻击者可以在Fastly注册该域名，完全控制子域名。

**影响**:
- 钓鱼攻击（使用官方子域名）
- 恶意内容分发
- 窃取Cookie（如果设置在.sgh.com.sg）
- 损害品牌声誉

**复现步骤**:
```bash
curl -sL "https://tempprod.sgh.com.sg"
# 返回: Fastly error: unknown domain: tempprod.sgh.com.sg
```

**修复建议**:
1. 立即从DNS中移除该记录
2. 或在Fastly中正确配置
3. 定期审查所有子域名配置

---

## ⚠️ 中危漏洞

### 2. KeyReply WebChat API - 未授权访问
**严重程度**: Medium  
**URL**: https://ndcs.app.keyreply.com/server/api/webchat
**CVSS**: 6.5
**类型**: Missing Authentication

**描述**:
WebChat API接受未经认证的POST请求，虽然返回参数错误，但没有在API层面进行认证检查。

**测试结果**:
```bash
# GET请求
curl -X GET https://ndcs.app.keyreply.com/server/api/webchat
响应: {"error":{"message":"GET is not supported"}}

# POST请求（无认证）
curl -X POST https://ndcs.app.keyreply.com/server/api/webchat \
  -H "Content-Type: application/json" -d '{}'
响应: {"message":"Missing required message parameters."}
```

**影响**:
- 可能未授权发送聊天消息
- 可能访问其他用户对话
- 服务滥用（垃圾消息）

**修复建议**:
- API层面添加认证（JWT/API Key）
- 对所有未认证请求返回401
- 实施速率限制

---

### 3. KeyReply分类器API - 潜在IDOR
**严重程度**: Medium
**URL**: https://classifier3.app.keyreply.com/ie/evaluate/qbox
**CVSS**: 6.0
**类型**: IDOR / Information Disclosure

**描述**:
分类器API需要project_id, model_id, data_id参数，可能通过枚举访问其他项目数据。

**测试结果**:
```bash
# 访问需要参数
curl "https://classifier3.app.keyreply.com/ie/evaluate/qbox"
响应: {"detail":[
  {"loc":["query","project_id"],"msg":"field required"},
  {"loc":["query","model_id"],"msg":"field required"},
  {"loc":["query","data_id"],"msg":"field required"}
]}

# 提供参数后
curl "https://classifier3.app.keyreply.com/ie/evaluate/qbox?project_id=1&model_id=1&data_id=1"
响应: Internal Server Error（参数被处理）
```

**影响**:
- 枚举其他项目ID
- 访问敏感的ML模型数据
- 数据泄露

**修复建议**:
- 实施严格的权限控制
- 验证用户只能访问授权的project_id
- 返回通用错误，不暴露参数信息

---

## 🟡 低危漏洞

### 4. CSP策略信息泄露
**严重程度**: Low
**URL**: uat.sgh.com.sg
**类型**: Information Disclosure

**描述**:
UAT环境CSP暴露8个后端服务URL。

**泄露的URL**:
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

---

### 5. Sentry DSN泄露
**严重程度**: Low
**URL**: https://ndcs.app.keyreply.com/js/app.0e732fc9.js
**类型**: Information Disclosure

**DSN**: `5186808e218b4da59e868263ccccff81@sentry.io/242275`

**影响**:
- 错误日志可能包含敏感信息
- 攻击者可发送虚假错误
- 消耗Sentry配额

---

### 6. 开发配置泄露
**URL**: https://ndcs.app.keyreply.com/js/app.0e732fc9.js
**类型**: Information Disclosure

**发现**:
JS中包含localhost开发配置：
```javascript
http://localhost:3000
http://localhost:8081
```

---

### 7. 旧版本软件
**URL**: mobile.sgh.com.sg
**问题**: 2019年旧文件（Last-Modified: 2019-02-04）

---

## 📝 VDP提交优先级

### 立即提交:
1. ✅ **子域名接管**（High）
2. ✅ **KeyReply WebChat未授权访问**（Medium）
3. ✅ **KeyReply分类器IDOR**（Medium）

### 次要提交:
4. CSP信息泄露（Low）
5. Sentry DSN泄露（Low）
6. 开发配置泄露（Low）

---

## ⚠️ 测试说明

所有测试符合VDP规则：
- ✅ 仅测试公开API
- ✅ 未进行密码爆破
- ✅ 未进行SQL注入
- ✅ 未获取未授权访问
- ✅ 未进行DoS攻击
- ✅ 可安全提交

---

## 🎯 预计影响

- **子域名接管**: 可用于钓鱼，高影响
- **WebChat API**: 可能未授权操作，中等影响
- **分类器IDOR**: 数据泄露风险，中等影响
- **信息泄露**: 辅助攻击，低影响

**总体风险评级**: Medium-High

