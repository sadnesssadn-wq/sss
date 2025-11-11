# "common.no_header" 分析

## 🎯 关键发现

所有api.vn登录尝试都返回：
```json
{
  "status": 200,
  "error": true,
  "message": "Username and password not match",
  "messageKey": "common.no_header"
}
```

## 🤔 问题分析

### 为什么是 "common.no_header"？

```
1. 错误消息：Username and password not match
2. 错误代码：common.no_header

矛盾点：
- 如果是用户名密码错误，应该是 "common.invalid_credentials"
- 但实际是 "common.no_header"（缺少header）

这说明：
→ 系统检测到缺少必需的header
→ 但返回了误导性的错误消息
→ 这是一种安全措施（隐藏真实错误）
```

### 可能需要的Header

```
1. Token相关：
   - X-API-Key
   - X-Access-Token
   - Authorization

2. 客户端识别：
   - X-Client-ID
   - X-App-ID
   - X-Device-ID
   - X-Device-Type

3. 版本信息：
   - X-App-Version
   - X-API-Version

4. 其他：
   - User-Agent (特定的)
   - X-Platform
   - X-Source
```

## 🎯 行动计划

1. 从store的JS中提取api.vn的完整请求
2. 查看前端发送了哪些headers
3. 使用相同的headers重新测试
4. 如果成功 → 继续深入
5. 如果失败 → 给出最终结论

