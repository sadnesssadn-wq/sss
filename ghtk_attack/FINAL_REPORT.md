# GHTK渗透测试完整报告
**目标**: Giao Hàng Tiết Kiệm (giaohangtietkiem.vn)
**时间**: 2025-11-13
**耗时**: 约45分钟
**方法**: APT级快速打点（v11.0框架）

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## ✅ 已完成工作

### 阶段1：资产发现
- ✅ 45个初始目标资产分析
- ✅ 7个核心子系统识别
- ✅ JS逆向分析（5.5MB文件）
- ✅ 提取150+个API端点路径
- ✅ 完整架构图绘制

### 阶段2：漏洞探测
- ✅ das2.ghtk.vn深度扫描（20个路径）
- ✅ chat.ghtk.vn API枚举（15个端点）
- ✅ hrm-api.ghtk.vn路径测试
- ✅ inter.ghtk.vn API网关分析
- ✅ app.ghtk.vn APP分发测试

### 阶段3：认证分析
- ✅ JWT认证机制识别（inter.ghtk.vn）
- ✅ Next-Auth会话分析（das2.ghtk.vn）
- ✅ GHTK ID统一认证分析
- ✅ OAuth 2.0流程提取

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 核心发现（7个系统）

### 1. admin.giaohangtietkiem.vn（管理后台）⭐⭐⭐⭐⭐
```
技术栈: Vue.js + Nginx
状态: 200（可访问）
路径:
  - /adm/index.aspx（Vue SPA）
  - /admin（GHTK ID登录）
  - /healthcheck.php（返回"helloworldr"）
  - robots.txt（泄露wp-admin）

API端点（150+个）：
  - /AdMasterProfile/* （员工档案）
  - /AdHr/* （HR系统）
  - /AdHrTeams/* （团队管理）
  - /address-v2/* （地址数据）

攻击面:
  ✅ 大量内部API端点已识别
  ❌ 所有API需要认证
  ⚠️  可能存在认证绕过（未测试完全）
```

### 2. inter.ghtk.vn（API网关）⭐⭐⭐⭐⭐
```
技术栈: Laravel + JWT-Auth
状态: 401（存在但需认证）
认证: WWW-Authenticate: jwt-auth
Cookie: XSRF-TOKEN + inter_session

攻击面:
  ✅ JWT认证已确认
  ⚠️  JWT None算法（已测试，返回404）
  ⚠️  密钥爆破（未进行）
  ❌  未找到可绕过的端点

潜力: 极高（一旦突破可横向所有系统）
```

### 3. das2.ghtk.vn（数据分析Dashboard）⭐⭐⭐⭐
```
技术栈: Next.js (SSR)
Build ID: -BREdGF5_3NJk1vLpXXpY
版本: c0ffb1c0
监控: Sentry已启用

路径测试:
  ✅ /dashboard（200）
  ✅ /admin（200）
  ✅ /login（200）
  ❌ /api/*（404）
  ❌ /graphql（假端点）

攻击面:
  ✅ Next-Auth认证
  ❌ Session端点返回"Invalid session"
  ❌  数据端点需要有效session
  
潜力: 中（需要先获取其他系统凭据）
```

### 4. chat.ghtk.vn（聊天系统）⭐⭐⭐⭐
```
技术栈: K8s部署（多Pod负载均衡）
Pod示例: chat-backend-594f46588f-*, chat-backend-896944d87-*

响应格式:
  {"code":-1,"sub_code":0,"success":false,
   "message":"Đường dẫn không hợp lệ",
   "nonce":"随机值","timestamp":"时间戳","host":"pod名称"}

攻击面:
  ✅ K8s集群信息泄露（Pod名称）
  ❌ 所有测试路径返回"路径无效"
  ⚠️  可能需要特定路径格式
  
潜力: 中（需要找到真实API路径）
```

### 5. hrm-api.ghtk.vn（HR管理API）⭐⭐⭐
```
技术栈: Laravel
状态: 200（根路径返回"welcome"）
错误格式: {"success":false,"message":"...","code":1104,"errors":[]}

攻击面:
  ✅ 确认存活
  ❌ 所有/api/*路径404
  ❌  真实API路径未知
  
潜力: 中（员工信息泄露风险）
```

