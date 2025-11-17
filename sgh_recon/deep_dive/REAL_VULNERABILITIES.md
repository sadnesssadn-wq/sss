# 🔥 真实可利用的漏洞发现

## 1. KeyReply WebChat API - 未授权访问风险
**URL**: https://ndcs.app.keyreply.com/server/api/webchat
**方法**: POST
**发现**: 接受POST请求，返回错误但没有拒绝未认证请求
**测试**: 需要找到正确的payload格式

## 2. KeyReply分类器API - 潜在IDOR
**URL**: https://classifier3.app.keyreply.com/ie/evaluate/qbox
**参数**: project_id, model_id, data_id（必需）
**风险**: 可能枚举其他项目的数据
**测试**: 需要爆破有效的ID组合

## 3. DPS病理系统 - 敏感路径存在
**URLs**:
- /pathologysuite/api
- /pathologysuite/config
- /pathologysuite/admin
**状态**: 302重定向到登录（路径存在）
**风险**: 认证绕过可能性

## 4. Sentry DSN泄露
**DSN**: 5186808e218b4da59e868263ccccff81@sentry.io/242275
**影响**: 错误跟踪数据可能包含敏感信息
**利用**: 需要Sentry访问权限

## 5. Azure存储桶存在但容器名未知
**URLs**:
- keyreplyndcs.blob.core.windows.net
- keyreply.blob.core.windows.net
**状态**: 服务存在，需要找到正确的容器名
**测试**: 继续枚举容器名

## 6. 子域名接管
**URL**: tempprod.sgh.com.sg
**状态**: Fastly配置错误
**风险**: 可接管子域名

