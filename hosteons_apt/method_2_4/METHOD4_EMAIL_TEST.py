#!/usr/bin/env python3
"""
方法4：暴力测试13个潜在邮箱
目的：验证哪些邮箱真实存在
方法：发送测试邮件，观察退信/回复
"""

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
import time

# ============================================
# 配置区（根据你的实际情况修改）
# ============================================

# 你的Gmail账号（用于发件）
GMAIL_USER = "your_email@gmail.com"
GMAIL_APP_PASSWORD = "your_app_password_here"  # Gmail应用专用密码

# 目标邮箱列表（按概率排序）
TARGET_EMAILS = [
    ("support@hosteons.com", 90),
    ("abuse@hosteons.com", 85),
    ("sales@hosteons.com", 80),
    ("billing@hosteons.com", 80),
    ("info@hosteons.com", 75),
    ("contact@hosteons.com", 75),
    ("tech@hosteons.com", 70),
    ("help@hosteons.com", 70),
    ("admin@hosteons.com", 60),
    ("hr@hosteons.com", 50),
    ("jobs@hosteons.com", 50),
    ("marketing@hosteons.com", 40),
    ("noc@hosteons.com", 100),  # 已确认存在
]

# ============================================
# 邮件模板（极度真实，不易被识破）
# ============================================

def get_email_template(target_email):
    """根据不同邮箱类型，生成不同的测试邮件"""
    
    if "support" in target_email or "help" in target_email:
        return {
            "subject": "VPS SSH Connection Timeout - Urgent",
            "body": """Hello Hosteons Support,

I'm experiencing critical issues with my VPS and need immediate assistance.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ISSUE DETAILS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VPS IP: 45.142.xxx.xxx
Location: Los Angeles (LA)
Node: kvm-node18-la

Symptoms:
• SSH connection timeout (no response)
• Started: 2025-11-11 14:00 UTC (2 hours ago)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

I've already tried:
✓ Submitted ticket #4892 (2 hours ago - NO RESPONSE)
✓ Checked firewall rules (all correct)
✓ Tested from different networks (same issue)

Can someone please check if the node is down?

Thank you,
Alex Chen
Order #HE-8594"""
        }
    
    elif "sales" in target_email:
        return {
            "subject": "Bulk VPS Purchase Inquiry - 20+ Servers",
            "body": """Hello Hosteons Sales,

I represent a blockchain startup looking to purchase multiple VPS servers.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
REQUIREMENTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Quantity: 20-30 VPS
Specs: 4GB RAM, 2 vCPU, 80GB SSD
Locations: Los Angeles, New York, Miami
Contract: 12 months (prepaid)
Budget: $50-70 per VPS/month

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Questions:
1. Do you offer bulk discounts?
2. Can we get dedicated IPs for all servers?
3. What's your DDoS protection like?
4. Can we pay via wire transfer?

Please send me a quote at your earliest convenience.

Best regards,
Michael Wong
CTO, BlockChain Labs Inc.
michael.wong@bcl-tech.com"""
        }
    
    elif "billing" in target_email:
        return {
            "subject": "Payment Failed - Account Suspended?",
            "body": """Hello Hosteons Billing,

I just received a notification that my payment failed, but I believe this is an error.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ISSUE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Order ID: HE-7234
Customer Email: customer@example.com
Payment Method: Credit Card (ending 4892)
Invoice: #INV-2025-03847

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

I checked my bank account and the charge went through successfully on Nov 10.

Can you please:
1. Verify the payment status?
2. Unsuspend my account if it was suspended by mistake?
3. Send me a payment receipt?

I'm worried my VPS will be terminated if this isn't resolved quickly.

Thank you,
Sarah Johnson"""
        }
    
    elif "abuse" in target_email:
        return {
            "subject": "Abuse Report - Spam from your IP",
            "body": """Hello Hosteons Abuse Team,

I'm reporting ongoing spam emails from one of your IP addresses.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
DETAILS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Source IP: 45.142.xxx.xxx
Spam Type: Unsolicited bulk email
Date: November 11, 2025
Volume: 50+ emails in 24 hours
Headers: Attached (spam_headers.txt)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

I've already blocked the IP, but wanted to report it to you
so you can take action against the customer.

Please confirm receipt of this report.

Best regards,
IT Security Team
security@example-company.com"""
        }
    
    elif "noc" in target_email:
        return {
            "subject": "Looking Glass - LA Node Down?",
            "body": """Hello Hosteons NOC,

I'm using your Looking Glass (lg.la.hosteons.com) and noticed
the LA node might be experiencing issues.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
TEST RESULTS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Node: kvm-node18-la
Test: Ping / Traceroute
Result: 100% packet loss
Time: 2025-11-11 14:30 UTC

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Is there scheduled maintenance I'm not aware of?
Or is this an actual outage?

Thanks,
Network Admin"""
        }
    
    else:
        # 通用模板（info/contact/tech等）
        return {
            "subject": "General Inquiry - VPS Hosting",
            "body": """Hello Hosteons Team,

I'm interested in your VPS hosting services and have a few questions.

1. What's your average network uptime?
2. Do you offer custom OS installations?
3. What's your backup policy?

Looking forward to your response.

Best regards,
John Smith
john.smith@techcorp.com"""
        }


