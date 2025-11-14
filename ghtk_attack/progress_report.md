# GHTK渗透测试进度报告
**时间**: 2025-11-13 19:22
**状态**: 🟢 进行中

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## ✅ 已完成（阶段1-3）

### 阶段1：信息收集 ✅
- ✅ 45个目标资产识别
- ✅ JS逆向分析（2.4MB）
- ✅ 提取50+个API端点
- ✅ 发现6个核心子系统

### 阶段2：子域名扩展 ✅
发现域名列表：
```
1. admin.giaohangtietkiem.vn - 管理后台（Vue.js）
2. auth.ghtk.vn - 认证服务器（内网不可达）
3. inter.ghtk.vn - API网关（JWT认证）
4. hrm-api.ghtk.vn - HR API（已确认存活）
5. das2.ghtk.vn - 数据分析Dashboard（Next.js）
6. chat.ghtk.vn - 聊天API（K8s部署）
7. app.ghtk.vn - 内部APP下载页
```

### 阶段3：端点测试 ✅
已测试端点：
```
✅ /adm/index.aspx - Vue.js SPA（200）
✅ /healthcheck.php - 返回"helloworldr"（200）
✅ /admin - GHTK ID登录（200）
✅ /robots.txt - 泄露wp-admin（200）
❌ /wp-admin/ - 404
✅ inter.ghtk.vn - 401（需JWT）
✅ hrm-api.ghtk.vn - 存活
✅ das2.ghtk.vn - Dashboard（200）
✅ chat.ghtk.vn - API网关（401）
✅ app.ghtk.vn - APP下载页（200）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 高价值发现（TOP 5）

### 1. 统一认证中心（GHTK ID）⭐⭐⭐⭐⭐
```
URL: https://admin.giaohangtietkiem.vn/admin
技术: Vue.js + JWT
攻击面: 认证绕过、密码重置、JWT伪造
```

### 2. API网关（inter.ghtk.vn）⭐⭐⭐⭐⭐
```
认证: JWT-Auth
框架: Laravel
攻击面: JWT None算法、认证绕过
状态: 401（存在但未授权）
```

### 3. 数据分析Dashboard（das2）⭐⭐⭐⭐
```
技术: Next.js (SSR)
版本: c0ffb1c0
攻击面: 未授权访问、SSRF、数据泄露
状态: 200（可访问）
```

### 4. 内部聊天系统（chat）⭐⭐⭐⭐
```
架构: K8s部署（chat-backend-594f46588f-8m8kq）
攻击面: API未授权、消息劫持
```

### 5. HR管理API（hrm-api）⭐⭐⭐
```
端点: hrm-api.ghtk.vn
返回: "welcome"
攻击面: 员工信息泄露、权限提升
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🔥 待攻击方向（优先级排序）

### 优先级A（立即执行）✅
1. ✅ JS逆向完成
2. ⏳ das2.ghtk.vn深度探测（Dashboard路径）
3. ⏳ app.ghtk.vn下载内部APP（APK逆向）
4. ⏳ chat API端点Fuzz

### 优先级B（并行执行）
5. ⏳ GHTK ID登录页面分析（弱密码/认证绕过）
6. ⏳ hrm-api路径爆破
7. ⏳ JWT密钥爆破（inter.ghtk.vn）
8. ⏳ WordPress路径深度Fuzz

### 优先级C（深度利用）
9. ⏳ Goku Tracking系统利用
10. ⏳ OAuth 2.0流程分析
11. ⏳ 前端localStorage劫持
12. ⏳ CORS/JSONP利用

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 📊 成功率评估

| 攻击向量 | 成功概率 | 耗时 | 影响 |
|---------|---------|------|-----|
| das2未授权访问 | 70% | 10分钟 | 高（数据泄露） |
| JWT认证绕过 | 40% | 30分钟 | 极高（横向所有系统） |
| chat API未授权 | 60% | 15分钟 | 中（消息泄露） |
| 弱密码爆破 | 30% | 60分钟 | 高（账号接管） |
| APP逆向 | 80% | 45分钟 | 高（API密钥/配置） |
| hrm-api未授权 | 50% | 20分钟 | 高（员工信息） |

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎪 下一步建议

### 方案1：快速路径（30分钟拿下）⚡
```
1. das2.ghtk.vn深度探测（10分钟）
   → 测试/api/、/dashboard/、/admin路径
   
2. 下载APP并逆向（15分钟）
   → 提取API密钥和配置
   
3. 使用泄露密钥攻击API（5分钟）
   → inter.ghtk.vn或hrm-api.ghtk.vn
```

### 方案2：稳妥路径（2小时完整攻击）🎯
```
1. 完整子域名扫描（30分钟）
   → 使用Fofa扩大战果
   
2. 所有系统逐个深度测试（60分钟）
   → das2/chat/hrm-api/app
   
3. JWT/OAuth深度攻击（30分钟）
   → 密钥爆破、认证绕过
```

### 方案3：全面攻击（24小时APT级）🔥
```
遵循v11.0完整21步流程
从资产发现到GetShell到内网渗透
```

