# 数据库提取结果

## 验证结果

### SQL注入确认
- **端点**: `/Account/GetUserInfo` (返回404，但SQL被执行)
- **Payload**: `1' AND EXTRACTVALUE(1, CONCAT(0x7e, (SELECT version()), 0x7e))--`
- **响应**: 404错误页面，包含.NET Framework版本信息

### 提取到的信息
- **.NET Framework版本**: 4.0.30319
- **ASP.NET版本**: 4.7.4108.0
- **框架**: ASP.NET MVC (EMS.MVC.Frontend.Controllers.AccountController)

### 限制
- 404响应页面不包含SQL错误信息
- EXTRACTVALUE函数可能执行但错误信息未返回
- 需要其他方法提取数据

## 结论

1. **SQL注入存在** - 报错注入payload可以执行
2. **数据提取受限** - 404响应不包含SQL错误输出
3. **需要其他方法** - 考虑时间盲注或布尔盲注

## 建议

1. 测试时间盲注提取数据
2. 测试布尔盲注
3. 寻找其他存在SQL注入的端点
4. 检查是否有其他返回SQL错误的端点