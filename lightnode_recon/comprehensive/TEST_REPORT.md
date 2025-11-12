# LightNode API端点测试报告

生成时间: $(date)

## 🔐 认证绕过测试结果

### 测试方法
1. 无认证访问
2. JWT None算法
3. 空Token
4. 弱API Key

### 结果
查看: `test_results/api_auth_bypass.txt`

## 🔍 敏感端点测试

### 测试路径
- /api/admin
- /api/users
- /api/config
- /api/secrets
- /api/keys
- /api/tokens
- /api/auth
- /admin
- /internal
- /debug

### 结果
查看: `test_results/sensitive_endpoints.txt`

## ⚠️ 错误信息泄露测试

### 测试方法
- 路径遍历测试
- SQL注入测试
- 特殊字符测试

### 结果
查看: `test_results/error_info_leak.txt`

## 📊 GraphQL测试

### 测试方法
1. GET查询参数
2. POST JSON
3. POST GraphQL格式

### 结果文件
- graphql_get.json
- graphql_post.json
- graphql_post_graphql.json

## 📈 测试汇总

查看: `test_results/SUMMARY.txt`
