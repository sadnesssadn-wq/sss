# 深度挖掘进展报告
**时间**: 2025-11-13 19:35
**阶段**: Fofa资产扩展完成

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🆕 新发现域名（Fofa扫描）

### 1. open.ghtk.vn ⭐⭐⭐⭐
```
状态: 403 Forbidden（所有路径）
技术: Spring Boot + Nginx
特征: X-Content-Type-Options, X-XSS-Protection
IP: 103.188.251.129

攻击面:
❌ 所有路径返回403
⚠️  可能需要IP白名单
⚠️  可能需要特定认证头
⚠️  可能是内部API（仅限内网）

潜力: 高（开放API命名暗示公开接口）
建议: 尝试X-Forwarded-For绕过，API密钥认证
```

### 2. sos.ghtk.vn ⭐⭐⭐⭐
```
状态: 200 OK
技术: React SPA + web-analytic-nl.ghtk.vn
版本: 2025-10-24,09:45:24
特征: Goku Tracking集成, localStorage使用me_info

攻击面:
✅ React应用可访问
✅ JS Bundle已下载分析
⚠️  API端点分析中
✅ localStorage存储用户信息

潜力: 高（SOS支持系统，可能有工单数据）
建议: 深度JS逆向，查找API端点
```

### 3. business.ghtk.vn ⭐⭐⭐
```
状态: 200 OK
技术: LadiPage (营销页面构建器)
功能: 客户信息收集（表单）

攻击面:
❌ 仅营销页面
❌ 表单提交到LadiPage
❌ 无实际业务系统访问

潜力: 低（营销工具，非核心系统）
```

### 4. cdn-stream.ghtk.vn ⭐⭐
```
状态: 403 Forbidden
服务器: Byte-nginx (字节跳动CDN)

攻击面:
❌ CDN服务，无直接攻击面

潜力: 低
```

### 5. 其他发现
```
web-analytic.ghtk.vn - 统计追踪
web-analytic-nl.ghtk.vn - 统计追踪（备用）
goku-tracking-be.ghtk.vn - Goku追踪后端（404）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 📊 资产汇总（总计14个系统）

### 核心系统（7个）
1. admin.giaohangtietkiem.vn - 管理后台 ⭐⭐⭐⭐⭐
2. inter.ghtk.vn - API网关 ⭐⭐⭐⭐⭐
3. auth.ghtk.vn - 认证中心 ⭐⭐⭐⭐⭐ (内网)
4. das2.ghtk.vn - 数据分析 ⭐⭐⭐⭐
5. chat.ghtk.vn - 聊天系统 ⭐⭐⭐⭐
6. hrm-api.ghtk.vn - HR API ⭐⭐⭐
7. hrm.ghtk.vn - HR前端 ⭐⭐⭐

### 新发现系统（4个）
8. open.ghtk.vn - 开放API ⭐⭐⭐⭐ (403)
9. sos.ghtk.vn - SOS支持 ⭐⭐⭐⭐
10. business.ghtk.vn - 营销页 ⭐⭐⭐
11. app.ghtk.vn - APP分发 ⭐⭐⭐

### 辅助系统（3个）
12. cdn-stream.ghtk.vn - CDN ⭐⭐
13. web-analytic.ghtk.vn - 统计 ⭐
14. goku-tracking-be.ghtk.vn - 追踪 ⭐

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 下一步攻击方向（更新）

### 优先级S（立即执行）⭐⭐⭐⭐⭐
1. **sos.ghtk.vn深度逆向**
   - 下载所有JS chunk文件
   - 提取完整API端点列表
   - 测试未授权访问
   - 工单系统数据泄露风险
   - 预计时间: 20分钟
   - 成功率: 70%

2. **open.ghtk.vn绕过测试**
   - X-Forwarded-For: 127.0.0.1
   - API Key认证测试
   - User-Agent伪造
   - 预计时间: 15分钟
   - 成功率: 30%

### 优先级A（重点）⭐⭐⭐⭐
3. **JWT/认证绕过（原计划）**
   - inter.ghtk.vn密钥爆破
   - OAuth 2.0漏洞
   - 预计时间: 1-2小时
   - 成功率: 40%

### 优先级B（并行）⭐⭐⭐
4. **C段扫描**
   - 103.188.250.0/24
   - 103.188.251.0/24
   - 查找测试/开发环境
   - 预计时间: 20分钟
   - 成功率: 50%

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 💡 重要发现

### 架构洞察
1. **ghtklab.com备用域名**
   - sos.ghtk.vn代码中多次出现ghtklab.com
   - 可能是测试/开发环境域名
   - 建议扫描: *.ghtklab.com

2. **web-analytic-nl.ghtk.vn**
   - "nl"可能代表"new link"或地域
   - 可能是新版本或特定区域部署

3. **Goku Tracking系统**
   - 自研追踪系统
   - 多个项目ID: ghtk-gchatweb-p2407101402
   - 可能存在其他项目

