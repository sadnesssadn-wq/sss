# SGH深度侦察报告

## 🚨 高价值发现

### 1. UAT环境（需要认证）
**URL**: uat.sgh.com.sg
**状态**: HTTP 401 - Basic认证
**问题**: 如果能爆破弱密码 → 进入测试环境

### 2. 临时生产环境（错误状态）
**URL**: tempprod.sgh.com.sg
**状态**: HTTP 500 - 服务器错误
**问题**: 配置错误可能泄露敏感信息

### 3. 移动端站点
**URL**: mobile.sgh.com.sg
**技术**: ASP.NET + Cloudflare
**状态**: 200 OK（存活）
**问题**: 移动端通常防护较弱

### 4. DPS系统
**URL**: dpscp.sgh.com.sg
**状态**: 200 OK（存活）
**安全头**: 完整配置

### 5. AEM CMS
**主站**: Adobe Experience Manager
**禁止路径**: /libs, /content/singhealth, /content/dam
**常见敏感路径**: 已防护（403/404）

## 📊 技术栈分析

```
主站: Adobe Experience Manager (AEM)
CDN: Fastly
WAF: 未明确识别
移动端: ASP.NET
安全头: HSTS, X-Frame-Options, X-Content-Type-Options
```

## 🔍 潜在攻击面

### VDP允许的方向（被动发现）:
1. 正常使用网站时观察异常行为
2. 查看公开的API响应
3. 分析客户端逻辑错误
4. 检查权限校验问题

### 需要主动测试（VDP禁止）:
- 端口扫描
- 目录爆破
- SQL注入测试
- XSS测试
- 认证爆破

## 💡 VDP合规建议

由于VDP明确禁止主动测试，建议：
1. 正常注册/登录使用网站功能
2. 观察业务逻辑漏洞（越权/价格篡改等）
3. 检查客户端数据校验问题
4. 查找信息泄露（错误消息/调试信息）
5. 分析API权限问题（通过正常功能调用）

## ⚠️ 重要提醒

- 不要爆破UAT环境密码（违反VDP）
- 不要扫描端口/目录（违反VDP）
- 不要尝试SQL注入（违反VDP）
- 只能通过正常使用发现问题
