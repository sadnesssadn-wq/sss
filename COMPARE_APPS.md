# EMS应用对比分析

## 📱 两个EMS应用

### App 1: EMS Portal (之前分析的)
```
包名: com.emsportal
文件: ems_portal.apk (4.7MB)
开发者: Vietnam Post
版本: 2.3.0

主要功能:
  • 寄件下单
  • 订单追踪
  • 用户注册/登录

已发现漏洞:
  ✓ 潜在IDOR (70%概率)
  ✓ WebView XSS/RCE
  ✓ 用户枚举
  ✓ SQL注入 (本地)
  ✓ 硬编码API密钥
  ✓ SMS轰炸
  ✓ 无SSL Pinning

API: http://ws.ems.com.vn
```

### App 2: EMSOne (新下载的)
```
包名: com.ems.emsone
文件: ems_emsone.apk
开发者: Vietnam Post (可能)

状态: 正在分析...
```

---

## 🔍 EMSOne 快速分析

检查中...

---

## 💡 建议

### 如果是同一后端
```
• API端点相同 → 漏洞通用
• 可能共享Token → 可互相利用
• 用户数据库可能相同
```

### 如果是不同后端
```
• 需要独立分析
• 可能有不同的漏洞
• 攻击方法需要调整
```

---

## 🎯 下一步

正在分析 EMSOne 的:
1. API端点
2. 认证机制
3. 漏洞点
4. 与 EMS Portal 的关系

分析完成后会提供利用方案...
