#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
LightNode 钓鱼邮件发送工具
基于APT真实案例的邮件投递系统
"""

import smtplib
import ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email import encoders
import random
import time
from datetime import datetime, timedelta

# 邮件模板
TEMPLATES = {
    "support_security": {
        "subject_en": "[URGENT] VPS Service Verification Required",
        "subject_cn": "[紧急] VPS服务验证通知",
        "body_en": """Dear LightNode Customer,

We have detected unusual activity on your account and need to verify your identity to ensure account security.

Due to recent security updates, we require you to verify your account information within 24 hours to avoid service interruption.

Please click the link below to verify your account:
{malicious_link}

If you did not request this verification, please contact our support team immediately.

Best regards,
LightNode Security Team
support@lightnode.com
+852 68969513

---
This is an automated message. Please do not reply to this email.""",
        "body_cn": """尊敬的LightNode客户，

我们检测到您的账户存在异常活动，需要您验证身份以确保账户安全。

由于最近的安全更新，我们需要您在24小时内验证您的账户信息，以避免服务中断。

请点击以下链接验证您的账户：
{malicious_link}

如果您未请求此验证，请立即联系我们的支持团队。

此致
LightNode安全团队
support@lightnode.com
+852 68969513

---
这是一封自动发送的邮件，请勿直接回复。"""
    },
    "business_partnership": {
        "subject_en": "[Business] Partnership Opportunity - Enterprise VPS Solution",
        "subject_cn": "[商务合作] 大型企业VPS采购需求",
        "body_en": """Dear LightNode Business Team,

I represent a multinational corporation looking to migrate our infrastructure to LightNode VPS services.

We are planning to deploy 500+ VPS instances across multiple regions (Asia, Europe, North America) and require a customized solution.

Our requirements:
- 500+ VPS instances
- Multi-region deployment
- Custom pricing structure
- Dedicated account manager

Please review our detailed proposal attached and let us know if you can accommodate our requirements.

We are looking to finalize this deal within the next 2 weeks.

Best regards,
{attacker_name}
{attacker_title}
{attacker_company}
{attacker_email}""",
        "body_cn": """尊敬的LightNode商务团队，

我代表一家跨国公司，希望将我们的基础设施迁移到LightNode VPS服务。

我们计划在多个地区（亚洲、欧洲、北美）部署500+个VPS实例，需要定制化解决方案。

我们的需求：
- 500+个VPS实例
- 多地区部署
- 定制化定价结构
- 专属客户经理

请查看附件中的详细提案，并告知我们是否可以满足我们的需求。

我们希望在接下来的2周内完成这笔交易。

此致
{attacker_name}
{attacker_title}
{attacker_company}
{attacker_email}"""
    },
    "security_alert": {
        "subject_en": "[SECURITY ALERT] Unauthorized Access Detected",
        "subject_cn": "[紧急] 检测到未授权访问 - 立即行动",
        "body_en": """Dear Valued Customer,

Our security system has detected multiple failed login attempts on your account from an unrecognized IP address.

IP Address: {fake_ip}
Location: Unknown
Time: {current_time}

To protect your account, we have temporarily restricted access. Please verify your identity immediately to restore full access.

VERIFY YOUR ACCOUNT NOW:
{malicious_link}

If you did not attempt to access your account from this location, please:
1. Click the verification link above
2. Change your password immediately
3. Enable two-factor authentication

This is an automated security alert. If you have any questions, contact our support team.

LightNode Security Team
support@lightnode.com""",
        "body_cn": """尊敬的客户，

我们的安全系统检测到来自未识别IP地址的多次登录失败尝试。

IP地址: {fake_ip}
位置: 未知
时间: {current_time}

为了保护您的账户，我们已暂时限制访问。请立即验证您的身份以恢复完全访问权限。

立即验证您的账户：
{malicious_link}

如果您未尝试从此位置访问您的账户，请：
1. 点击上面的验证链接
2. 立即更改您的密码
3. 启用双因素身份验证

这是自动安全警报。如有任何疑问，请联系我们的支持团队。

