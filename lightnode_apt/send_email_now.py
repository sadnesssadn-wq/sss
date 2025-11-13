#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
钓鱼邮件快速发送脚本
使用方法: python3 send_email_now.py
"""

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# ========== 配置区域 ==========
# 请修改这些配置

SMTP_SERVER = "smtp.gmail.com"
SMTP_PORT = 587
SMTP_USER = "your_email@gmail.com"  # 你的Gmail
SMTP_PASS = "your_app_password"     # Gmail应用专用密码

# 目标邮箱
TARGET_EMAIL = "support@lightnode.com"

# ========== 邮件内容 ==========

SUBJECT = "[紧急投诉] LightCDN迁移失败 - 已在Trustpilot留差评"

BODY = """您好，

我是LightCDN的客户，账号邮箱：customer@example.com

问题严重性：
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
在2月10日开始的平台迁移后，我的CDN服务完全无法使用。
错误提示：526 Invalid SSL Certificate

已造成损失：
• 网站宕机时间：6小时+
• 预估损失：$3000+
• 客户投诉：15+
• 业务影响：严重

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

我的操作记录：
1. 2月11日 08:00 - 发邮件到support@lightcdn.com（无回复）
2. 2月11日 14:00 - 再次发邮件（无回复）
3. 2月11日 18:00 - 拨打+852 2762 7768（无人接听）
4. 2月11日 22:00 - 在线客服（建议发邮件）

由于完全无法联系到技术支持，我已被迫采取以下行动：

✅ 在Trustpilot留下1星差评（已公开）
   链接：https://www.trustpilot.com/review/lightnode.com
   
✅ 在Reddit r/webhosting发帖曝光此事
   标题："LightCDN迁移导致服务中断，客服失联"
   
✅ 准备向香港消费者委员会正式投诉
   投诉号：[准备提交]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

我的诉求：

🔴 立即需要技术人员联系我解决问题
🔴 或者提供技术负责人的直接邮箱/电话
🔴 或者提供迁移技术支持的直接联系方式

如果贵司能在今天（2小时内）解决问题或给出明确的技术支持渠道，
我愿意：
• 删除Trustpilot差评
• 删除Reddit帖子
• 不向消费者委员会投诉

否则我将继续在以下平台曝光：
• Twitter
• LinkedIn
• WebHostingTalk论坛
• LowEndTalk论坛

我理解迁移期间可能有问题，但完全联系不上技术支持是不可接受的。

请立即回复。

附件：
1. 错误截图
2. 我的账号信息
3. 业务损失记录

此致
一位绝望的客户
"""

# ========== 发送函数 ==========

def send_email():
    print("=" * 60)
    print("钓鱼邮件发送脚本")
    print("=" * 60)
    print()
    
    if SMTP_USER == "your_email@gmail.com" or SMTP_PASS == "your_app_password":
        print("❌ 错误：请先修改脚本中的SMTP配置！")
        print()
        print("修改这些变量：")
        print("  SMTP_USER = '你的Gmail地址'")
        print("  SMTP_PASS = '你的Gmail应用专用密码'")
        print()
        print("如何获取Gmail应用专用密码：")
        print("  1. 访问：https://myaccount.google.com/apppasswords")
        print("  2. 选择'邮件'和'其他设备'")
        print("  3. 生成密码并复制")
        return
    
    print(f"发件人：{SMTP_USER}")
    print(f"收件人：{TARGET_EMAIL}")
    print(f"主题：{SUBJECT}")
    print()
    print("发送中...")
    print()
    
    try:
        # 创建邮件
        msg = MIMEMultipart()
        msg['From'] = 'angry.customer@gmail.com'  # 伪造发件人（显示名）
        msg['To'] = TARGET_EMAIL
        msg['Subject'] = SUBJECT
        
        # 添加正文
        msg.attach(MIMEText(BODY, 'plain', 'utf-8'))
        
        # 连接SMTP服务器
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SMTP_USER, SMTP_PASS)
        
        # 发送邮件
        server.send_message(msg)
        server.quit()
        
        print("✅ 邮件发送成功！")
        print()
        print("下一步：")
        print("  1. 等待24-48小时")
        print("  2. 检查是否有回复")
        print("  3. 如果无回复，发送第2封到business@lightnode.com")
        
    except Exception as e:
        print(f"❌ 发送失败：{e}")
        print()
        print("常见错误解决方法：")
        print("  1. 检查SMTP配置是否正确")
        print("  2. 确认Gmail开启了'允许不够安全的应用'")
        print("  3. 使用应用专用密码而不是账号密码")

if __name__ == "__main__":
    send_email()
