#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
LightNode钓鱼邮件发送脚本
使用方法: python3 send_phishing.py
"""

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

# ========== 配置区域 ==========

SMTP_SERVER = "smtp.gmail.com"
SMTP_PORT = 587
SMTP_USER = "your_email@gmail.com"  # 你的Gmail
SMTP_PASS = "your_app_password"     # Gmail应用专用密码

# 钓鱼页面URL（改成你的域名）
PHISHING_URL = "https://console-lightnode.com/security/verify?token=A8f3Kx9mP2wQ7nR5"

# 目标邮箱列表
TARGETS = [
    "support@lightnode.com",
    "business@lightnode.com",
    "admin@lightnode.com",
]

# ========== 邮件话术 ==========

SCENARIOS = {
    "1": {
        "name": "异常登录安全验证",
        "subject": "[LightNode安全警报] 检测到异常登录行为 - 需要立即验证",
        "body": """LightNode用户您好，

我们的安全系统检测到您的账户存在异常登录行为。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
异常登录详情
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

登录时间：2025-11-11 03:24:18 UTC
登录IP：185.220.101.47（俄罗斯-莫斯科）
设备：Windows 10 / Chrome 119
尝试操作：创建VPS实例（被阻止）

风险等级：⚠️ 高危

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

为保护您的账户安全，我们已临时限制以下操作：
• 创建/删除VPS实例
• 修改API密钥
• 变更支付方式
• 提现余额

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

如果这是您本人的操作，请立即验证身份以解除限制：

{PHISHING_URL}

⏰ 如果24小时内未验证，您的账户将被自动冻结。

如果这不是您的操作，请立即：
1. 点击上述链接验证身份
2. 修改密码
3. 启用两步验证

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

这不是您？
如果您没有尝试登录，说明您的账户可能已被盗用。
请立即验证身份并修改密码。

LightNode安全团队
security@lightnode.com

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
本邮件由LightNode安全系统自动发送
""",
        "from_name": "LightNode Security",
        "from_email": "security@lightnode.com"
    },
    
    "2": {
        "name": "API密钥泄露警告",
        "subject": "[紧急] 您的LightNode API密钥在GitHub公开仓库中泄露",
        "body": """LightNode用户您好，

我们的安全扫描系统发现，您的API密钥出现在GitHub公开仓库中。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
泄露详情
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

泄露时间：2025-11-10 22:14:33 UTC
泄露位置：GitHub
仓库地址：https://github.com/xxxxx/config
文件路径：config/prod.env
泄露内容：API Key（前缀：ln_live_8f2k...）

风险等级：🔴 极高危

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

潜在风险：
⚠️ 他人可使用您的API密钥创建VPS实例
⚠️ 可能产生高额费用（已有3次可疑API调用）
⚠️ 您的VPS实例可能被非法访问或删除

检测到的可疑活动：
• 3次API调用（来自未知IP：45.142.212.61）
• 尝试创建实例：2次（已阻止）
• 查询账户余额：1次

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔴 请立即采取行动：

{PHISHING_URL}

重置后您需要：
1. 登录控制台验证身份
2. 查看可疑API调用记录
3. 生成新的API密钥
4. 从GitHub删除泄露的密钥

⏰ 如果12小时内未处理，为防止损失，我们将：
• 自动冻结您的API密钥
• 限制所有API调用
• 冻结账户余额支出

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

安全建议：
✓ 使用环境变量存储API密钥
✓ 不要将密钥提交到Git仓库
✓ 定期轮换API密钥
✓ 启用IP白名单限制

LightNode安全团队
security@lightnode.com

本邮件由自动安全扫描系统发送
""",
        "from_name": "LightNode Security",
        "from_email": "security@lightnode.com"
    },
    
    "3": {
        "name": "VPS续费失败警告",
        "subject": "[重要] VPS自动续费失败 - 48小时后将删除实例",
        "body": """LightNode用户您好，