LightNode安全团队
support@lightnode.com"""
    }
}

class PhishingEmailSender:
    def __init__(self, smtp_server, smtp_port, sender_email, sender_password, use_tls=True):
        self.smtp_server = smtp_server
        self.smtp_port = smtp_port
        self.sender_email = sender_email
        self.sender_password = sender_password
        self.use_tls = use_tls
        
    def create_email(self, template_name, target_email, malicious_link, language="en", **kwargs):
        """创建钓鱼邮件"""
        template = TEMPLATES.get(template_name)
        if not template:
            raise ValueError(f"Template {template_name} not found")
        
        # 选择语言
        subject_key = f"subject_{language}"
        body_key = f"body_{language}"
        
        subject = template.get(subject_key, template["subject_en"])
        body = template.get(body_key, template["body_en"])
        
        # 填充变量
        current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        fake_ip = f"{random.randint(1,255)}.{random.randint(1,255)}.{random.randint(1,255)}.{random.randint(1,255)}"
        
        defaults = {
            "malicious_link": malicious_link,
            "current_time": current_time,
            "fake_ip": fake_ip,
            "attacker_name": kwargs.get("attacker_name", "John Smith"),
            "attacker_title": kwargs.get("attacker_title", "IT Director"),
            "attacker_company": kwargs.get("attacker_company", "Global Tech Solutions"),
            "attacker_email": kwargs.get("attacker_email", "john.smith@example.com")
        }
        
        subject = subject.format(**defaults)
        body = body.format(**defaults)
        
        return subject, body
    
    def send_email(self, target_email, subject, body, attachment_path=None, delay=0):
        """发送邮件"""
        try:
            # 创建邮件
            msg = MIMEMultipart()
            msg['From'] = self.sender_email
            msg['To'] = target_email
            msg['Subject'] = subject
            
            # 添加正文
            msg.attach(MIMEText(body, 'plain', 'utf-8'))
            
            # 添加附件（如果有）
            if attachment_path:
                with open(attachment_path, "rb") as attachment:
                    part = MIMEBase('application', 'octet-stream')
                    part.set_payload(attachment.read())
                    encoders.encode_base64(part)
                    part.add_header(
                        'Content-Disposition',
                        f'attachment; filename= {attachment_path.split("/")[-1]}'
                    )
                    msg.attach(part)
            
            # 发送邮件
            if self.use_tls:
                context = ssl.create_default_context()
                with smtplib.SMTP(self.smtp_server, self.smtp_port) as server:
                    server.starttls(context=context)
                    server.login(self.sender_email, self.sender_password)
                    server.send_message(msg)
            else:
                with smtplib.SMTP_SSL(self.smtp_server, self.smtp_port) as server:
                    server.login(self.sender_email, self.sender_password)
                    server.send_message(msg)
            
            print(f"[+] 邮件已发送: {target_email}")
            return True
            
        except Exception as e:
            print(f"[-] 发送失败 {target_email}: {str(e)}")
            return False
        
        finally:
            if delay > 0:
                time.sleep(delay)
    
    def batch_send(self, target_emails, template_name, malicious_link, language="en", delay=5, **kwargs):
        """批量发送邮件"""
        results = []
        for email in target_emails:
            subject, body = self.create_email(template_name, email, malicious_link, language, **kwargs)
            success = self.send_email(email, subject, body, delay=delay, **kwargs)
            results.append({"email": email, "success": success, "time": datetime.now().isoformat()})
        return results

def main():
    """示例使用"""
    print("=== LightNode 钓鱼邮件发送工具 ===\n")
    
    # 配置SMTP服务器（示例）
    # 实际使用时需要配置真实的SMTP服务器
    smtp_config = {
        "smtp_server": "smtp.gmail.com",  # 或使用其他SMTP服务器
        "smtp_port": 587,
        "sender_email": "your_email@gmail.com",
        "sender_password": "your_app_password",
        "use_tls": True
    }
    
    # 目标邮箱
    targets = [
        "support@lightnode.com",
        "business@lightnode.com"
    ]
    
    # 恶意链接（示例）
    malicious_link = "https://bit.ly/lightnode-verify"  # 实际使用时替换为真实恶意链接
    
    # 创建发送器
    sender = PhishingEmailSender(**smtp_config)
    
    # 发送邮件
    print("[+] 开始发送钓鱼邮件...\n")
    
    # 示例1: 发送安全警告邮件
    for target in targets:
        subject, body = sender.create_email(
            "security_alert",
            target,
            malicious_link,
            language="en"
        )
        print(f"[*] 准备发送到: {target}")
        print(f"    主题: {subject}\n")
        # sender.send_email(target, subject, body, delay=5)  # 取消注释以实际发送
    
    print("\n[+] 邮件发送完成")
    print("\n⚠️  注意: 这是演示代码，实际发送需要配置SMTP服务器")

if __name__ == "__main__":
    main()