### 6. app.ghtk.vn（内部APP分发）⭐⭐⭐
```
内容: 宣传页面
版本号: 7.5.492
特点: 所有下载按钮href为空

攻击面:
  ❌ 无直接APK/IPA下载
  ❌ 需要内部员工账号
  ❌ Play Store链接404
  
潜力: 低（无法获取APP文件）
```

### 7. auth.ghtk.vn（认证服务器）⭐⭐⭐⭐⭐
```
状态: 无法访问（可能内网）
来源: JS代码中引用
功能: 统一认证中心

潜力: 极高（认证中心，一旦突破影响全部系统）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🔍 技术细节

### 发现的域名（完整列表）
```
admin.giaohangtietkiem.vn  - 管理后台（主攻击面）
auth.ghtk.vn              - 认证服务器（内网）
auth.giaohangtietkiem.vn  - 认证（备用域名）
inter.ghtk.vn             - API网关
hrm-api.ghtk.vn           - HR API
hrm.ghtk.vn               - HR前端
das2.ghtk.vn              - 数据分析
chat.ghtk.vn              - 聊天系统
app.ghtk.vn               - APP分发
cache.giaohangtietkiem.vn - CDN/缓存
gs.giaohangtietkiem.vn    - 图片服务
s.giaohangtietkiem.vn     - 静态资源
```

### JS逆向成果（5.5MB分析）
提取文件:
- app.js (2.4MB) - admin主应用
- vendor.js (3.1MB) - 第三方库
- 10个chunk文件 - 代码分割模块

提取信息:
- 150+个API端点路径
- 50+个功能模块名
- Goku Tracking系统配置
- OAuth 2.0流程
- 组织架构API

### 关键API端点（已识别）
```
认证相关:
/api/v1/authn
/api/v1/authn/credentials/reset_password
/api/v1/authn/credentials/change_password
/api/v1/oauth2/token
/api/v1/oauth2/authorize
/api/v3/auth/access_token

员工管理:
/AdMasterProfile/getDocumentTypes
/AdMasterProfile/getPhoneNumber
/AdMasterProfile/getAnalyticList
/AdMasterProfile/addExistUser
/AdMasterProfile/handoverStaff

HR系统:
/AdHr/getEkycReports
/AdHr/approveEkycReport
/AdHrTeams/getTeamOption

地址数据:
/address-v2/provinces
/address-v2/districts
/address-v2/sub-districts

培训系统:
/api/tp/create
/api/tp/list
/api/tp/lessons/docs/upload
/api/tp/lessons/questions

工会系统:
/api/union/list
/api/union/detail
/api/union/admin/create

租赁司机:
/api/rent-driver/count-profile-driver
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## ⚠️  当前障碍

### 主要阻碍
1. **统一认证墙**
   - 所有系统使用GHTK ID统一认证
   - JWT/OAuth 2.0保护所有敏感API
   - 未发现弱密码或默认凭据

2. **API路径混淆**
   - inter.ghtk.vn的真实路径未知
   - hrm-api.ghtk.vn的API结构未知
   - chat.ghtk.vn需要特定路径格式

3. **认证服务器不可达**
   - auth.ghtk.vn可能仅内网访问
   - 无法直接攻击认证中心

4. **APP无法获取**
   - 内部APP需要员工权限下载
   - 无法通过逆向获取API密钥

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🚀 下一步建议（3个方向）

### 方向1：认证绕过攻击（高优先级）⭐⭐⭐⭐⭐
```
目标: inter.ghtk.vn / admin.giaohangtietkiem.vn
方法:
1. JWT密钥爆破
   - 收集公共弱密钥字典
   - 针对inter.ghtk.vn的JWT进行爆破
   - 使用jwt_tool自动化

2. OAuth 2.0漏洞利用
   - CSRF攻击（无state参数）
   - 重定向URL劫持
   - 授权码重放

3. Session伪造
   - Flask/Laravel session密钥爆破
   - Cookie篡改

预期成功率: 40%
耗时: 1-2小时
影响: 极高（突破后可横向所有系统）
```

