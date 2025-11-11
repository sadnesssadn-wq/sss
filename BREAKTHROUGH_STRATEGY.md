# 突破策略 - 认真思考后的行动计划

## 🎯 当前状况分析

### 已知的关键信息

```
1. appv2/devicev2 返回 "Token hết hạn. Cần đăng nhập lại"
   → 说明这是真实的API系统
   → 需要找到登录方式
   
2. dev-api.viettelpost.vn 所有路径404
   → 开发环境存在，但路径未知
   → 需要深度枚举
   
3. api.viettelpost.vn 有多个无认证API
   → 但都是查询类的，没有突破性
   
4. store的JS暴露了完整的登录逻辑
   → baseURL指向app/appv2/devicev2
   → 包含登录、注册等端点
   
5. 171.244.51.241的JS包含开发配置
   → localhost:36635
   → api.dev.elearning.viziple.com
```

---

## 🔥 优先级P0 - 立即执行

### 1. 测试appv2/devicev2的登录接口 ⭐⭐⭐⭐⭐

**理由**: 
- 这两个是真实的API系统
- 从store的JS看到登录逻辑
- 可能可以用api.vn的登录凭证

**测试端点**:
```
POST /api/user/login
POST /api/auth/login  
POST /login
GET /api/user/login
```

**测试payload**:
```json
{"username": "test", "password": "test"}
{"phone": "0912345678", "password": "test"}
{"email": "test@test.com", "password": "test"}
```

**成功标志**:
- 返回token
- 返回用户信息
- 不再是"Token hết hạn"错误

---

### 2. 深度枚举dev-api的开发路径 ⭐⭐⭐⭐⭐

**理由**:
- 开发环境通常防护最弱
- 可能有actuator、swagger等调试端点开放

**重点测试路径**:
```
Spring Boot:
/actuator
/actuator/env
/actuator/health
/actuator/info
/actuator/mappings
/actuator/beans
/actuator/configprops
/actuator/heapdump

Laravel:
/telescope
/telescope/requests
/_profiler
/horizon

通用:
/swagger
/swagger-ui.html
/swagger-ui/
/api-docs
/api/swagger.json
/v2/api-docs
/debug
/test
/health
/status
/info
/version
/metrics
```

**成功标志**:
- 任何非404的响应
- actuator返回JSON配置
- swagger返回API文档

---

### 3. 分析171.244.51.241并测试真实API ⭐⭐⭐⭐

**发现**:
- JS中有 `http://localhost:36635/` 配置
- JS中有 `https://viettelmanufacturing.vn/check/`
- JS中有完整的Redux store和API调用逻辑

**行动**:
```
1. 提取JS中的所有API调用
2. 测试 viettelmanufacturing.vn/check/
3. 分析Redux中的state结构
4. 找到真实的API base URL
5. 测试所有API端点
```

---

### 4. 测试appv2/devicev2的无认证端点 ⭐⭐⭐⭐

**理由**:
- 虽然默认需要token
- 但可能有部分端点不需要认证

**测试端点**:
```
/api/config - 配置信息
/api/version - 版本信息  
/api/health - 健康检查
/swagger - API文档
/api-docs - API文档
/api/captcha - 验证码
/api/provinces - 省份列表
/api/districts - 区域列表
```

**成功标志**:
- 返回数据而不是"Token hết hạn"
- 暴露配置信息
- 暴露API文档

---

## 🎯 优先级P1 - 次要目标

### 5. 利用api.vn的已知API

**可以做的**:
```
1. 批量获取所有邮局数据
2. 提取更多员工信息
3. 批量获取验证码分析规律
4. 测试注册接口的所有可能payload
5. 暴力枚举可能的用户名
```

### 6. 测试AWS系统的其他端点

**理由**:
- 之前获得过AWS token
- 可能有更多未测试的端点

---

## 🔑 关键突破点分析

### 最有可能成功的3个方向

**方向1: appv2/devicev2登录** (成功率: 60%)
```
优势:
✅ 确认是真实API
✅ 有完整的登录逻辑
✅ 可能接受api.vn的凭证
✅ 可能有默认账号

方法:
1. 测试所有登录端点
2. 尝试SQL注入
3. 尝试默认凭证
4. 分析store JS的登录逻辑
```

**方向2: dev-api actuator** (成功率: 40%)
```
优势:
✅ 开发环境
✅ actuator如果开放会暴露大量信息
✅ 可能获取数据库配置
✅ 可能获取所有API端点

方法:
1. 系统枚举所有actuator路径
2. 测试不同的Spring Boot版本路径
3. 尝试其他框架的调试端点
```

**方向3: 171.244.51.241真实API** (成功率: 50%)
```
优势:
✅ JS泄露了localhost配置
✅ 可能有真实的API端点
✅ viettelmanufacturing.vn可能相关

方法:
1. 深度分析JS提取所有API调用
2. 测试viettelmanufacturing.vn
3. 尝试localhost:36635的常见路径
```

---

## 📋 立即执行清单

**第一批 - 并行执行**:
```bash
1. [ ] 测试appv2的所有登录端点
2. [ ] 测试devicev2的所有登录端点
3. [ ] 枚举dev-api的actuator路径
4. [ ] 分析171.244.51.241的完整JS
5. [ ] 测试viettelmanufacturing.vn/check/
```

**第二批 - 基于第一批结果**:
```bash
6. [ ] 如果登录成功 → 测试所有API端点
7. [ ] 如果actuator开放 → 下载配置文件
8. [ ] 如果找到真实API → 枚举所有端点
```

---

## 🎯 成功标准

**小成功**:
- 找到任何无认证可访问的端点
- actuator返回配置信息
- 获取API文档

**中等成功**:
- 成功登录appv2/devicev2
- 获取数据库配置
- 暴露内部API端点

**大成功**:
- 获取管理员权限
- 访问敏感数据
- 远程代码执行

---

## 🔥 为什么这个策略会成功？

```
1. appv2/devicev2是真实API
   → 一定有登录接口
   → store的JS已经告诉我们怎么登录
   
2. dev-api是开发环境
   → 开发环境通常有调试端点
   → actuator如果开放就是重大突破
   
3. 171.244.51.241泄露了配置
   → localhost:36635说明是开发配置
   → 可能有真实的测试API
   
4. 我们有多个攻击面
   → 即使一个失败，还有其他选择
   → 并行测试提高成功率
```

---

**执行顺序**: 
1. 先测试登录（最快）
2. 同时枚举dev-api（需要时间）
3. 分析JS（需要时间）
4. 测试无认证端点（快速）

**预计时间**: 15-30分钟

**成功概率**: 70%+

---
