# GHTK深度渗透进度报告 v2
**时间**: 2025-11-13 19:40
**状态**: 深度挖掘进行中 🔥

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🆕 最新突破（阶段4-5）

### 🎯 资产扩展成果（Fofa + JS逆向）
- ✅ 发现16个系统（+2个新系统）
- ✅ 提取30+ SOS API端点
- ✅ 发现ghtklab.com测试域名
- ✅ 发现bigdata-ingestion-api（大数据API）
- ✅ 发现dashboard（CS Admin客服后台）

### 🔥 TOP 3 最新发现

#### 1. dashboard.ghtk.vn ⭐⭐⭐⭐⭐
```
名称: CS Admin（客服管理后台）
技术: Vue.js 3 + Vite
JS文件: /assets/index-BKy7xAHt.js (下载分析中)
特征: gmjs.min.js（可能是内部JS库）

攻击面:
✅ 客服系统，可能有:
   - 工单数据
   - 用户信息
   - 聊天记录
   - 订单信息
✅ JS逆向进行中
⚠️  认证机制待分析

潜力: 极高
下一步: 完整JS逆向，提取所有API
```

#### 2. bigdata-ingestion-api.ghtk.vn ⭐⭐⭐⭐⭐
```
端点: /api/v2/tracking/pu
响应: "Invalid token"
说明: 大数据摄取API，需要token认证

攻击面:
✅ API存在且响应
⚠️  需要token（可能从其他系统泄露）
⚠️  追踪数据摄取（可能有敏感信息）

潜力: 极高（数据收集系统）
下一步: 寻找token，测试其他端点
```

#### 3. sos.ghtk.vn（深度分析完成）⭐⭐⭐⭐
```
发现: 30+个API端点（从JS提取）
技术: React + web-analytic-nl.ghtk.vn
项目ID: ghtk-gchatweb-p2407101402

关键API:
- /erp/sos/create - 创建SOS工单
- /erp/sos/request-list - 工单列表
- /gchat-admin/* - GChat管理
- /api/gchat/green-box/* - Green Box系统
- /api/package-seal/* - 包裹封条
- /api/truck-maintenance-plan/* - 卡车维护

状态: 
❌ 所有/erp/*路径返回HTML（前端路由）
❌ 需要有效session才能访问API
✅ 架构完全识别

潜力: 高（但需要先突破认证）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 📊 完整资产图（16个系统）

### 核心业务系统（7个）
1. admin.giaohangtietkiem.vn - 管理后台 ⭐⭐⭐⭐⭐
2. inter.ghtk.vn - API网关 ⭐⭐⭐⭐⭐
3. auth.ghtk.vn - 认证中心 ⭐⭐⭐⭐⭐ (内网)
4. das2.ghtk.vn - 数据分析 ⭐⭐⭐⭐
5. chat.ghtk.vn - 聊天系统 ⭐⭐⭐⭐
6. hrm-api.ghtk.vn - HR API ⭐⭐⭐
7. hrm.ghtk.vn - HR前端 ⭐⭐⭐

### 客服/支持系统（3个）
8. **dashboard.ghtk.vn - CS Admin（新）⭐⭐⭐⭐⭐**
9. sos.ghtk.vn - SOS支持 ⭐⭐⭐⭐
10. app.ghtk.vn - APP分发 ⭐⭐⭐

### 数据/分析系统（2个）
11. **bigdata-ingestion-api.ghtk.vn（新）⭐⭐⭐⭐⭐**
12. web-analytic.ghtk.vn - 网站统计 ⭐

### 外部/营销系统（2个）
13. business.ghtk.vn - 营销页面 ⭐⭐⭐
14. open.ghtk.vn - 开放API ⭐⭐⭐⭐ (403)

### 基础设施（2个）
15. cdn-stream.ghtk.vn - CDN ⭐⭐
16. goku-tracking-be.ghtk.vn - 追踪后端 ⭐

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 当前进度

### 已完成 ✅
- [x] 初始资产发现（45个URL）
- [x] JS逆向分析（8.1MB代码）
- [x] API端点提取（200+个）
- [x] Fofa资产扩展
- [x] sos.ghtk.vn深度分析
- [x] dashboard.ghtk.vn发现

### 进行中 ⏳
- [ ] dashboard.ghtk.vn JS逆向（50%）
- [ ] ghtklab.com测试域名扫描（25%）
- [ ] bigdata API token获取（0%）

### 待执行 ⏸️
- [ ] JWT认证绕过
- [ ] C段扫描
- [ ] 密码重置漏洞测试
- [ ] open.ghtk.vn绕过测试

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 💎 关键洞察

### 1. GHTK架构模式
```
统一认证（auth.ghtk.vn）
    ↓
API网关（inter.ghtk.vn）- JWT
    ↓
┌───────────┬───────────┬───────────┐
│  业务系统  │  客服系统  │  数据系统  │
│  admin    │  dashboard │  bigdata  │
│  chat     │  sos       │  analytic │
│  hrm      │            │  das2     │
└───────────┴───────────┴───────────┘
```

### 2. 测试环境策略
- 生产: *.ghtk.vn / *.giaohangtietkiem.vn
- 测试: *.ghtklab.com（待验证）
- 追踪: ghtk-gchatweb-* 项目ID

### 3. 技术栈特征
- 前端: Vue.js / React (SPA架构)
- 后端: Spring Boot / Laravel
- 认证: JWT + OAuth 2.0
- 部署: K8s集群
- 追踪: Goku自研系统

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🚀 下一步计划（3个方向）

### 方向1：dashboard.ghtk.vn深度攻击 ⭐⭐⭐⭐⭐
```
1. 完成JS逆向（15分钟）
2. 提取所有API端点
3. 测试未授权访问
4. 尝试session劫持

成功率: 60%
时间: 30分钟
影响: 极高（客服数据泄露）
```

### 方向2：ghtklab.com测试环境 ⭐⭐⭐⭐
```
1. 扫描*.ghtklab.com子域名
2. 测试环境通常安全性较弱
3. 可能有调试模式开启
4. 可能有默认凭据

成功率: 70%
时间: 20分钟
影响: 高（获取测试环境访问）
```

### 方向3：JWT认证绕过（原计划）⭐⭐⭐⭐
```
1. inter.ghtk.vn密钥爆破
2. OAuth 2.0流程攻击
3. Session伪造

成功率: 40%
时间: 1-2小时
影响: 极高（突破认证墙）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 💡 建议执行顺序

**最佳路径**：
1. dashboard.ghtk.vn逆向（30分钟）
   → 可能发现未授权API
   
2. ghtklab.com扫描（20分钟）
   → 测试环境突破点
   
3. 如前两步无果，再执行JWT爆破（1-2小时）
   → 时间长但影响大

**预计总时间**: 2.5小时  
**综合成功率**: 70%（至少一项成功）