您的VPS实例自动续费失败，实例将在48小时后被删除。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
VPS实例信息
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

实例ID：ln-hk-vps-8f2k9x3p
IP地址：43.154.89.127
位置：香港
套餐：企业版 4C8G
到期时间：2025-11-13 08:00:00 UTC

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

续费失败原因：
❌ 信用卡扣款失败（卡号：**** **** **** 4352）
错误代码：PAYMENT_DECLINED

如果48小时内未完成续费：
⚠️ 实例将被自动删除
⚠️ 所有数据将永久丢失
⚠️ IP地址将被释放

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🔴 立即续费以避免数据丢失：

{PHISHING_URL}

续费金额：$29.99/月

您也可以：
• 更新支付方式
• 查看账单详情
• 联系客服处理

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

倒计时：⏰ 47小时32分钟

请尽快处理，避免业务中断。

LightNode计费系统
billing@lightnode.com
""",
        "from_name": "LightNode Billing",
        "from_email": "billing@lightnode.com"
    }
}

def send_email(target, scenario_id):
    """发送钓鱼邮件"""
    
    if SMTP_USER == "your_email@gmail.com":
        print("❌ 错误：请先配置SMTP设置！")
        return False
    
    scenario = SCENARIOS.get(scenario_id)
    if not scenario:
        print(f"❌ 错误：场景 {scenario_id} 不存在")
        return False
    
    print(f"\n📧 发送钓鱼邮件...")
    print(f"   场景：{scenario['name']}")
    print(f"   目标：{target}")
    print(f"   主题：{scenario['subject']}")
    
    try:
        # 创建邮件
        msg = MIMEMultipart()
        msg['From'] = f"{scenario['from_name']} <{scenario['from_email']}>"
        msg['To'] = target
        msg['Subject'] = scenario['subject']
        
        # 替换钓鱼链接
        body = scenario['body'].replace('{PHISHING_URL}', PHISHING_URL)
        
        # 添加正文
        msg.attach(MIMEText(body, 'plain', 'utf-8'))
        
        # 连接SMTP服务器
        server = smtplib.SMTP(SMTP_SERVER, SMTP_PORT)
        server.starttls()
        server.login(SMTP_USER, SMTP_PASS)
        
        # 发送邮件
        server.send_message(msg)
        server.quit()
        
        print(f"   ✅ 发送成功！")
        return True
        
    except Exception as e:
        print(f"   ❌ 发送失败：{e}")
        return False

def main():
    print("=" * 60)
    print("LightNode钓鱼邮件发送脚本")
    print("=" * 60)
    
    print("\n可用场景：")
    for sid, scenario in SCENARIOS.items():
        print(f"  [{sid}] {scenario['name']}")
    
    print("\n目标邮箱：")
    for i, target in enumerate(TARGETS, 1):
        print(f"  [{i}] {target}")
    
    print("\n" + "=" * 60)
    
    # 选择场景
    scenario_id = input("\n选择场景 (1/2/3): ").strip()
    if scenario_id not in SCENARIOS:
        print("❌ 无效的场景")
        return
    
    # 选择目标
    choice = input("\n选择目标 (1-全部, 2-单个): ").strip()
    
    if choice == "1":
        # 发送给所有目标
        print("\n开始批量发送...")
        success = 0
        for target in TARGETS:
            if send_email(target, scenario_id):
                success += 1
            import time
            time.sleep(2)  # 间隔2秒
        
        print(f"\n完成！成功 {success}/{len(TARGETS)}")
    
    elif choice == "2":
        # 发送给单个目标
        target_idx = int(input(f"选择目标 (1-{len(TARGETS)}): ")) - 1
        if 0 <= target_idx < len(TARGETS):
            send_email(TARGETS[target_idx], scenario_id)
        else:
            print("❌ 无效的目标")
    
    else:
        print("❌ 无效的选择")

if __name__ == "__main__":
    main()