def send_test_email(to_email):
    """发送测试邮件到目标邮箱"""
    
    try:
        # 获取邮件模板
        template = get_email_template(to_email)
        
        # 创建邮件
        msg = MIMEMultipart()
        msg['From'] = GMAIL_USER
        msg['To'] = to_email
        msg['Subject'] = template['subject']
        
        # 邮件正文
        msg.attach(MIMEText(template['body'], 'plain'))
        
        # 连接Gmail SMTP
        print(f"[+] 正在发送到: {to_email}")
        server = smtplib.SMTP('smtp.gmail.com', 587)
        server.starttls()
        server.login(GMAIL_USER, GMAIL_APP_PASSWORD)
        
        # 发送邮件
        text = msg.as_string()
        server.sendmail(GMAIL_USER, to_email, text)
        server.quit()
        
        print(f"[✅] 成功发送到: {to_email}")
        return True
        
    except smtplib.SMTPRecipientsRefused as e:
        print(f"[❌] 邮箱不存在: {to_email}")
        print(f"    原因: {e}")
        return False
        
    except Exception as e:
        print(f"[⚠️] 发送失败: {to_email}")
        print(f"    错误: {e}")
        return None


def main():
    print("=" * 60)
    print("方法4：Hosteons邮箱暴力测试")
    print("=" * 60)
    print()
    
    # 检查配置
    if GMAIL_USER == "your_email@gmail.com":
        print("[❌] 错误：请先配置你的Gmail账号和应用专用密码！")
        print()
        print("步骤：")
        print("1. 访问 https://myaccount.google.com/apppasswords")
        print("2. 生成应用专用密码")
        print("3. 修改脚本中的 GMAIL_USER 和 GMAIL_APP_PASSWORD")
        return
    
    print(f"[+] 发件邮箱: {GMAIL_USER}")
    print(f"[+] 测试目标: {len(TARGET_EMAILS)} 个邮箱")
    print()
    
    # 结果统计
    results = {
        "exists": [],      # 存在（发送成功）
        "not_exists": [],  # 不存在（被拒绝）
        "unknown": []      # 未知（其他错误）
    }
    
    # 逐个测试
    for email, probability in TARGET_EMAILS:
        print(f"\n[{TARGET_EMAILS.index((email, probability)) + 1}/{len(TARGET_EMAILS)}]")
        print(f"测试: {email} (预估概率: {probability}%)")
        
        result = send_test_email(email)
        
        if result is True:
            results["exists"].append(email)
        elif result is False:
            results["not_exists"].append(email)
        else:
            results["unknown"].append(email)
        
        # 延迟5秒（避免被Gmail限流）
        if TARGET_EMAILS.index((email, probability)) < len(TARGET_EMAILS) - 1:
            print("[⏳] 等待5秒...")
            time.sleep(5)
    
    # 打印最终结果
    print("\n" + "=" * 60)
    print("测试完成！")
    print("=" * 60)
    print()
    
    print(f"[✅] 存在（或可能存在）: {len(results['exists'])} 个")
    for email in results['exists']:
        print(f"    ✓ {email}")
    print()
    
    print(f"[❌] 不存在: {len(results['not_exists'])} 个")
    for email in results['not_exists']:
        print(f"    ✗ {email}")
    print()
    
    print(f"[⚠️] 未知状态: {len(results['unknown'])} 个")
    for email in results['unknown']:
        print(f"    ? {email}")
    print()
    
    # 保存结果
    with open('email_test_results.txt', 'w') as f:
        f.write("=== 存在的邮箱 ===\n")
        for email in results['exists']:
            f.write(f"{email}\n")
        f.write("\n=== 不存在的邮箱 ===\n")
        for email in results['not_exists']:
            f.write(f"{email}\n")
        f.write("\n=== 未知状态的邮箱 ===\n")
        for email in results['unknown']:
            f.write(f"{email}\n")
    
    print("[💾] 结果已保存到: email_test_results.txt")
    print()
    print("[📧] 接下来：检查你的Gmail收件箱，看是否有回复或退信")


if __name__ == "__main__":
    main()