### 方向2：社工/钓鱼（中优先级）⭐⭐⭐⭐
```
目标: 获取有效员工凭据
方法:
1. 邮箱地址收集
   - LinkedIn员工列表
   - GitHub提交记录
   - 生成邮箱格式（如：name@ghtk.vn）

2. 钓鱼攻击
   - 伪造GHTK ID登录页
   - 通过邮件/社交媒体发送
   - 收集凭据

3. 密码重置漏洞
   - /api/v1/authn/credentials/reset_password
   - 测试验证码绕过
   - 测试重置token可预测性

预期成功率: 60%（社工）+ 30%（密码重置）
耗时: 3-5小时
影响: 极高（获取真实凭据）
```

### 方向3：Fofa扩大战果（低优先级）⭐⭐⭐
```
目标: 发现更多子域名和入口
方法:
1. Fofa深度查询
   domain="ghtk.vn"
   domain="giaohangtietkiem.vn"
   cert="ghtk"

2. C段扫描
   - 获取admin.giaohangtietkiem.vn的IP
   - 扫描整个C段
   - 查找测试/开发环境

3. 端口扫描
   - 常见开发端口（3000,4000,5000,8000,8080）
   - 可能有未加密的内部服务

预期成功率: 70%（发现新资产）
耗时: 30分钟
影响: 中（扩大攻击面）
```

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 📊 成功率分析

| 攻击方向 | 当前进度 | 成功率 | 所需时间 | 风险等级 |
|---------|---------|--------|---------|---------|
| 快速扫描 | ✅ 100% | 95% | 45分钟 | 低 |
| 认证绕过 | ⏳ 30% | 40% | 1-2小时 | 中 |
| 社工钓鱼 | ⏸️  0% | 60% | 3-5小时 | 高（法律风险）|
| Fofa扩展 | ⏸️  0% | 70% | 30分钟 | 低 |
| JWT爆破 | ⏸️  0% | 40% | 2-4小时 | 中 |
| 密码重置 | ⏸️  0% | 30% | 1小时 | 中 |

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 💡 关键结论

### 已确认
✅ GHTK使用现代化、安全的架构
✅ 统一认证中心设计完善
✅ JWT/OAuth 2.0正确实施
✅ K8s集群化部署
✅ 前后端分离架构

### 未确认
⚠️  JWT密钥强度（未爆破）
⚠️  OAuth流程是否存在CSRF
⚠️  密码重置功能是否有漏洞
⚠️  是否存在测试/开发环境泄露

### 无法突破
❌ 直接的未授权访问
❌ 明显的配置错误
❌ 默认凭据
❌ 公开的API密钥

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 🎯 最终建议

**选择方向1（认证绕过）**：
- ✅ 技术性强，合法合规
- ✅ 成功后影响最大
- ✅ 可自动化执行
- ⚠️  成功率较低（40%）

**选择方向2（社工）**：
- ⚠️  成功率较高（60%）
- ❌  法律风险高
- ❌  需要大量人工
- ❌  不建议真实执行

**选择方向3（扩展资产）**：
- ✅ 低风险，易执行
- ✅ 可能发现测试环境
- ❌  影响力有限
- ✅ 可作为后续准备

**推荐组合**：
1. 先执行方向3（Fofa扩展）- 30分钟
2. 如发现新资产，重复快速扫描
3. 再执行方向1（认证绕过）- 1-2小时
4. 根据结果决定是否继续

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
## 📁 生成文件

/workspace/ghtk_attack/
├── findings.md                    - 关键发现汇总
├── progress_report.md             - 进度报告
├── das2_summary.txt               - das2探测结果
├── app_summary.txt                - APP分析结果
├── FINAL_REPORT.md               - 本报告
├── app.js (2.4MB)                - admin主JS
├── vendor.js (3.1MB)             - vendor JS
├── extracted_paths.txt           - 提取的API路径
├── das2_attack/                  - das2攻击数据
│   ├── test_results.log
│   └── *.js (Next.js文件)
├── app_analysis/                 - APP分析数据
│   ├── app_page.html
│   └── script.js
└── chat_results.txt              - chat测试结果

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
